class User < ApplicationRecord
  # Include default devise modules. Others available are:
  #  :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable

  has_many :community_users
  has_many :communities, through: :community_users
  has_many :event_participants, foreign_key: 'participant_id'
  has_many :event, through: :event_participants
  has_many :contacts
end
