class User < ActiveRecord::Base
  attr_accessible :username, :email, :password, :password_confirmation
  has_many :games
  has_many :roles
  #users.roles.create(:title => "admin")
  #users.roles.create(:title => "user")
  acts_as_authentic do |config|
     config.merge_validates_length_of_password_field_options :minimum => 6
  end
  def role_symbols
  roles.map do |role|
    role.name.underscore.to_sym
  end
end
end
