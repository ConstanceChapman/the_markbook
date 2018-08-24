import "bootstrap";
import "fullcalendar";
import "fullcalendar/dist/fullcalendar.min.css"
import { toggleTabClass } from "../components/tabs.js"

// $(document).ready(function(){
  document.addEventListener("DOMContentLoaded",function(){
    var calendar = $('#calendar')
    calendar.fullCalendar({
      height: 650,
      header: {
        left: 'prev,next today',
        center: 'title',
        right: 'agendaDay,agendaWeek,month',
      },
      minTime: "08:00:00",
      maxTime: "20:00:00",
      weekends: false,
      allDaySlot: false,
      nowIndicator: true,
      defaultView: 'agendaDay',
      // defaultTimedEventDuration: "01:30:00",
      // selectable: true,
      // selectHelper: true,
      // editable: true,
      // eventLimit: true,
      events: "/events",
    })
  })
// };
