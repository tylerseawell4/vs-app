class Forum < ActiveRecord::Base
      validates :title, presence: true
      validates :entry, presence: true
     has_many :comments
    belongs_to :user
end
