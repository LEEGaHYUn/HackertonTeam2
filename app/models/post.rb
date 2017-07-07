class Post < ActiveRecord::Base
    
    mount_uploader :image_url, ImageUploader
    
    belongs_to :category
    belongs_to :user
    
    has_many :likes
    has_many :comments
    has_many :liked_users, through: :likes, source: :user
end
