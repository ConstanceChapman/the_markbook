import "bootstrap";
import "fullcalendar";
import "fullcalendar/dist/fullcalendar.min.css"
import 'expose-loader?$!jquery';
import 'expose-loader?jQuery!jquery';
import { toggleTabClass } from "../components/tabs.js"
import { toggleSidePanel } from "../components/sidepanel.js"
import { scrollRight } from "../components/scroll-right.js"

if (document.getElementById('side-panel')) {
  toggleSidePanel();
}

document.addEventListener("DOMContentLoaded",function(){
  var calendar = $('#calendar')

  calendar.fullCalendar({
    height: 650,
    header: {
      left: 'prev,next today',
      center: 'title',
      right: 'agendaDay,agendaWeek,month',
    },
    defaultView: 'agendaDay',
    minTime: "09:00:00",
    maxTime: "20:00:00",
    weekends: false,
    allDaySlot: false,
    nowIndicator: true,
    events: "/events",
    eventClick: function(event) {
      window.open(event.url, "_self");
    }
  })
})

document.addEventListener("DOMContentLoaded",function(event){
  var calendar_list = $('#calendar-list')
  calendar_list.fullCalendar({
    height: 550,
    header: {
      left: 'prev,next',
      center: 'title',
      right: 'listWeek,listYear',
    },
    defaultView: 'listWeek',
    buttonText: {
      listWeek: 'This week',
      listYear: 'All'
    },
    // nowIndicator: true,
    events: document.getElementById("events-path").innerText,
    eventClick: function(event) {
      window.open(event.url, "_self");
    }
  })
})

scrollRight();
