![](https://img.shields.io/badge/Microverse-blueviolet)

# FITNESS APP(RAILS BACKEND)

This is a rails api for a fitness app where users actions are saved to the database upon interaction with the apllication.
- You can check the frontend app [here](https://fitness-tips.herokuapp.com/)
- See the React frontend Repo [here](https://github.com/ZawadiSumba66/fitness-frontend) 

## Features 
- The database has 3 tables User,Tips and Favourite
- User table has username and using Devise for authentication
- Tip table has title, description, instructions and benefits 
- Favorite belongs to Tip and User tables
- Tips and Favourites can be seen only by authorized users
- To authorize users, this app uses JWT and  Devise
- For cross site policy Rack-cors was used  

## Built With

- Ruby 
- Ruby on Rails
- PostgreSQL
- AWS

## Getting Started

To get a local copy up and running follow these steps.

1. Clone the repo `https://github.com/ZawadiSumba66/stock-catalogue.git`

    - cd into `rails-backend`
    - Run `git pull origin rails-backend`

2. run `bundle install` to install gems in the Gemfile

3. run `rails s` to start the app in the `localhost:3000`, this will start the app in a new browser tab.

4. run `rspec` to run all the test suites.

## AUTHOR

**ROSE SUMBA**

- Github: [![](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/ZawadiSumba66)
- Linkedin: [![](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/rosesumba/)


## Acknowledgements 🚀

- MICROVERSE FOR THEIR SUPPORT THROUGH THIS WHOLE PROJECT

## Show your support

Give a ⭐️ if you like this project!

## License :memo:
Released under [MIT](license) License
