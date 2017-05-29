# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


store1 = Store.create(name: 'mimi', location: 'nairobi',
                  website: 'www.mimi.com',
                  remote_logo_url: 'https://res.cloudinary.com/dazy8mpa6/image/upload/v1494612582/itfdqbksxiqff4avh1oy.png')

category1 = Category.create(name: 'clothing')
category2 = Category.create(name: 'shoes')
category3 = Category.create(name: 'beauty')
category4 = Category.create(name: 'accessories')
quiz1 = Quiz.create(title: 'Guest Lecture Demo quiz')

question1 = Style.create(quiz: quiz1, question: 'What look as seen on Sharon Mundia best describes your style?')
choice1 = Choice.create(style: question1, tags: 'office smart work', label: 'Label 1', remote_image_url: 'https://res.cloudinary.com/dazy8mpa6/image/upload/v1496047915/smart_fvaasb.jpg')
choice2 = Choice.create(style: question1, tags: 'date night gown dress classy stilleto dark', label: 'Label 2', remote_image_url: 'https://res.cloudinary.com/dazy8mpa6/image/upload/v1496046549/fpsybhs7uhok3muscydr.png')
choice3 = Choice.create(style: question1, tags: 'casual laid back simple jeans canvas dark', label: 'Label 3', remote_image_url: 'https://res.cloudinary.com/dazy8mpa6/image/upload/v1495727168/rihanna1_yntudq.jpg')
choice4 = Choice.create(style: question1, tags: 'cultural african short denim prints', label: 'Label 4', remote_image_url: 'https://res.cloudinary.com/dazy8mpa6/image/upload/v1495727169/rihanna3_mnzstl.jpg')
choice23 = Choice.create(style: question1, tags: 'office smart work', label: 'Label 23', remote_image_url: 'https://res.cloudinary.com/dazy8mpa6/image/upload/v1496046137/byudiq1y3bviracwmcor.png')
choice24 = Choice.create(style: question1, tags: 'short summer fancy', label: 'Label ', remote_image_url: 'https://res.cloudinary.com/dazy8mpa6/image/upload/v1496046135/efga166hetjk7byiqy2l.png')

question2 = Style.create(quiz: quiz1, question: 'Which of these looks would you pull for a busy day at work?')
choice5 = Choice.create(style: question2, tags: 'pruple grey sweater', label: 'Label 5', remote_image_url: 'https://res.cloudinary.com/dazy8mpa6/image/upload/v1494768838/l6mu40twsezx4blyp0sm.png')
choice6 = Choice.create(style: question2, tags: 'red bidy hugging tight', label: 'Label 6', remote_image_url: 'https://res.cloudinary.com/dazy8mpa6/image/upload/v1494768838/l6mu40twsezx4blyp0sm.png')
choice7 = Choice.create(style: question2, tags: 'green boots', label: 'Label 7', remote_image_url: 'https://res.cloudinary.com/dazy8mpa6/image/upload/v1494768795/awlffuyt9fhckaskvqoy.png')
choice8 = Choice.create(style: question2, tags: 'orange pullneck jeans black', label: 'Label 8', remote_image_url: 'https://res.cloudinary.com/dazy8mpa6/image/upload/v1495727201/s4_wu2nuw.jpg')
choice9 = Choice.create(style: question2, tags: 'waterfall rugged jeans black', label: 'Label 9', remote_image_url: 'https://res.cloudinary.com/dazy8mpa6/image/upload/v1495727201/s5_jdz23q.jpg')
choice10 = Choice.create(style: question2, tags: 'red skater dress pumps', label: 'Label 9', remote_image_url: 'https://res.cloudinary.com/dazy8mpa6/image/upload/v1495727201/s6_a6ju5t.jpg')

