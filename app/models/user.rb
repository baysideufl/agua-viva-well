class User < ActiveRecord::Base
	has_many :projects, through :authorizations
end
