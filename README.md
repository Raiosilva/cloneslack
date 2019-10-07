# ChatCloneSlack

Create your team. Application designed in order to manage your teams..

## Getting Started

The instructions will provide a copy of the project to run on local machine.

### Prerequisites

You must have docker and docker-compose installed

```
For more information, please see https://docs.docker.com/install/ 
```

### Installing

After cloning the project, access the project folder in your terminal enter the following

```
$ docker-compose build
```

```
$ docker-compose run --rm website bundle install
```

```
$ docker-compose run --rm website bundle exec rails db:create db:migrate
```

Enter the following command to run the server.

```
$ docker-compose up
```

Open your browser and access localhost:3000

## Running the tests

To run the tests run the following in your terminal
OBS.: As the project is still under development many tests will go wrong. Feel free to help.
```
$ docker-compose run --rm website bundle exec rspec
```

## Built With

* Ruby on Rails
* PostgreSQL
* MaterializeCSS
* Redis
* MailCatcher
* Devise
* CoffeScript
* ...


## Author

* **Raimundo Oliveira** - *Initial work* [https://www.linkedin.com/in/raimundo-oliveira-2511543a/]

## Idealization

* On One Bit Code super full stack bootcamp.

## To be continued