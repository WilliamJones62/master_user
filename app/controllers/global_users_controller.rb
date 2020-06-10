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

  # GET /global_users/refresh
  def refresh
    employees = Employee.all
    employees.each do |e|
      if e.Employee_Status == 'Active'
        # See if a User exists for this active employee. If not then create one if the ssn4 is present.
        u = User.find_by email: e.Badge_
        if u.blank? && !e.ssn4.blank?
          u = User.new
          u.email = e.Badge_
          u.password = e.ssn4
          u.take_in = true
          u.save
          logger.info 'user '+e.Badge_+' created'
        end
      elsif e.Employee_Status == 'Terminated'
        # See if a User exists for this terminated employee. If it does then delete it.
        u = User.find_by email: e.Badge_
        if !u.blank?
          u.delete
          logger.info 'user '+e.Badge_+' deleted'
        end
      end
    end
    redirect_to global_users_url, notice: 'Global users were successfully refreshed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_global_user
      @global_user = GlobalUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def global_user_params
      params.require(:global_user).permit(:manager, :manager_id, :user_dept, :dept_manager, :dispatch, :holiday_bird_caps, :master_user, :order_input, :pricing,
        :prospects, :rapid_order, :refusals, :short_term_trucks, :take_in, :temp_hire, :truck_monitoring, :hardware, :campaign_rep1, :campaign_rep2, :campaigns,
        :campaigns_admin, :cod, :cod_role, :campaign_role, :campaign_manager, :focus_items, :focus_items_rep1, :focus_items_rep2, :focus_items_role,
        :focus_items_manager, :retail_order_input, :retail_rapid_order, :retail_order_input_rep1, :retail_order_input_rep2, :retail_rapid_order_role,
        :complaints, :complaints_role, :complaints_dc)
    end
end
