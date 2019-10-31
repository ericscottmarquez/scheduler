# json.array! @work_orders, partial: "work_orders/work_order", as: :work_order

json.array! @work_orders do |work_order|
  date_format = work_order.all_day_event? ? '%Y-%m-%d' : '%Y-%m-%dT%H:%M:%S'
  json.id work_order.id
  json.title work_order.title
  json.start work_order.start.strftime(date_format)
  json.end work_order.end.strftime(date_format)
  json.color work_order.color unless work_order.color.blank?
  json.allDay work_order.all_day_event? ? true : false
  json.update_url work_order_path(work_order, method: :patch)
  json.edit_url edit_work_order_path(work_order)
end
