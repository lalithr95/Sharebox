class Folder < ActiveRecord::Base
	belongs_to :user
	acts_as_tree
end
