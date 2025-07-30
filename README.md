# README

### Dev to Dev Thoughts:
> Hi there, if Tohorie is reading this, you can contact me, you don't have to worry about the readme file, if this is another dev looking to improve the code, I want to start by saying sorry... I didn't allocate time to plan out the structure and it led to me having code everywhere, especially with the CSS, as it's all vanilla CSS. I also went back to improve on the initial design, which led to the technical dept increase.  

> Im using Ruby on Rails 8.1 with PostgreSQL and Google Buckets for storing images 

> The main components of the Repo are:
- `User Devise` Model that includes all personal information
- `Car Model` that is used for the cars for Sell
- `Image Model` that stores the url links for the images that are stored in Google Buckets 

## Accounts: 
> I would be sending an email under the subject line "ExoticEuro signoff" that would have all the project-related accounts information:
- Domain: Godaddy
- Server Hosting: Heroku
- Gmail: exoticeuro1@gmail.com
- DataBase: Heroku PostgreSQL plugin
- Image Database: Google Buckets

## File Organization: 
1. Controllers:
- Index controller takes care of the main page 
- Dashboard controller takes care of the CRUD functions
- Pages controller has all other pages as i saw no reason to expand the scope of the backend for this small project 

2. CSS:
- I tryed keeping every section of the website in its own css file but there would missmatch on some parts as well as some CSS living native on the html page as i kept editing and versiing the look of the side 
