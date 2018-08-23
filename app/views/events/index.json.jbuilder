json.array! @events do |event|
  json.title event[:title]
  json.start event[:start]
end
