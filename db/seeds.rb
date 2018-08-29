puts "Destroying old records..."

Report.destroy_all
Score.destroy_all
Mark.destroy_all
Task.destroy_all
Lesson.destroy_all
ReportCycle.destroy_all
SetPupil.destroy_all
Pupil.destroy_all
TeachingSet.destroy_all
User.destroy_all


###########################################################

puts "Seeding users..."

# USERS

user1 = User.new(
  email: "snape@gmail.com",
  password: "123456",
  first_name: "Severus",
  last_name: "Snape",
  photo: "teachers/snape.jpg"

  )
user1.save!


###########################################################

puts "Seeding teaching-sets..."

# TEACHING-SETS

defense3 = TeachingSet.new(
  subject: "Defense Against The Dark Arts",
  year_group: "Year 3",
  start_date: Date.new(2018,8,27),
  end_date: Date.new(2019,7,12),
  user: user1,
  color: "#469AE0" # $blue
  )
defense3.save!

defense5 = TeachingSet.new(
  subject: "Defense Against The Dark Arts",
  year_group: "Year 5",
  start_date: Date.new(2018,8,27),
  end_date: Date.new(2019,7,12),
  user: user1,
  color: "#232855" # $dark-blue
  )
defense5.save!

potions5 = TeachingSet.new(
  subject: "Potions",
  year_group: "Year 5",
  start_date: Date.new(2018,8,27),
  end_date: Date.new(2019,7,12),
  user: user1,
  color: "#215B63" # $dark-green
  )
potions5.save!

potions7 = TeachingSet.new(
  subject: "Potions",
  year_group: "Year 7",
  start_date: Date.new(2018,8,27),
  end_date: Date.new(2019,7,12),
  user: user1,
  color: "#5FCC9C" # $green
  )
potions7.save!


###########################################################

puts "Seeding pupils..."

# PUPILS - HARRY POTTER

harry = Pupil.new(
  first_name: "Harry",
  last_name: "Potter",
  photo: "harry-potter/harry.jpg"
  )
harry.save!

ron = Pupil.new(
  first_name: "Ron",
  last_name: "Weasley",
  photo: "harry-potter/ron.jpeg"
  )
ron.save!

hermione = Pupil.new(
  first_name: "Hermione",
  last_name: "Granger",
  photo: "harry-potter/hermione.jpg"
  )
hermione.save!

draco = Pupil.new(
  first_name: "Draco",
  last_name: "Malfoy",
  photo: "harry-potter/draco.jpg"
  )
draco.save!

neville = Pupil.new(
  first_name: "Neville",
  last_name: "Longbottom",
  photo: "harry-potter/neville.jpg"
  )
neville.save!

seamus = Pupil.new(
  first_name: "Seamus",
  last_name: "Finnigan",
  photo: "harry-potter/seamus.jpg"
  )
seamus.save!

luna = Pupil.new(
  first_name: "Luna",
  last_name: "Lovegood",
  photo: "harry-potter/luna.jpg"
  )
luna.save!

dean = Pupil.new(
  first_name: "Dean",
  last_name: "Thomas",
  photo: "harry-potter/dean.jpg"
  )
dean.save!

susan = Pupil.new(
  first_name: "Susan",
  last_name: "Bones",
  photo: "harry-potter/susan.jpeg"
  )
susan.save!

terry = Pupil.new(
  first_name: "Terry",
  last_name: "Boot",
  photo: "harry-potter/terry.jpg"
  )
terry.save!

lavendar = Pupil.new(
  first_name: "Lavendar",
  last_name: "Brown",
  photo: "harry-potter/lavendar.jpg"
  )
lavendar.save!

millicent = Pupil.new(
  first_name: "Millicent",
  last_name: "Bulstrode",
  photo: "harry-potter/millicent.jpg"
  )
millicent.save!

michael = Pupil.new(
  first_name: "Michael",
  last_name: "Corner",
  photo: "harry-potter/michael.jpg"
  )
michael.save!

vincent = Pupil.new(
  first_name: "Vincent",
  last_name: "Crabbe",
  photo: "harry-potter/vincent.jpg"
  )
vincent.save!

justin = Pupil.new(
  first_name: "Justin",
  last_name: "Finch-Fletchley",
  photo: "harry-potter/justin.png"
  )
justin.save!

anthony = Pupil.new(
  first_name: "Anthony",
  last_name: "Goldstein",
  photo: "harry-potter/anthony.jpg"
  )
