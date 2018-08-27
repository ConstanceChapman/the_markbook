json.array! @events do |event|
  json.title event[:title]
  json.start event[:start]
  json.end event[:end]
  json.dow event[:dow]
  json.ranges event[:ranges]
  json.color event[:color]
  json.url event[:url]
end
