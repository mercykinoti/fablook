# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


store1 = Store.create(name: 'mimi.com', location: 'nairobi',
                  website: 'www.mimi.com',
                  remote_logo_url: 'http://res.cloudinary.com/dazy8mpa6/image/upload/v1494612582/itfdqbksxiqff4avh1oy.png')

quiz1 = Quiz.create(title: 'Guest Lecture Demo quiz')

question1 = Style.create(quiz: quiz1, question: 'What look as seen on Sharon Mundia best describes your style?')
choice1 = Choice.create(style: question1, tags: 'black leather skirt', label: 'Label 1', remote_image_url: 'http://res.cloudinary.com/dazy8mpa6/image/upload/v1495727163/rihanna6_o5lkxz.jpg')
choice2 = Choice.create(style: question1, tags: 'pumps gold office', label: 'Label 2', remote_image_url: 'http://res.cloudinary.com/dazy8mpa6/image/upload/v1495727169/rihanna5_jooakf.jpg')
choice3 = Choice.create(style: question1, tags: 'stiletto white strap classy', label: 'Label 3', remote_image_url: 'http://res.cloudinary.com/dazy8mpa6/image/upload/v1495727168/rihanna1_yntudq.jpg')
choice4 = Choice.create(style: question1, tags: 'canvas white casual', label: 'Label 4', remote_image_url: 'http://res.cloudinary.com/dazy8mpa6/image/upload/v1495727169/rihanna3_mnzstl.jpg')


question2 = Style.create(quiz: quiz1, question: 'Which of these looks would you pull for a busy day at work?')
choice5 = Choice.create(style: question2, tags: 'blue cashmere blouse', label: 'Label 5', remote_image_url: 'http://res.cloudinary.com/dazy8mpa6/image/upload/v1494768838/l6mu40twsezx4blyp0sm.png')
choice6 = Choice.create(style: question2, tags: 'booties crocodile-skin party', label: 'Label 6', remote_image_url: 'http://res.cloudinary.com/dazy8mpa6/image/upload/v1494768838/l6mu40twsezx4blyp0sm.png')
choice7 = Choice.create(style: question2, tags: 'gown white bare-back', label: 'Label 7', remote_image_url: 'http://res.cloudinary.com/dazy8mpa6/image/upload/v1494768795/awlffuyt9fhckaskvqoy.png')
choice8 = Choice.create(style: question2, tags: 'slacks', label: 'Label 8', remote_image_url: 'http://res.cloudinary.com/dazy8mpa6/image/upload/v1494768889/weyppmkqdlbjy5c3lwwh.png')

user1 = User.create(name: 'Mercy Kinoti', email: 'mkk@gmail.com')
user2 = User.create(name: 'well octavia', email: 'octavia@gmail.com')

answer = Answer.create(user: user1, style: question1, choices: [choice1, choice2, choice3])
answer1 = Answer.create(user: user2, style: question1, choices: [choice3, choice4])

answer = Answer.create(user: user1, style: question2, choices: [choice5, choice6])
answer2 = Answer.create(user: user2, style: question2, choices: [choice7, choice8])

product1 = Product.create(name: 'Red summer dress', tags: 'casual chique red', store: store1,
                          price: 100.80, description: 'a long ball gown with flarred', remote_image_url: 'http://res.cloudinary.com/dazy8mpa6/image/upload/v1495727236/vivo_zsm2ce.jpg')
product2 = Product.create(name: 'Black ball gown', tags: 'chique classy evening', price: 120.99,
    description: 'a strappy summer dress that will change your life', remote_image_url: 'http://res.cloudinary.com/dazy8mpa6/image/upload/v1494607755/icw88jbcdqwvhnx3slhu.png', store: store1)
product3 = Product.create(name: 'yellow denim shorts', tags: 'casual beach', remote_image_url: 'http://res.cloudinary.com/dazy8mpa6/image/upload/v1495562745/joy_lcs88e.jpg',
                          price: 20, description: 'a nice looking denim short with ragged and dirty', store: store1)