anthony.save!

gregory = Pupil.new(
  first_name: "Gregory",
  last_name: "Goyle",
  photo: "harry-potter/gregory.jpg"
  )
gregory.save!

cedric = Pupil.new(
  first_name: "Cedric",
  last_name: "Diggory",
  photo: "harry-potter/cedric.png"
  )
cedric.save!

pansy = Pupil.new(
  first_name: "Pansy",
  last_name: "Parkinson",
  photo: "harry-potter/pansy.jpg"
  )
pansy.save!

padma = Pupil.new(
  first_name: "Padma",
  last_name: "Patil",
  photo: "harry-potter/padma.jpg"
  )
padma.save!

parvati = Pupil.new(
  first_name: "Parvati",
  last_name: "Patil",
  photo: "harry-potter/parvati.jpg"
  )
parvati.save!

blaise = Pupil.new(
  first_name: "Blaise",
  last_name: "Zabini",
  photo: "harry-potter/blaise.png"
  )
blaise.save!

angelina = Pupil.new(
  first_name: "Angelina",
  last_name: "Johnson",
  photo: "harry-potter/angelina.jpg"
  )
angelina.save!

marcus = Pupil.new(
  first_name: "Marcus",
  last_name: "Flint",
  photo: "harry-potter/marcus.jpg"
  )
marcus.save!

ginny = Pupil.new(
  first_name: "Ginny",
  last_name: "Weasley",
  photo: "harry-potter/ginny.jpg"
  )
ginny.save!

fred = Pupil.new(
  first_name: "Fred",
  last_name: "Weasley",
  photo: "harry-potter/fred.jpg"
  )
fred.save!

george = Pupil.new(
  first_name: "George",
  last_name: "Weasley",
  photo: "harry-potter/george.jpg"
  )
george.save!

lee = Pupil.new(
  first_name: "Lee",
  last_name: "Jordan",
  photo: "harry-potter/lee.jpg"
  )
lee.save!

cho = Pupil.new(
  first_name: "Cho",
  last_name: "Chang",
  photo: "harry-potter/cho.jpg"
  )
cho.save!


###########################################################

puts "Seeding set-pupils..."

pupils = []
Pupil.all.each { |pupil| pupils << pupil }

pupils.sample(12).each do |pupil|
  SetPupil.create!(
    teaching_set: defense3,
    pupil: pupil
    )
end

pupils.sample(12).each do |pupil|
  SetPupil.create!(
    teaching_set: defense5,
    pupil: pupil
    )
end

pupils.sample(12).each do |pupil|
  SetPupil.create!(
    teaching_set: potions5,
    pupil: pupil
    )
end

pupils.sample(12).each do |pupil|
  SetPupil.create!(
    teaching_set: potions7,
    pupil: pupil
    )
end


###########################################################


puts "Seeding report-cycles..."

summer_start = Date.new(2018,8,27)
summer_end = Date.new(2018,10,12)
summer_weeks = ((summer_end - summer_start)/7).round
fall_start = Date.new(2018,10,29)
fall_end = Date.new(2018,12,21)
fall_weeks = ((fall_end - fall_start)/7).round
winter_start = Date.new(2019,1,7)
winter_end = Date.new(2019,4,12)
winter_weeks = ((winter_end - winter_start)/7).round
spring_start = Date.new(2019,4,29)
spring_end = Date.new(2019,7,12)
spring_weeks = ((winter_end - winter_start)/7).round

# potions7 = TeachingSet.new(
#   subject: "Potions",
#   year_group: "Year 7",
#   start_date: Date.new(2018,8,27),
#   end_Date: Date.new(2019,7,12),
#   user: user1,
#   color: "#5FCC9C" # $green
#   )
# potions7.save!
ts_hash = {}
base = "ts_"
TeachingSet.all.each do |ts|
  ts_hash[(base + ts.id.to_s + "summer")] = ReportCycle.create!(
    name: "Summer Term",
    start_date: summer_start,
    end_date: summer_end,
    teaching_set: ts
    )

  ts_hash[(base + ts.id.to_s + "fall")] = ReportCycle.create!(
    name: "Fall Term",
    start_date: fall_start,
    end_date: fall_end,
    teaching_set: ts
    )

  ts_hash[(base + ts.id.to_s + "winter")] = ReportCycle.create!(
    name: "Winter Term",
    start_date: winter_start,
    end_date: winter_end,
    teaching_set: ts
    )

  ts_hash[(base + ts.id.to_s + "spring")] = ReportCycle.create!(
    name: "Spring Term",
    start_date: spring_start,
    end_date: spring_end,
    teaching_set: ts
    )
