import "bootstrap";
import "fullcalendar";
import "fullcalendar/dist/fullcalendar.min.css"
import { toggleTabClass } from "../components/tabs.js"

// $(document).ready(function(){



//   console.log(events)
// });



document.addEventListener("DOMContentLoaded",function(){
  var calendar = $('#calendar')
  calendar.fullCalendar({
  //   events: this.dataset.events
  })

  // console.log(calendar.dataset.events);
});


// var calendar = $('#calendar')

// $( document ).ready(function() {
//   calendar.fullCalendar({
//     events: [JSON.parse(calendar.dataset.events)]
//   })
// });

// calendar.fullCalendar({
// })
