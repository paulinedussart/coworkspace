Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.


# COWORKSPACE 
Is a website to book a desk in a coworkspace and allow the coworkspace to manage theirs desks


## Installation 
1. To install all the dependencies 

For the Gemfile

```bash
bundle install
```

For packages.json
```bash
yarn install
```
Si les packages ne sont pas à jours
```bash
yarn install --check-files
```

Pour les mettre à jour
```bash
brew upgrade yarn
```


2. To delete the DB
```bash
rails db:drop
```

3. To re create the DB
```bash
rails db:create
```

4. To plya the migration 
```bash
rails db:migrate
```

5. To play the seeds
```bash
rails db:seed
```



## Débuter le projet 

1. Récuperer le master à jour
```ruby
git pull origin master
```

## TO PUSH DEVELOPEMENT CHANGE IN PRODUCTION

1. Login
```bash
heroku login`
```

Let’s deploy!

a) Push your code to Heroku
`git push heroku master`

b) Run a command on Heroku
`heroku run rails/rake db:create`
`heroku run rails/rake db:migrate`
`heroku run rails/rake db:seed`

'Some useful commands'
```bash
heroku open         # open in your browser
heroku logs --tail  # show the app logs and keep listening
heroku run rails c
```
