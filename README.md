Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.


# COWORKSPACE 
Is a website to book a desk in a coworkspace and allow the coworkspace to manage theirs desks


## Installation of all the dependencies 

For the Gemfile
```bash
bundle install
```

For packages.json
```bash
yarn install
```

If packages are not updates
```bash
yarn install --check-files
```

To update them
```bash
brew upgrade yarn
```

## Débuter le projet 

To get the new master with updates
```ruby
git pull origin master
```

Create a branch 
```bash
git checkout -b name-of-the-branch
```

Change of branch
```bash
git checkout name-of-the-branch
```

## Server Puma in development 

To delete the DB
```bash
rails db:drop
```

To re create the DB
```bash
rails db:create
```

To play the migration 
```bash
rails db:migrate
```

To play the seeds
```bash
rails db:seed
```

## Push server in developpement

```bash
rails s
```

If you cannot open the local host with HTTP and server Puma suggest
tcp://0.0.0.0:3000

```bash
TRY 
http://127.0.0.1:3000
OR 
http://0.0.0.0:3000
OR
http://127.0.0.1:3000
```

## Push in production

Login
```bash
heroku login`
```

Push your code to Heroku
```bash
git push heroku master
```

Run a command on Heroku
```bash
heroku run rake db:create
heroku run rake db:migrate
heroku run rake db:seed
```

'Some useful commands'
```bash
heroku open         # open in your browser
heroku logs --tail  # show the app logs and keep listening
heroku run rails c
```
