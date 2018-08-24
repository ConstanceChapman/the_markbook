import "bootstrap";
import "fullcalendar";
import "fullcalendar/dist/fullcalendar.min.css"
import { toggleTabClass } from "../components/tabs.js"

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
      window.open(event.url, "_self");
    }
  })
})

document.addEventListener("DOMContentLoaded",function(){
  var calendar_list = $('#calendar-list')
  calendar_list.fullCalendar({
    height: 550,
    header: {
      left: 'prev,next today',
      center: 'title',
      right: 'listWeek,month',
    },
    // minTime: "08:00:00",
    // maxTime: "20:00:00",
    weekends: false,
    // allDaySlot: false,
    nowIndicator: true,
    defaultView: 'listWeek',
    // selectable: true,
    // selectHelper: true,
    // eventLimit: true,
    events: document.getElementById("events-path").innerText,
    eventClick: function(event) {
      window.open(event.url, "_self");
    }
  })
})

