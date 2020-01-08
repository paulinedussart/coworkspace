Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.


**COWORKSPACE** 

CHECK YARN PACKAGES
`yarn install --check-files`
`brew upgrade yarn`

1. To install all the dependencies 
`Bundle install`

2. To delete the DB
`rails db:drop`

3. To re create the DB
`rails db:create`

4. To plya the migration 
`rails db:migrate`

5. To play the seeds
`rails db:seed`


TO PUSH DEVELOPEMENT CHANGE IN PRODUCTION

1. Login
`heroku login`

Let’s deploy!

a) Push your code to Heroku
`git push heroku master`

b) Run a command on Heroku
`heroku run rails/rake db:create`
`heroku run rails/rake db:migrate`
`heroku run rails/rake db:seed`

'Some useful commands'
`heroku open`         # open in your browser
`heroku logs --tail`  # show the app logs and keep listening
`heroku run rails c`
