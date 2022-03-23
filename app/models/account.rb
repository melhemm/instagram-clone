class Account < ApplicationRecord
  include ImageUploader::Attachment(:image)

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts
  has_many :likes
  has_many :comments

  default_scope { order(created_at: :desc) }

  def full_name
    "#{first_name} #{last_name}"
  end

  def total_followers
    Follower.where(follower_id: self.id).count
  end

  def total_following
    Follower.where(following_id: self.id).count
  end
end
