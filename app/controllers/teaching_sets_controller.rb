class TeachingSetsController < ApplicationController
  def index
    @no_tabbar = true

    # @lessons = []
    # current_user.teaching_sets.each do |ts|
    #   ts.lessons.each do |l|
    #     @lessons << l
    #   end
    # end

    # @events = @lessons.map do |l|
    #   {
    #     title: "#{l.teaching_set.year_group}, #{l.teaching_set.subject}",
    #     start: "#{l.start_time}",
    #     # color: "",
    #     # textColor: "",
    #     allDay: false
    #   }
    # end
  end
end

# array, hash
#   array, hash

# eventSources: [
#   {
#     events: [
#       {
#         title  : 'event1',
#         start  : '2010-01-01'
#       },
#       {
#         title  : 'event2',
#         start  : '2010-01-05',
#         end    : '2010-01-07'
#       },
#       {
#         title  : 'event3',
#         start  : '2010-01-09T12:30:00',
#       }
#     ],
#   }
# ]
