class GlobalUsersController < ApplicationController
  before_action :set_global_user, only: [:edit, :update, :destroy]

  # GET /global_users
  def index
    if user_signed_in? && current_user.master_user
      @global_users = GlobalUser.all
    else
      redirect_to signout_path and return
    end
  end

  # GET /global_users/1/edit
  def edit
  end

  # PATCH/PUT /global_users/1
  def update
    respond_to do |format|
      if @global_user.update(global_user_params)
        format.html { redirect_to global_users_url, notice: 'Global user was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /global_users/1
  def destroy
    @global_user.destroy
    respond_to do |format|
      format.html { redirect_to global_users_url, notice: 'Global user was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_global_user
      @global_user = GlobalUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def global_user_params
      params.require(:global_user).permit(:manager, :manager_id, :user_dept, :dept_manager, :dispatch, :holiday_bird_caps, :master_user, :order_input, :pricing, :prospects, :rapid_order, :refusals, :short_term_trucks, :take_in, :temp_hire, :truck_monitoring)
    end
end
