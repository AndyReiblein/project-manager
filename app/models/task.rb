class Task < ApplicationRecord
  belongs_to :project

  validates :status, inclusion: { in: ['not-started', 'in-progress', 'complete'] }

  STATUS_OPTIONS = [
    ['Not started', 'Not started'],
    ['In progress', 'In progress'],
    ['Complete', 'Complete']
  ]

end