end


###########################################################


puts "Seeding lessons..."

# LESSONS - POTIONS 5

summer_weeks.times do |num|
  # TUESDAY
  Lesson.create!(
    start_time: DateTime.new(2018,8,28,11,00) + num * 7,
    end_time: DateTime.new(2018,8,28,12,30) + num * 7,
    report_cycle: ts_hash[base + potions5.id.to_s + "summer"],
    teaching_set: potions5
    )

  # FRIDAY
  Lesson.create!(
    start_time: DateTime.new(2018,8,31,17,00) + num * 7,
    end_time: DateTime.new(2018,8,31,20,00) + num * 7,
    report_cycle: ts_hash[base + potions5.id.to_s + "summer"],
    teaching_set: potions5
    )
end

fall_weeks.times do |num|
  # TUESDAY
  Lesson.create!(
    start_time: DateTime.new(2018,10,30,11,00) + num * 7,
    end_time: DateTime.new(2018,10,30,12,30) + num * 7,
    report_cycle: ts_hash[base + potions5.id.to_s + "fall"],
    teaching_set: potions5
    )

  # FRIDAY
  Lesson.create!(
    start_time: DateTime.new(2018,11,2,17,00) + num * 7,
    end_time: DateTime.new(2018,11,2,20,00) + num * 7,
    report_cycle: ts_hash[base + potions5.id.to_s + "fall"],
    teaching_set: potions5
    )
end


# LESSONS - POTIONS 7

summer_weeks.times do |num|
  #MONDAY
  Lesson.create!(
    start_time: DateTime.new(2018,8,27,9,00) + num * 7,
    end_time: DateTime.new(2018,8,27,10,30) + num * 7,
    report_cycle: ts_hash[base + potions7.id.to_s + "summer"],
    teaching_set: potions7
    )

  #THURSDAY
  Lesson.create!(
    start_time: DateTime.new(2018,8,30,9,00) + num * 7,
    end_time: DateTime.new(2018,8,30,10,30) + num * 7,
    report_cycle: ts_hash[base + potions7.id.to_s + "summer"],
    teaching_set: potions7
    )

  #FRIDAY
  Lesson.create!(
    start_time: DateTime.new(2018,8,31,14,00) + num * 7,
    end_time: DateTime.new(2018,8,31,15,30) + num * 7,
    report_cycle: ts_hash[base + potions7.id.to_s + "summer"],
    teaching_set: potions7
    )
end

fall_weeks.times do |num|
  #MONDAY
  Lesson.create!(
    start_time: DateTime.new(2018,10,29,9,00) + num * 7,
    end_time: DateTime.new(2018,10,29,10,30) + num * 7,
    report_cycle: ts_hash[base + potions7.id.to_s + "fall"],
    teaching_set: potions7
    )

  #THURSDAY
  Lesson.create!(
    start_time: DateTime.new(2018,11,1,9,00) + num * 7,
    end_time: DateTime.new(2018,11,1,10,30) + num * 7,
    report_cycle: ts_hash[base + potions7.id.to_s + "fall"],
    teaching_set: potions7
    )

  #FRIDAY
  Lesson.create!(
    start_time: DateTime.new(2018,11,2,14,00) + num * 7,
    end_time: DateTime.new(2018,11,2,15,30) + num * 7,
    report_cycle: ts_hash[base + potions7.id.to_s + "fall"],
    teaching_set: potions7
    )
end


# LESSONS - DEFENSE 5

summer_weeks.times do |num|
  #MONDAY
  Lesson.create!(
    start_time: DateTime.new(2018,8,27,11,00) + num * 7,
    end_time: DateTime.new(2018,8,27,12,30) + num * 7,
    report_cycle: ts_hash[base + defense5.id.to_s + "summer"],
    teaching_set: defense5
    )

  #TUESDAY
  Lesson.create!(
    start_time: DateTime.new(2018,8,28,14,00) + num * 7,
    end_time: DateTime.new(2018,8,28,15,30) + num * 7,
    report_cycle: ts_hash[base + defense5.id.to_s + "summer"],
    teaching_set: defense5
    )

  #THURSDAY
  Lesson.create!(
    start_time: DateTime.new(2018,8,30,14,00) + num * 7,
    end_time: DateTime.new(2018,8,30,15,30) + num * 7,
    report_cycle: ts_hash[base + defense5.id.to_s + "summer"],
    teaching_set: defense5
    )
