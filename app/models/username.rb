class Username < ActiveRecord::Base
  belongs_to :user
  validates_uniqueness_of :user_id, :username => ", This name is already an active member"
end
