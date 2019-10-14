class UserLoad < ApplicationRecord
  establish_connection "development".to_sym
  def self.import(file)
    UserLoad.delete_all
    CSV.foreach(file.path, headers: true) do |row|
      UserLoad.create! row.to_hash
    end
  end

  def self.load_users
    User.delete_all
    all.each do |p|
      if !p.badge.blank? && !p.ssn4.blank?
        # good user data create a user
        u = User.new
        u.email = p.badge
        u.password = p.ssn4
        u.save
      end
    end
  end

end
