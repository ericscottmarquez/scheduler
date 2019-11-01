class WorkOrder < ApplicationRecord
  belongs_to :technician
  # validates_presence_of :technician_id
end
