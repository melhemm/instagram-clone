class Post < ApplicationRecord
  include ImageUploader::Attachment(:image)
  before_create :set_active

  belongs_to :account

  has_many :likes
  has_many :comments

  scope :active, -> { where active: true}

  # def total_likes
  #   0
  # end

  private

  def set_active
    self.active = true
  end
end
