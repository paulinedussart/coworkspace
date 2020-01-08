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
Si les packages ne sont pas à jours
```bash
yarn install --check-files
```

Pour les mettre à jour
```bash
brew upgrade yarn
```

## Débuter le projet 

1. Récuperer le master à jour
```ruby
git pull origin master
```

2. Créer une branch 
```bash
git checkout -b name-of-the-branch
```

3.Changer de branch
```bash
git checkout name-of-the-branch
```

## Server in development 

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

## Push server in developpement

```bash
rails s
```

If you cannot open the local host with HTTP and server Puma suggest
tcp://0.0.0.0:3000

TRY 
http://127.0.0.1:3000
OR 
http://0.0.0.0:3000
OR
http://127.0.0.1:3000


## Push in production

1. Login
```bash
heroku login`
```

2. Push your code to Heroku
`git push heroku master`

3. Run a command on Heroku
`heroku run rake db:create`
`heroku run rake db:migrate`
`heroku run rake db:seed`

'Some useful commands'
```bash
heroku open         # open in your browser
heroku logs --tail  # show the app logs and keep listening
heroku run rails c
```
