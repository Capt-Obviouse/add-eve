class Admin < ActiveRecord::Base
  belongs_to :user
  validates_uniqueness_of :user_id, :message => ", This member is already listed"
end
