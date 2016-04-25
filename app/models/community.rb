class Community < ActiveRecord::Base
    validates :description, presence: true, length: {maximum: 100, 
too_long: "This post can only be 100 max!"}
    validates :activity, presence: true
    validates :gamertag, presence: true
    belongs_to :game
    belongs_to :user
end
