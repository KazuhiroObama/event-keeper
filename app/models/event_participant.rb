class EventParticipant < ApplicationRecord
  belongs_to :user, foreign_key: :participant_id
  belongs_to :event
end
