# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Homepageimage.create(name:"homepage.jpg", project_id:1)
Homepageimage.create(name:"homepage1.jpg", project_id:2)
Homepageimage.create(name:"homepage2.jpg", project_id:3)
Homepageimage.create(name:"homepage3.jpg", project_id:3)
Homepageimage.create(name:"homepage4.jpg", project_id:5)
Homepageimage.create(name:"homepage5.jpg", project_id:4)
Homepageimage.create(name:"homepage6.jpg", project_id:4)
Homepageimage.create(name:"homepage7.jpg", project_id:4)

Project.create(title:"Yuan&Chen")
Project.create(title:"duoduo's engagement photo")
Project.create(title:"Dao master")
Project.create(title:'Lain&daniel', lat: '40.7127', lng: '-74.0059')
Project.create(title:'Invitation card for Di Hu&Fan Yang', content:'We are invited to design a invitation card for their wedding. The client brought us a lot of good ideas which result in this beautiful traditional Chinese style card. It embody the door to a new stage of life they are going to enter together.')
Project.create(title:"Looking for love Season 1 Ep01", videolink: "https://youtu.be/Gr6zMHuY818")


Image.create(name:'project1_01', project_id:1)
Image.create(name:'project1_05', project_id:1)
Image.create(name:'project1_04', project_id:1)
Image.create(name:'project1_03', project_id:1)
Image.create(name:'project1_02', project_id:1)
Image.create(name:'project2_05', project_id:2)
Image.create(name:'project2_04', project_id:2)
Image.create(name:'project2_03', project_id:2)
Image.create(name:'project2_02', project_id:2)
Image.create(name:'project2_01', project_id:2)
Image.create(name:'project3_01', project_id:3)
Image.create(name:'project3_02', project_id:3)
Image.create(name:'project3_03', project_id:3)
Image.create(name:'project3_04', project_id:3)
Image.create(name:'project3_05', project_id:3)
Image.create(name:'project4_08', project_id:4)
Image.create(name:'project4_09', project_id:4)
Image.create(name:'project4_10', project_id:4)
Image.create(name:'project4_07', project_id:4)
Image.create(name:'project4_11', project_id:4)
Image.create(name:'project4_12', project_id:4)
Image.create(name:'project4_06', project_id:4)
Image.create(name:'project4_05', project_id:4)
Image.create(name:'project4_04', project_id:4)
Image.create(name:'project4_03', project_id:4)
Image.create(name:'project4_02', project_id:4)
Image.create(name:'project4_01', project_id:4)
Image.create(name:'project5_01', project_id:5)
Image.create(name:'project5_02', project_id:5)
Image.create(name:'project5_03', project_id:5)
Image.create(name:'project5_04', project_id:5)
Image.create(name:'project5_05', project_id:5)
Image.create(name:'project5_06', project_id:6)

Blog.create(title:"new blog1", content:"new blog content", user_id:1)
Blog.create(title:"new blog2", content:"new blog content2", user_id:1)

User.create(email:"cxy1122334455@gmail.com", name:"tina", id:1, admin: true)
User.create(email:"jrolfe@gmail.com", name:"john", id:2, admin: false)