end

fall_weeks.times do |num|
  #MONDAY
  Lesson.create!(
    start_time: DateTime.new(2018,10,29,11,00) + num * 7,
    end_time: DateTime.new(2018,10,29,12,30) + num * 7,
    report_cycle: ts_hash[base + defense5.id.to_s + "fall"],
    teaching_set: defense5
    )

  #TUESDAY
  Lesson.create!(
    start_time: DateTime.new(2018,10,30,14,00) + num * 7,
    end_time: DateTime.new(2018,10,30,15,30) + num * 7,
    report_cycle: ts_hash[base + defense5.id.to_s + "fall"],
    teaching_set: defense5
    )

  #THURSDAY
  Lesson.create!(
    start_time: DateTime.new(2018,11,1,14,00) + num * 7,
    end_time: DateTime.new(2018,11,1,15,30) + num * 7,
    report_cycle: ts_hash[base + defense5.id.to_s + "fall"],
    teaching_set: defense5
    )
end


# LESSONS - DEFENSE 3

summer_weeks.times do |num|
  # WEDNESDAY
  Lesson.create!(
    start_time: DateTime.new(2018,8,29,11,00) + num * 7,
    end_time: DateTime.new(2018,8,29,14,00) + num * 7,
    report_cycle: ts_hash[base + defense3.id.to_s + "summer"],
    teaching_set: defense3
    )

  # FRIDAY
  Lesson.create!(
    start_time: DateTime.new(2018,8,31,11,00) + num * 7,
    end_time: DateTime.new(2018,8,31,12,30) + num * 7,
    report_cycle: ts_hash[base + defense3.id.to_s + "summer"],
    teaching_set: defense3
    )
end

fall_weeks.times do |num|
  # WEDNESDAY
  Lesson.create!(
    start_time: DateTime.new(2018,10,31,11,00) + num * 7,
    end_time: DateTime.new(2018,10,31,14,00) + num * 7,
    report_cycle: ts_hash[base + defense3.id.to_s + "fall"],
    teaching_set: defense3
    )

  # FRIDAY
  Lesson.create!(
    start_time: DateTime.new(2018,11,2,11,00) + num * 7,
    end_time: DateTime.new(2018,11,2,12,30) + num * 7,
    report_cycle: ts_hash[base + defense3.id.to_s + "fall"],
    teaching_set: defense3
    )
end


############################################################################################

puts "Seeding tasks..."

# TASKS - YR3 DEFENSE (6)

task_titles_defense3 = ["Riddikulus test", "Freezing Spell", "Boggarts essay",
  "Nocturnal beasts", "Orbis Jinx quiz", "Werewolves essay"]

task_titles_defense3.each do |title|
  Task.create!(
    teaching_set: defense3,
    title: title,
    max_mark: rand(10..100)
  )
end

# TASKS - YR5 DEFENSE (7)

task_titles_defense5 = ["Patronus Charm", "Counter-spells", "Defensive Charms",
  "Dementor essay", "Diminuendo quiz", "Nonverbal magic", "Conflict avoidance"]

task_titles_defense5.each do |title|
  Task.create!(
    teaching_set: defense5,
    title: title,
    max_mark: rand(10..100)
  )
end

# TASKS - YR5 POTIONS (8)

task_titles_potions5 = ["Mixing test", "Bezoar essay", "Sleeping draught", "Ingredients test",
  "Potions test", "Antidotes quiz", "Stirring clockwise", "Potionmaking"]

task_titles_potions5.each do |title|
  Task.create!(
    teaching_set: potions5,
    title: title,
    max_mark: rand(10..100)
  )
end

# TASKS - YR7 POTIONS (7)

task_titles_potions7 = ["Felix Felicis", "Love Potion quiz", "Potion essay", "Ingredients quiz",
  "Antidotes essay", "Practical test"]

task_titles_potions7.each do |title|
  Task.create!(
    teaching_set: potions7,
    title: title,
    max_mark: rand(10..100)
  )
end


############################################################################################


puts "Seeding marks..."

Task.all.each do |task|
  task.marks.each do |mark|
    mark.raw_mark = rand(0..task.max_mark)
    mark.save!
  end
end


############################################################################################


Lesson.all.each { |l| l.save! }
ReportCycle.all.each { |rc| rc.save! }
