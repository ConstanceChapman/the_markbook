class EventsController < ApplicationController
  def index
    @lessons = []
    current_user.teaching_sets.each do |ts|
      ts.lessons.each do |l|
        @lessons << l
      end
    end

    @events = @lessons.map do |l|
      {
        title: "#{l.teaching_set.year_group}, #{l.teaching_set.subject}",
        start: "#{l.start_time.strftime('%Y-%m-%dT%H:%M:%S')}",

        # 2010-01-09T12:30:00
        # 2018-08-31T 9:00:00
        # color: "",
        # textColor: "",
        # allDay: false
      }
    end
  end
end
