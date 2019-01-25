class Agenda < ApplicationRecord
  belongs_to :user

  validates :user, presence: true
  validates :timezone, presence: true
end
