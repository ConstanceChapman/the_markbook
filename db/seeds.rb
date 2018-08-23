puts "Destroying old records..."

Score.destroy_all
Mark.destroy_all
Task.destroy_all
Report.destroy_all
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
  email: "connie@gmail.com",
  password: "123456",
  first_name: "Constance",
  last_name: "Chapman"
  )
user1.save!

user2 = User.new(
  email: "snape@gmail.com",
  password: "123456",
  first_name: "Severus",
  last_name: "Snape"
  )
user2.save!


###########################################################

puts "Seeding teaching-sets..."

# TEACHING-SETS

lewagon = TeachingSet.new(
  subject: "Le Wagon",
  year_group: "Batch 164",
  start_date: "2018-07-02",
  end_date: "2018-08-31",
  user: user1
  )
lewagon.save!

potions5 = TeachingSet.new(
  subject: "Potions",
  year_group: "Year 5",
  start_date: "2018-01-08",
  end_date: "2018-12-21",
  user: user2
  )
potions5.save!

defense5 = TeachingSet.new(
  subject: "Defense Against The Dark Arts",
  year_group: "Year 5",
  start_date: "2018-01-08",
  end_date: "2018-12-21",
  user: user2
  )
defense5.save!


###########################################################

puts "Seeding pupils..."

# PUPILS - LE WAGON

saskia = Pupil.new(
  first_name: "Saskia",
  last_name: "Menke"
  )
saskia.save!

amanda = Pupil.new(
  first_name: "Amanda",
  last_name: "Schjørmann"
  )
amanda.save!

charles = Pupil.new(
  first_name: "Charles",
  last_name: "Sumner"
  )
charles.save!

thiago = Pupil.new(
  first_name: "Thiago",
  last_name: "Oliva"
  )
thiago.save!

nick = Pupil.new(
  first_name: "Nicolas",
  last_name: "Feer"
  )
nick.save!


# PUPILS - HARRY POTTER

harry = Pupil.new(
  first_name: "Harry",
  last_name: "Potter"
  )
harry.save!

ron = Pupil.new(
  first_name: "Ron",
  last_name: "Weasley"
  )
ron.save!

hermione = Pupil.new(
  first_name: "Hermione",
  last_name: "Granger"
  )
hermione.save!

draco = Pupil.new(
  first_name: "Draco",
  last_name: "Malfoy"
  )
draco.save!

neville = Pupil.new(
  first_name: "Neville",
  last_name: "Longbottom"
  )
neville.save!

seamus = Pupil.new(
  first_name: "Seamus",
  last_name: "Finnigan"
  )
seamus.save!

luna = Pupil.new(
  first_name: "Luna",
  last_name: "Lovegood"
  )
luna.save!

dean = Pupil.new(
  first_name: "Dean",
  last_name: "Thomas"
  )
dean.save!

susan = Pupil.new(
  first_name: "Susan",
  last_name: "Bones"
  )
susan.save!

terry = Pupil.new(
  first_name: "Terry",
  last_name: "Boot"
  )
terry.save!

lavendar = Pupil.new(
  first_name: "Lavendar",
  last_name: "Brown"
  )
lavendar.save!

millicent = Pupil.new(
  first_name: "Millicent",
  last_name: "Bulstrode"
  )
millicent.save!

michael = Pupil.new(
  first_name: "Michael",
  last_name: "Corner"
  )
michael.save!

vincent = Pupil.new(
  first_name: "Vincent",
  last_name: "Crabbe"
  )
vincent.save!

justin = Pupil.new(
  first_name: "Justin",
  last_name: "Fletchley"
  )
justin.save!

anthony = Pupil.new(
  first_name: "Anthony",
  last_name: "Goldstein"
  )
anthony.save!

gregory = Pupil.new(
  first_name: "Gregory",
  last_name: "Goyle"
  )
gregory.save!

ernie = Pupil.new(
  first_name: "Ernie",
  last_name: "Macmillan"
  )
ernie.save!

pansy = Pupil.new(
  first_name: "Pansy",
  last_name: "Parkinson"
  )
pansy.save!

padma = Pupil.new(
  first_name: "Padma",
  last_name: "Patil"
  )
