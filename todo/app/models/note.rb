class Note < ApplicationRecord
  #enum status:[:started, :inprogress, :completed]
  validates :name, presence: true
  validates :description, presence: true
end
