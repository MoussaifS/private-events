class Event < ApplicationRecord
    belongs_to :user, class_name: "User", foreign_key: "user_id"
    validates :title, presence: { message: "Please enter a title" }    
end