padma.save!

parvati = Pupil.new(
  first_name: "Parvati",
  last_name: "Patil"
  )
parvati.save!

blaise = Pupil.new(
  first_name: "Blaise",
  last_name: "Zabini"
  )
blaise.save!


###########################################################

puts "Seeding set-pupils..."

# SET-PUPILS - LE WAGON (5)

saskia_lewagon = SetPupil.new(
  teaching_set: lewagon,
  pupil: saskia
  )
saskia_lewagon.save!

amanda_lewagon = SetPupil.new(
  teaching_set: lewagon,
  pupil: amanda
  )
amanda_lewagon.save!

charles_lewagon = SetPupil.new(
  teaching_set: lewagon,
  pupil: charles
  )
charles_lewagon.save!

thiago_lewagon = SetPupil.new(
  teaching_set: lewagon,
  pupil: thiago
  )
thiago_lewagon.save!

nick_lewagon = SetPupil.new(
  teaching_set: lewagon,
  pupil: nick
  )
nick_lewagon.save!


# SET-PUPILS - POTIONS 5 (14)

harry_potions5 = SetPupil.new(
  teaching_set: potions5,
  pupil: harry
  )
harry_potions5.save!

ron_potions5 = SetPupil.new(
  teaching_set: potions5,
  pupil: ron
  )
ron_potions5.save!

hermione_potions5 = SetPupil.new(
  teaching_set: potions5,
  pupil: hermione
  )
hermione_potions5.save!

draco_potions5 = SetPupil.new(
  teaching_set: potions5,
  pupil: draco
  )
draco_potions5.save!

neville_potions5 = SetPupil.new(
  teaching_set: potions5,
  pupil: neville
  )
neville_potions5.save!

seamus_potions5 = SetPupil.new(
  teaching_set: potions5,
  pupil: seamus
  )
seamus_potions5.save!

luna_potions5 = SetPupil.new(
  teaching_set: potions5,
  pupil: luna
  )
luna_potions5.save!

dean_potions5 = SetPupil.new(
  teaching_set: potions5,
  pupil: dean
  )
dean_potions5.save!

susan_potions5 = SetPupil.new(
  teaching_set: potions5,
  pupil: susan
  )
susan_potions5.save!

terry_potions5 = SetPupil.new(
  teaching_set: potions5,
  pupil: terry
  )
terry_potions5.save!

lavendar_potions5 = SetPupil.new(
  teaching_set: potions5,
  pupil: lavendar
  )
lavendar_potions5.save!

millicent_potions5 = SetPupil.new(
  teaching_set: potions5,
  pupil: millicent
  )
millicent_potions5.save!

michael_potions5 = SetPupil.new(
  teaching_set: potions5,
  pupil: michael
  )
michael_potions5.save!

vincent_potions5 = SetPupil.new(
  teaching_set: potions5,
  pupil: vincent
  )
vincent_potions5.save!


# SET-PUPILS - DEFENSE 5 (13)

harry_defense5 = SetPupil.new(
  teaching_set: defense5,
  pupil: harry
  )
harry_defense5.save!

ron_defense5 = SetPupil.new(
  teaching_set: defense5,
  pupil: ron
  )
ron_defense5.save!

hermione_defense5 = SetPupil.new(
  teaching_set: defense5,
  pupil: hermione
  )
hermione_defense5.save!

draco_defense5 = SetPupil.new(
  teaching_set: defense5,
  pupil: draco
  )
draco_defense5.save!

neville_defense5 = SetPupil.new(
  teaching_set: defense5,
  pupil: neville
  )
neville_defense5.save!

justin_defense5 = SetPupil.new(
  teaching_set: defense5,
  pupil: justin
  )
justin_defense5.save!

anthony_defense5 = SetPupil.new(
  teaching_set: defense5,
  pupil: anthony
  )
anthony_defense5.save!

gregory_defense5 = SetPupil.new(
  teaching_set: defense5,
  pupil: gregory
  )
gregory_defense5.save!

ernie_defense5 = SetPupil.new(
  teaching_set: defense5,
  pupil: ernie
  )
