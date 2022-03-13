class Account < ApplicationRecord
  include ImageUploader::Attachment(:image)

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts
  has_many :likes

  default_scope { order(created_at: :desc) }

  def full_name
    "#{first_name} #{last_name}"
  end

  def total_followers
    0
  end

  def total_following
    0
  end
end
