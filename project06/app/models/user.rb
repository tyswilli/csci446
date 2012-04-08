class User < ActiveRecord::Base
  attr_accessible :username, :email, :password
  acts_as_authentic do |config|
     config.merge_validates_length_of_password_field_options :minimum => 6
  end
end
