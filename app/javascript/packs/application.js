import "bootstrap";
import "fullcalendar";
import "fullcalendar/dist/fullcalendar.min.css"
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

    // eventRender: function(event){
    //   return (event.ranges.filter(function(range){ // test event against all the ranges

    //       return (event.start.isBefore(range.end) &&
    //               event.end.isAfter(range.start));

    //   }).length)>0; //if it isn't in the range, don't render it (by returning false)
    // },

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

scrollRight();
