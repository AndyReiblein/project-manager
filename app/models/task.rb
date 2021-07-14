class Task < ApplicationRecord
  belongs_to :project

  validates :status, inclusion: { in: ['not-started', 'in-progress', 'complete'] }

  STATUS_OPTIONS = [
    ['Not started', ' not-started'],
    ['In progress', 'in-progress'],
    ['Complete', 'complete']
  ]
  def complete?
    status == 'Complete'
  end

  def in_progress?
    status == 'In progress'
  end

  def not_started?
    status == 'Not started'
  end

end
