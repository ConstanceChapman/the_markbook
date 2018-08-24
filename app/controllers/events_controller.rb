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
        end: "#{l.end_time.strftime('%Y-%m-%dT%H:%M:%S')}",
        color: "#{l.teaching_set.color}",
        url: "teaching_sets/#{l.teaching_set.id}/lessons/#{l.id}"
        # className: "" / [],
        # textColor: "",
      }
    end
  end

  def filtered_index
    # @lessons_ts = []
    @teaching_set = TeachingSet.find(params[:teaching_set_id])
    # @teaching_set.lessons.each do |l|
    #   l
    # end

    @events_ts = @teaching_set.lessons.map do |l|
      {
        title: "#{l.teaching_set.year_group}, #{l.teaching_set.subject}",
        start: "#{l.start_time.strftime('%Y-%m-%dT%H:%M:%S')}",
        end: "#{l.end_time.strftime('%Y-%m-%dT%H:%M:%S')}",
        color: "#{l.teaching_set.color}",
        url: "teaching_sets/#{l.teaching_set.id}/lessons/#{l.id}"
      }
    end
  end
end
