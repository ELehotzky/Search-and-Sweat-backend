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


#Fitness Class Categories
fc1 = FitnessClassCategory.create(fitness_class_id: reformer.id, category_id: pilates.id)
fc2 = FitnessClassCategory.create(fitness_class_id: facet_seven_method.id, category_id: strength_training.id)
fc3 = FitnessClassCategory.create(fitness_class_id: facet_seven_method.id, category_id: pilates.id)
fc4 = FitnessClassCategory.create(fitness_class_id: facet_seven_method.id, category_id: yoga.id)


#Class Details
cd1 = ClassDetail.create(instructor: "Allison", time: DateTime.strptime("10/12/2018 06:00", "%m/%d/%Y %H:%M"))
cd2 = ClassDetail.create(instructor: "Allison", time: DateTime.strptime("10/12/2018 08:00", "%m/%d/%Y %H:%M"))
cd3 = ClassDetail.create(instructor: "Allison", time: DateTime.strptime("10/12/2018 09:00", "%m/%d/%Y %H:%M"))
cd4 = ClassDetail.create(instructor: "Kristin", time: DateTime.strptime("10/12/2018 11:00", "%m/%d/%Y %H:%M"))
cd5 = ClassDetail.create(instructor: "Kristin", time: DateTime.strptime("10/12/2018 12:00", "%m/%d/%Y %H:%M"))

#Fitness Class Details
FitnessClassDetail.create(fitness_class_id: fc1.id, class_detail_id: cd1.id)
