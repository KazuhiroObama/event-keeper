class Event < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :event_participants
  has_many :user, through: :event_participants
  has_many :contacts
end
