Title: Roommate Split
Team Members: Deyi Li, Jong Yun Lee
Demo Link:


Idea: An web application where any roommates can post any relational payments, and users can see the payments that they made and they have to make. Possibly allowing users to pay in the website.


Models and Description:

User
  - has name 
  - has many payments and houses (relation)
  - authentication -> email and password

Payment
  - has name and amount($)
  - has many users (relation)
  - restricted to users with the current house

House
  - has name
  - has many users (relation)



Features:
  - Users can log in
  - Users can create Houses
  - Users can leave Houses
  - Users can invite other Users to a House with other Users' emails
  - Users can create a payment within a House
  - A User can tag users to a payment
  - A User can edit payment



Divison of Labor:
  Deyi: User, House and Views
  Jong: Payment, Controllers and Heroku


Gem:
  annotate  - layout for models ( introduced in class )
  devise    - user authentication ( introduced in class )
  cancancan - user authorization
  stripe    - payment
  heroku    - deploy
  thin      - robust server
