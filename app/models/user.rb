class User < ActiveRecord::Base
	acts_as_authentic
	attr_accessible :admin_level, :name, :password_confirmation, :login, :password
end