question3 = Style.create(quiz: quiz1, question: 'Which fashion blogger best describes your style')
choice11 = Choice.create(style: question3, tags: 'black leather skirt', label: 'Label11 ', remote_image_url: 'https://res.cloudinary.com/dazy8mpa6/image/upload/v1495562745/diana_hbu36d.jpg')
choice12 = Choice.create(style: question3, tags: 'jeans rugged jeans denim', label: 'Label 12', remote_image_url: 'https://res.cloudinary.com/dazy8mpa6/image/upload/v1495562745/nancie_ojpv6c.jpg')
choice13 = Choice.create(style: question3, tags: 'office jumpsuit black red blazer', label: 'Label 13', remote_image_url: 'https://res.cloudinary.com/dazy8mpa6/image/upload/v1495562745/lucia_utysdb.jpg')
choice14 = Choice.create(style: question3, tags: 'boots white dress', label: 'Label 14', remote_image_url: 'https://res.cloudinary.com/dazy8mpa6/image/upload/v1495562745/joy_lcs88e.jpg')
choice15 = Choice.create(style: question3, tags: 'maroon monochrome', label: 'Label 15', remote_image_url: 'https://res.cloudinary.com/dazy8mpa6/image/upload/v1495562745/silvia_ppzah9.jpg')
choice16 = Choice.create(style: question3, tags: 'gown date navy blue dress', label: 'Label 16', remote_image_url: 'https://res.cloudinary.com/dazy8mpa6/image/upload/v1495562745/gown_cb95ca.jpg')

question4 = Style.create(quiz: quiz1, question: 'Its time to update your shoe closet What type of shoes do you instinctively look for?')
choice17 = Choice.create(style: question4, tags: 'stilleto open shoes straps white classy', label: 'Label 17', remote_image_url: 'https://res.cloudinary.com/dazy8mpa6/image/upload/v1496042558/stilleto_qegraj.jpg')
choice18 = Choice.create(style: question4, tags: 'pumps gold office', label: 'Label 18', remote_image_url: 'https://res.cloudinary.com/dazy8mpa6/image/upload/v1495562616/pumps_cwbk3u.jpg')
choice19 = Choice.create(style: question4, tags: 'boots black', label: 'Label 19', remote_image_url: 'https://res.cloudinary.com/dazy8mpa6/image/upload/v1495562661/boots_qvm0ag.jpg')
choice20 = Choice.create(style: question4, tags: 'canvas white casual', label: 'Label 20', remote_image_url: 'https://res.cloudinary.com/dazy8mpa6/image/upload/v1495562662/canvas_ubvcmf.jpg')
choice21 = Choice.create(style: question4, tags: 'ballerina flats', label: 'Label 21', remote_image_url: 'https://res.cloudinary.com/dazy8mpa6/image/upload/v1495562662/flats_tqmakg.jpg')
choice22 = Choice.create(style: question4, tags: 'open sandals flat white', label: 'Label 22', remote_image_url: 'https://res.cloudinary.com/dazy8mpa6/image/upload/v1495562662/sandals_ckz0la.jpg')

# choice22 = Choice.create(style: question4, tags: '', label: 'Label ', remote_image_url: '')


user1 = User.create(name: 'Mercy Kinoti', email: 'mkk@gmail.com')
user2 = User.create(name: 'well octavia', email: 'octavia@gmail.com')

answer = Answer.create(user: user1, style: question1, choices: [choice1, choice2, choice3])
answer1 = Answer.create(user: user2, style: question1, choices: [choice3, choice4])

answer = Answer.create(user: user1, style: question2, choices: [choice5, choice6])
answer2 = Answer.create(user: user2, style: question2, choices: [choice7, choice8])

product1 = Product.create(name: 'Red summer dress', tags: 'casual chique red', store: store1,
                          price: 100.80, description: 'a long ball gown with flarred', remote_image_url: 'https://res.cloudinary.com/dazy8mpa6/image/upload/v1495727236/vivo_zsm2ce.jpg')
product2 = Product.create(name: 'Black ball gown', tags: 'chique classy evening', price: 120.99,
    description: 'a strappy summer dress that will change your life', remote_image_url: 'https://res.cloudinary.com/dazy8mpa6/image/upload/v1494607755/icw88jbcdqwvhnx3slhu.png', store: store1)
product3 = Product.create(name: 'yellow denim shorts', tags: 'casual beach', remote_image_url: 'https://res.cloudinary.com/dazy8mpa6/image/upload/v1495562745/joy_lcs88e.jpg',
                          price: 20, description: 'a nice looking denim short with ragged and dirty', store: store1)
