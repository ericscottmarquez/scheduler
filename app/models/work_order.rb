class WorkOrder < ApplicationRecord
  belongs_to :technician
  require 'csv'
  require 'activerecord-import/base'
  require 'activerecord-import/active_record/adapters/postgresql_adapter'
  # validates_presence_of :technician_id

  def self.my_import(file)
    work_orders = []
    CSV.foreach(file.path, headers: true) do |row|
      work_orders << WorkOrder.new(row.to_h)
    end
    WorkOrder.import work_orders, recursive: true
  end
end
