class Task < ActiveRecord::Base
  belongs_to :user

  validates :description, length: { minimum: 5 }, presence: true
  validates :completed, presence: true
  validates :expires_at, presence: true
  validates :user, presence: true
end
