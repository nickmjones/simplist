class Task < ApplicationRecord
  belongs_to :lists, optional: true
end
