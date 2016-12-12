class TaskComment < ActiveRecord::Base
  belongs_to :task # Foreign key
  belongs_to :user

  validates :task, presence: true
  validates :user, presence: true
  validates :comment, length: { minimum: 1, maximum: 4095, allow_blank: false }
end
