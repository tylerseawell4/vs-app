class Community < ActiveRecord::Base
    has_many :games
    belongs_to :user
end
