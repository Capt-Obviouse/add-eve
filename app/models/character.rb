class Character < ActiveRecord::Base
  belongs_to :user
   validates_uniqueness_of :character
end
