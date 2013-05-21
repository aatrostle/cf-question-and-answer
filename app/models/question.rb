class Question < ActiveRecord::Base
  attr_accessible :answer, :last_edited_by, :title
  has_and_belongs_to_many :users
end
