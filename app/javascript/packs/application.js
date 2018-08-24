import "bootstrap";
import "fullcalendar";
import "fullcalendar/dist/fullcalendar.min.css"
import { toggleTabClass } from "../components/tabs.js"
import { toggleSidePanel } from "../components/sidepanel.js"

if (document.getElementById('side-panel')) {
  toggleSidePanel();
}

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
      // selectable: true,
      // selectHelper: true,
      // eventLimit: true,
      events: "/events",
      eventClick: function(event) {
        // if (event.url) {
          // window.open("teaching_sets/:teaching_set_id/lessons/:id");
          window.open(event.url, "_self");
        // }
      }
    })
  })
// };
function scrollRight(){
  var el = document.getElementById("marks-index");
  if (el) {
    el.scrollLeft = el.scrollWidth - el.clientWidth;
  }
}
scrollRight()
