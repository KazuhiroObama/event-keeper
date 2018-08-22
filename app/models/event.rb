class Event < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :event_participants
  has_many :user, through: :event_participants
  has_many :contacts
  belongs_to :community

  def self.first_days_events_pluck
    first_events = []
    Event.pluck(:event_day).uniq.each do |event_day|
      first_event = Event.order(:opening_time).find_by(event_day: event_day)
      first_events << first_event
    end
    first_events
  end


  # def self.first_days_events_pluck
  #   first_events = []
  #   Event.pluck(:event_day).uniq.each do |event_day|
  #     first_event = Event.order(:open_time).find_by(event_day: event_day)
  #     first_events << first_event
  #   end
  #   first_events
  # end
end
