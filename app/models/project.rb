class Project < ActiveRecord::Base
	has_many :users, through :authorizations
end
