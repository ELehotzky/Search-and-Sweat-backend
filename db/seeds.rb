require "byebug"

FitnessClassCategory.destroy_all
FitnessClassDetail.destroy_all
FitnessClass.destroy_all
ClassDetail.destroy_all
Studio.destroy_all
Admin.destroy_all
Category.destroy_all


#Admins
admin = Admin.create(name: "Admin", email: "Lehotzky.Erica@gmail.com", password: "pass1234")

#Studios
body_rock_rice = Studio.create(name: "Body Rock Pilates - Rice Military", street_address: "5230 Center St", city: "Houston", zip_code: 77007, phone: "346-319-5975", website: "http://www.http://bodyrockpilates.com/", admin: admin)
urban_jungle = Studio.create(name: "Urban Jungle Self Defense", street_address: "707 Yale St", city: "Houston", zip_code: 77007, phone: "713-861-7252", website: "https://www.urbanjungleselfdefense.com/", admin: admin)
studio_fitness_eado = Studio.create(name: "Studio Fitness EADO", street_address: "1005 Ennis", city: "Houston", zip_code: 77003, phone: "346-204-4865", website: "https://www.studiofitness.org/eado/", admin: admin)
row = Studio.create(name: "ROW Studios", street_address: "5570 Weslayan St", city: "Houston", zip_code: 77005, phone: "713-515-8553", website: "https://www.rowstudios.com/", admin: admin)
ryde_river_oaks = Studio.create(name: "Ryde - River Oaks", street_address: "2005-D West Gray", city: "Houston", zip_code: 77019, phone: "832-581-2878", website: "http://www.letsryde.com/", admin: admin)

#Categories
cardio = Category.create(name: "Cardio")
spin = Category.create(name: "Spin")
circuit_training = Category.create(name: "Circuit Training")
kickboxing = Category.create(name: "Kickboxing")
yoga = Category.create(name: "Yoga")
pilates = Category.create(name: "Pilates")
boxing = Category.create(name: "Boxing")
rowing = Category.create(name: "Rowing")
barre = Category.create(name: "Barre")
strength_training = Category.create(name: "Strength Training")

#Fitness Classes
reformer = FitnessClass.create(name: "Reformer", description: "More than just your standard pilates class, our Reformer sessions will take your body to a new level. Traditional Pilates form is coupled with high-intensity exercises that will lengthen, define and reshape your muscles. Add fun, pumping music, custom-made Reformers and our knowledgeable team of instructors-- Let the addiction begin!", class_length: 50, price: 30, studio_id: body_rock_rice.id)
facet_seven_method = FitnessClass.create(name: "Facet Seven Method", description: "The Facet Seven Method class takes the best training models in the fitness industry and combines it into an easy-to-follow, 1-hour program combining Strength, Interval Training, and Yoga. With an emphasis on injury free progress, we tailor the program to match you where you're at on your journey. Each class is designed to build throughout the year for those that are committed, while still providing such a well rounded program that even a quick drop in can provide great benefits. Check us out next to the turf at Studio Fitness.", class_length: 60, price: 15, studio_id: studio_fitness_eado.id)
power_flow_yoga = FitnessClass.create(name: "Power Flow Yoga", description: "This yoga class combines a series of poses that flow from one to another linked by your breath (vinyasa). This is a vigorous workout that gets your body moving, blood pumping, sweat pouring, and stress releasing. This is typically a mixed-level class, so modifications will be shown. Some Yoga experience helpful. This class also features some hands-on assists so the students can better align their bodies and feel what the poses present in their bodies. Get ready for a physical workout followed by a restful savasana.", class_length: 60, price: 15, studio_id: studio_fitness_eado.id)
all_body = FitnessClass.create(name: "All Body", description: "Our signature class! Enjoy a 50-minute high intensity interval training (H.I.I.T.) workout that incorporates rowing, free weights, calisthenics, and sweat.
In this class format, expect:

- 5 minutes of warm-up on the rowing machine (The 'erg')
- 5 minutes of dynamic movement to loosen up
- 35 minutes of time-interval circuits, separated by two-minute rests
- 5 minutes of cooldown and mobility (foam rolling/stretches)

See you on the erg!", class_length: 50, price: 25, studio_id: row.id)


#Fitness Class Categories
fc1 = FitnessClassCategory.create(fitness_class_id: reformer.id, category_id: pilates.id)
fc2 = FitnessClassCategory.create(fitness_class_id: facet_seven_method.id, category_id: strength_training.id)
fc3 = FitnessClassCategory.create(fitness_class_id: facet_seven_method.id, category_id: pilates.id)
fc4 = FitnessClassCategory.create(fitness_class_id: facet_seven_method.id, category_id: yoga.id)
fc5 = FitnessClassCategory.create(fitness_class_id: power_flow_yoga.id, category_id: yoga.id)
fc6 = FitnessClassCategory.create(fitness_class_id: all_body.id, category_id: cardio.id)
fc7 = FitnessClassCategory.create(fitness_class_id: all_body.id, category_id: rowing.id)
fc8 = FitnessClassCategory.create(fitness_class_id: all_body.id, category_id: strength_training.id)

#Class Details
cd1 = ClassDetail.create(instructor: "Sara", time: DateTime.strptime("10/25/2018 17:30", "%m/%d/%Y %H:%M"))
cd2 = ClassDetail.create(instructor: "Sara", time: DateTime.strptime("10/25/2018 18:30", "%m/%d/%Y %H:%M"))
cd3 = ClassDetail.create(instructor: "Allison", time: DateTime.strptime("10/26/2018 06:00", "%m/%d/%Y %H:%M"))
cd4 = ClassDetail.create(instructor: "Layn Chess", time: DateTime.strptime("10/26/2018 5:00", "%m/%d/%Y %H:%M"))
cd5 = ClassDetail.create(instructor: "Gavin Bruce", time: DateTime.strptime("10/26/2018 8:00", "%m/%d/%Y %H:%M"))
cd6 = ClassDetail.create(instructor: "Lauren Sanches", time: DateTime.strptime("10/27/2018 8:45", "%m/%d/%Y %H:%M"))
cd7 = ClassDetail.create(instructor: "Jason Kaprelian", time: DateTime.strptime("10/26/2018 5:00", "%m/%d/%Y %H:%M"))


#Fitness Class Details
FitnessClassDetail.create(fitness_class_id: reformer.id, class_detail_id: cd1.id)
FitnessClassDetail.create(fitness_class_id: reformer.id, class_detail_id: cd2.id)
FitnessClassDetail.create(fitness_class_id: reformer.id, class_detail_id: cd3.id)
FitnessClassDetail.create(fitness_class_id: facet_seven_method.id, class_detail_id: cd4.id)
FitnessClassDetail.create(fitness_class_id: facet_seven_method.id, class_detail_id: cd5.id)
FitnessClassDetail.create(fitness_class_id: power_flow_yoga.id, class_detail_id: cd6.id)
FitnessClassDetail.create(fitness_class_id: all_body.id, class_detail_id: cd7.id)
