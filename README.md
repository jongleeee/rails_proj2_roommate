Title: Roommate Split
Team Members: Deyi Li, Jong Yun Lee
Demo Link: https://limitless-spire-8677.herokuapp.com/ 


Idea: An web application where any roommates can post any relational payments, and users can see the payments that they made and they have to make. Possibly allowing users to pay in the website.


Models and Description:

User
  - has name 
  - has many payments and a house (relation)
  - authentication -> email and password

Payment
  - has name and amount($)
  - has category
  - has a house (relation)
  - restricted to users with the current house

House
  - has name
  - has many users (relation)
  - has many payments (relation)



Features:
  - Users can log in
  - Users can create Houses
  - Users can change Houses
  - Users can create a payment within a House
  - Users can view what they have to pay and what they have paid



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
