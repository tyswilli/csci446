class User < ActiveRecord::Base
  attr_accessible :username, :email, :password, :password_confirmation
  has_many :games
  has_many :roles
  def role_select=(incoming_id_from_form)
    role = Roles.find(incoming_id_from_form)
    self.role = role
  end
  acts_as_authentic do |config|
     config.merge_validates_length_of_password_field_options :minimum => 6
  end
  def role_symbols
  roles.map do |role|
    role.name.underscore.to_sym
  end
end
end
