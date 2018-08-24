json.array! @events do |event|
  json.title event[:title]
  json.start event[:start]
  json.end event[:end]
  json.color event[:color]
end
