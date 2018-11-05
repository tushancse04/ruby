# TravelBuddy
A web application for travel event management.

Demo: https://travel-with-buddy.herokuapp.com/

Currently this has two branch: 

- master : deployment branch (Use postgresql as database).
- development-04162017: development branch (use sqlite as database).


## Development branch:
### How to run the application locally. (in vagrant)
- vagrant up 
- vagrant ssh
- clone https://github.com/memphis-comp7012/TravelBuddy.git
- bundle install.
- delete .sql file in db directetory.
- rails db:migrate db:seed.
- sudo apt install imagemagick (for image upload resize it requires a c program.)
- rails s -b 0.0.0.0
- go to web browser localhost:3000

## Deployment branch:
### How to run the application locally. (in vagrant)
For the first time. 

- step - 1: bundle install
- this will fail.
- step -2 : sudo apt-get install postgresql-9.3
- step -3 : sudo apt-get install libpq-dev
- step -4 : sudo find / -name "pg_config"
- step -5 : gem install pg -- --with-pg-config=/usr/bin/pg_config

- step -6 : bundle install
- step -7 :sudo -u postgres createuser vagrant -s

### Now go to project directory. 
- rails db:create
- rails db:migrate db:seed
- rails s -b 0.0.0.0

### if this doesnot work then 
- step -8 : $ sudo -u postgres -i

- step -9 : postgres@host:~$ psql
- step -10 : In there: postgres=# ALTER USER vagrant CREATEDB;


Again, go to project directory
- rails db:create
- rails db:migrate db:seed
- rails s -b 0.0.0.0


##At forked branch: 
After every commit -> push -> pull request -> merge, do the following: [to avoid commit behind]
- 1. Add remote from original repository in your forked repository:

- git remote add upstream git://github.com/ORIGINAL-DEV-USERNAME/REPO-YOU-FORKED-FROM.git
- git fetch upstream
- 2. Updating your fork from original repo to keep up with their changes:
- git pull upstream master
