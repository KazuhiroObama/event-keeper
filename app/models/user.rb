class User < ApplicationRecord
  # Include default devise modules. Others available are:
  #  :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable

  has_many :community_organizers, foreign_key: 'organizer_id'
  has_many :organizer_communities, through: :community_organizers, source: :community
  has_many :community_memebers, foreign_key: 'member_id'
  has_many :member_communities, through: :community_memebers, source: :community
  has_many :event_participants, foreign_key: 'participant_id'
  has_many :event, through: :event_participants
  has_many :contacts
end
