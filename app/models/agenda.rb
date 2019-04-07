class Agenda < ApplicationRecord
  belongs_to :user

  validates :user_id, presence: true
  validates :timezone, presence: true
end
