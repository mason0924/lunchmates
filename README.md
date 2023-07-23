# [Lunchmates](https://www.lunchmates.club)

## Introduction
Hi! During my school and work days, I always looked forward to my lunchtime as an opportunity to connect with others. Whether it was a long lunch break with my classmates between classes, or a quick lunch with my co-workers before heading back to work desk. I even went on lunch dates to get to know someone better before committing to a full date night. I realized that lunchtime often provided unique insights into a person's personality. Especially where nowadays our fast-paced lifestyles often make us hesitant to join any lengthy social interactions. This sparked the idea of connecting people through short lunches, offering a quick way to understand and learn about others without overwhelming commitments. Hence, the Lunchmates concept was born! In 2020, I had the honor of bringing this idea to life with the support of my team members at Le Wagon.

Lunchmates is a dynamic platform designed to foster meaningful connections among individuals through the joy of shared meals. Whether you find yourself seeking lunchtime companionship or eager to expand your social circle, Lunchmates provides an engaging and unique solution. Embrace the power of brief yet impactful interactions over food, and discover the joy of connecting with others on a deeper level. You know what they say, a conversation without food and drink is so DRY!

## Features
#### Non-registered Users
- View event photos, locations, and timings.

#### Registered Users
- Create a profile and upload a profile picture.
- Host a lunch event with the flexibility to choose the location, time, duration, and maximum number of participants.
- Upload photos of the lunch events they've attended.
- Leave comments on lunch event pages to share their experiences.
- Set up food preferences to help match with compatible lunch partners.
- Use the "Lucky" button to find a lunch event based on diet preferences.

## Demo
Check out our [demo video](https://youtu.be/IRZw53wuskU) to see Lunchmates app in action!

## Installation
Before installing Lunchmates, ensure you have the following dependencies:
- Node.js version 14 or above
- Ruby version 3.2.2

## Steps to Install
1. Clone the repository:
    `git clone https://github.com/mason0924/lunchmates.git`
      
2. Navigate to the project directory:
	`cd lunchmates`

3. Install required gems (Note: No specific gem versions are required):
	`bundle install`

4. Set up the database:
	`rails db:create db:migrate`

5. Start the server:
	`rails server`

6. Open your browser and visit:
  `http://localhost:3000`

## ENV
- create an .env file and enter the sceret keys for using MapBox and Cloudinary. For example: 
  ```bash
  CLOUDINARY_URL=cloudinary://xxxxxx
  MAPBOX_API_KEY=xxxxx

Now you're all set to use Lunchmates locally!

#### Optional deployment
- If you use Heroku, these are the steps after finished pushing:

  ```
  heroku run rails db:migrate  # Run pending migrations in production
  heroku run rails db:seed 
- Push secret keys to Heroku:
  ```
  heroku config:set CLOUDINARY_URL=cloudinary://xxxxxx
  heroku config:set MAPBOX_API_KEY=xxxxx

## Contributing

Lunchmates is an open-source project, and we welcome contributions from the community. If you'd like to contribute, follow these steps:

1. Fork the repository on GitHub.

2. Create a new branch with a descriptive name:
  `git checkout -b feature/your-feature-name`
  
3. Make your changes and commit them with clear commit messages.

4. Push your changes to your forked repository:
  `git push origin feature/your-feature-name`
  
5. Open a pull request to the original repository.

## Contributors
- Mana
- Azadeh
- Mattia
- WuiYang
- Le Wagon Teachers and TAs

Thank you to all the contributors who made Lunchmates possible!
