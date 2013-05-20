class Question < ActiveRecord::Base
  attr_accessible :answer, :last_edited_by, :title
end
