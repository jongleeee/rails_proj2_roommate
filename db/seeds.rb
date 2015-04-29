House.create! name:"Benvenue 2525"

User.create! name:"Jong Lee", email:"jong@admin.com", password:"password", house: House.find(1)
User.create! name:"Deyi Li", email:"deyi@admin.com", password:"password", house: House.find(1)



Payment.create! name:"Rent April 2015", amount:1000, house: House.find(1), category:"house"