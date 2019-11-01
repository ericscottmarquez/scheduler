// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require jquery
//= require jquery_ujs
//= require activestorage
//= require turbolinks
//= require bootstrap-sprockets
//= require moment 
//= require bootstrap-datetimepicker
//= require fullcalendar
//= require_tree .

function eventCalendar() {
  return $('#calendar').fullCalendar({ 
    header: {
      left: 'prev,next today',
      center: 'title',
      right: 'month, agendaWeek, agendaDay'
    },
    selectable: true,
    selectHelper: true,
    editable: true,
    eventLimit: true,
    events: '/work_orders.json',

    select: function(start, end) {
      $.getScript('/work_orders/new', function() {
        $('.start_hidden').val(moment(start).format('YYYY-MM-DD HH:mm'));
        $('.end_hidden').val(moment(end).format('YYYY-MM-DD HH:mm'));
      });

      this.calendar.fullCalendar('unselect');
    },

    eventDrop: function(work_order, delta, revertFunc) {
      event_data = { 
        event: {
          id: work_order.id,
          start: work_order.start_time.format(),
          end: work_order.end_time.format()
        }
      };
      $.ajax({
          url: work_order.update_url,
          data: event_data,
          type: 'PATCH'
      });
    },
    
    eventClick: function(work_order, jsEvent, view) {
      $.getScript(work_order.edit_url, function() {});
    }

  });
};


function clearCalendar() {
  $('#calendar').fullCalendar('delete'); 
  $('#calendar').html('');
};

$(document).on('turbolinks:load', function(){
  eventCalendar();  
});

$(document).on('turbolinks:before-cache', clearCalendar);