ernie_defense5.save!

pansy_defense5 = SetPupil.new(
  teaching_set: defense5,
  pupil: pansy
  )
pansy_defense5.save!

padma_defense5 = SetPupil.new(
  teaching_set: defense5,
  pupil: padma
  )
padma_defense5.save!

parvati_defense5 = SetPupil.new(
  teaching_set: defense5,
  pupil: parvati
  )
parvati_defense5.save!

blaise_defense5 = SetPupil.new(
  teaching_set: defense5,
  pupil: blaise
  )
blaise_defense5.save!

###########################################################

puts "Seeding report-cycles..."

# REPORT-CYCLES - LE WAGON

lewagon_total = ReportCycle.create!(
  name: "Final Report",
  start_date: "2018-07-02",
  end_date: "2018-08-31",
  teaching_set: lewagon
  )


# REPORT-CYCLES - POTIONS 5

potions_winter = ReportCycle.create!(
  name: "Winter Term",
  start_date: "2018-01-08",
  end_date: "2018-03-19",
  teaching_set: potions5
  )

potions_spring = ReportCycle.create!(
  name: "Spring Term",
  start_date: "2018-03-20",
  end_date: "2018-06-20",
  teaching_set: potions5
  )

potions_summer = ReportCycle.create!(
  name: "Summer Term",
  start_date: "2018-06-21",
  end_date: "2018-09-22",
  teaching_set: potions5
  )

potions_fall = ReportCycle.create!(
  name: "Fall Term",
  start_date: "2018-09-23",
  end_date: "2018-12-21",
  teaching_set: potions5
  )


# REPORT-CYCLES - DEFENSE 5

defense_winter = ReportCycle.create!(
  name: "Winter Term",
  start_date: "2018-01-08",
  end_date: "2018-03-19",
  teaching_set: defense5
  )

defense_spring = ReportCycle.create!(
  name: "Spring Term",
  start_date: "2018-03-20",
  end_date: "2018-06-20",
  teaching_set: defense5
  )

defense_summer = ReportCycle.create!(
  name: "Summer Term",
  start_date: "2018-06-21",
  end_date: "2018-09-22",
  teaching_set: defense5
  )

defense_fall = ReportCycle.create!(
  name: "Fall Term",
  start_date: "2018-09-23",
  end_date: "2018-12-21",
  teaching_set: defense5
  )


###########################################################

puts "Seeding lessons..."

# LESSONS - LE WAGON

lewagon_monday = Lesson.create!(
  start_time: "2018-08-28 09:00",
  end_time: "2018-08-27 18:30",
  teaching_set: lewagon
  )

lewagon_tuesday = Lesson.create!(
  start_time: "2018-08-28 09:00",
  end_time: "2018-08-28 18:30",
  teaching_set: lewagon
  )

lewagon_wednesday = Lesson.create!(
  start_time: "2018-08-29 09:00",
  end_time: "2018-08-29 18:30",
  teaching_set: lewagon
  )

lewagon_thursday = Lesson.create!(
  start_time: "2018-08-30 09:00",
  end_time: "2018-08-30 18:30",
  teaching_set: lewagon
  )

lewagon_friday = Lesson.create!(
  start_time: "2018-08-31 09:00",
  end_time: "2018-08-31 18:30",
  teaching_set: lewagon
  )


# LESSONS - POTIONS 5

potions_tuesday = Lesson.create!(
  start_time: "2018-08-28 10:00",
  end_time: "2018-08-28 11:30",
  teaching_set: potions5
  )

potions_friday = Lesson.create!(
  start_time: "2018-08-31 17:00",
  end_time: "2018-08-31 20:00",
  teaching_set: potions5
  )


# LESSONS - DEFENSE 5

defense_monday = Lesson.create!(
  start_time: "2018-08-27 08:00",
  end_time: "2018-08-27 11:00",
  teaching_set: defense5
  )

defense_thursday = Lesson.create!(
  start_time: "2018-08-30 13:00",
  end_time: "2018-08-30 14:30",
  teaching_set: defense5
  )

Lesson.all.each { |l| l.save! }
ReportCycle.all.each { |rc| rc.save! }
