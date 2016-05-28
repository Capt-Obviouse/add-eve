class ViewSetting < ActiveRecord::Base
  belongs_to :user
  validates_uniqueness_of :user_id, :message => ",You already have setup a view"
end
