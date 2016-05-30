class Mentor < ActiveRecord::Base
  belongs_to :user
  validates_uniqueness_of :user_id, :message => ", Is already a mentor"
end
