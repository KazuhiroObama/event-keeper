class Community < ApplicationRecord
  has_many :community_organizers
  has_many :organizers, through: :community_organizers, source: :organizer
  has_many :community_members
  has_many :members, through: :community_members, source: :member
  has_many :contacts
end
