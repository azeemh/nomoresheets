class Smurf < ApplicationRecord
  scope :process, -> { where(status: 'process') }
  scope :warmup, -> { where(status: 'warmup') }
  scope :active, -> { where(status: 'active') }
  default_scope { order(status: :asc) }
end
