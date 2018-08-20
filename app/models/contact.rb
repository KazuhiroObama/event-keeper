class Contact < ApplicationRecord
  belongs_to :community
  belongs_to :user
  belongs_to :event
end
