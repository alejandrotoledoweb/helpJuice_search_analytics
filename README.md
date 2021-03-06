# HelpJuice Search-Analytics challenge project 

this project was part of a challenge from HelpJuice Company.
The features of the project is to build a search application for Articles where you can see the search trends from other users.

# Features

## Realtime validation

When you start typing for a search the first filter for the search works in real time without clicking the "Create Search" button. The validation work according to the validation of the Search Model.

## Displaying all the Searches

The searches are displayed on the root page. The second filter works with the elasticsearch database. Taking the questions or sentences filter by the complete questions method in the searchable.rb file coming from the elasticsearch Model methods.

## Images

![screenshot](app/assets/images/search_errors.png)

## Built and tested With

- Ruby 2.7.2
- Ruby on Rails 6.1.4.1
- Rspec
- Postgres: >=9.5

## Live demo link

Visit the live demo [link](https://helpjuice-app.herokuapp.com/)

## Setup

Download the repo with this command

`git clone git@github.com:alejandrotoledoweb/helpJuice_search_analytics.git`

`cd helpJuice_search_analytics`

`git checkout feature-app` 

Install the Gems and Dependencies

`bundle install`

Migrate the database and models

`rails db:create`
`rails db:migrate`
`rails db:seed`

## For the usage

Run the server

`rails server`

Open in the browser `http://localhost:3001/`

## Run the test 

Run this command

`bundle exec rspec`

## Author

👤 **Alejandro Toledo**

- GitHub: [@alejandrotoledoweb](https://github.com/alejandrotoledoweb)
- Twitter: [@alejot](https://twitter.com/alejot) 
- LinkedIn: [Alejandro Toledo](https://www.linkedin.com/in/alejandro-toledo-3b444b109/) 

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https://github.com/alejandrotoledoweb/helpJuice_search_analytics/issues).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments


- Project inspired and challenged by HelpJuice.

## 📝 License

This project is [MIT](https://opensource.org/licenses/MIT) licensed.

