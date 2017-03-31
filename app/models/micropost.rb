require 'carrierwave/orm/activerecord'

class Micropost < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }

  mount_uploader :picture, ::PictureUploader

  scope :recent_users, -> { includes(:user).select(:user_id).group(:user_id) }

  validate :picture_size

  private

  def picture_size
    return unless picture.size > 5.megabytes
    errors.add(:picture, 'should be less than 5MB')
  end
end
