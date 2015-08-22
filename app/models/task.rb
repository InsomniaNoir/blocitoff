class Task < ActiveRecord::Base
  belongs_to :user

  validates :description, length: { minimum: 5 }, presence: true
  validates :user, presence: true
end
