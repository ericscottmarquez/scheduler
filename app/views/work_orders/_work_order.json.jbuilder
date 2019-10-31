# json.extract! work_order, :id, :technician_id, :location_id, :start_time, :end_time, :duration, :price, :created_at, :updated_at
# json.url work_order_url(work_order, format: :json)


date_format = work_order.all_day_event? ? '%Y-%m-%d' : '%Y-%m-%dT%H:%M:%S'

json.id work_order.id
json.title work_order.technician_id
json.start work_order.start_time.strftime(date_format)
json.end work_order.end_time.strftime(date_format)

json.color work_order.color unless work_order.color.blank?
json.allDay work_order.all_day_event? ? true : false

json.update_url work_order_path(work_order, method: :patch)
json.edit_url edit_work_order_path(work_order)