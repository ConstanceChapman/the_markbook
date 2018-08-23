import "bootstrap";
import "fullcalendar";
import "fullcalendar/dist/fullcalendar.min.css"
import { toggleTabClass } from "../components/tabs.js"

// $(document).ready(function(){
  document.addEventListener("DOMContentLoaded",function(){
    var calendar = $('#calendar')
    calendar.fullCalendar({
      height: 650,
      defaultView: 'agendaDay',
      allDaySlot: false,
      nowIndicator: true,
      minTime: "08:00:00",
      maxTime: "20:00:00",
      // defaultTimedEventDuration: "01:30:00",
      header: {
        left: 'prev,next today',
        center: 'title',
        right: 'agendaDay,agendaWeek,month',
      },
      // timezoneParam: "UTC",
      // selectable: true,
      // selectHelper: true,
      // editable: true,
      // eventLimit: true,
      weekends: false,

      events: "/events"
    })
  })
// };
