class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  # validates :spots, length: { in: 1..5 }
end
