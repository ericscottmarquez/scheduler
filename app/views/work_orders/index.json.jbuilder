# json.array! @work_orders, partial: "work_orders/work_order", as: :work_order

json.array! @work_orders do |work_order|
  date_format = '%Y-%m-%dT%H:%M:%S'
  json.id work_order.id
  json.title work_order.technician_id
  json.start work_order.start_time.strftime(date_format)
  json.end work_order.end_time.strftime(date_format)
  # json.color work_order.color unless work_order.color.blank?
  json.allDay false
  json.update_url work_order_path(work_order, method: :patch)
  json.edit_url edit_work_order_path(work_order)
end
