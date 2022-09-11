# CRUD APP - Project 2 - The Dead Crypto Archives

## Summary

This second project deploys an full stack CRUD app via Heroku.
[To acces it, click here](https://deadcryptos.herokuapp.com/). The Dead Crypro Archives aims to be a repository of terminated, abandoned or failed Crypto-currency projects. I also has a space for users to share their stories related to these projects. With a early 2000's flair, it's strong on security and safety.

### Key features

- Full-stack CRUD app.
- Secure login through password hashing (Bcrypt).
- ReCaptcha and password confirmation
- Parameterized database queries in PostgreSQL.
- Three levels of access: guest, user (by sign up registered) and admin (cold setup).
- MVC design pattern, clean, replicable and responsive.
- Contact us form with secure data transfer via SendGrid
- APIs: Coingecko for realtime BTC price and Purgomalum as profanity filter for posts.

## Project description

Cryptocurrencies have seen an exponential growth in the last few years, reaching market caps of billions and exciting many with promises of quick money and financial independence. However, many projects have failed and have taken with them the financial prosperity and security of those who trusted and deposited their hard earn money. The most recent example (May 2022) was the dramatic fall of Terra LUNA and the "stablecoin" USD, which offered an anual 20% rate with their Anchor protocol, sweeping billions of dollars in just one day.

In lieu of this, it makes sense to gather these failing projects in an Archive, as well as giving the oportunity for investors and cryptocurrency users to share theirs stories, as a testimony of a these tumultuous events that will shape, for better or worse, the financial future of humanity.

## How to build - Instructions (MAC OS)

This app was build using Sinatra as framework and Ruby as a BackEnd programming language and postgreSQL as database.

0. Install postgreSQL - Type:

- brew update
- brew install postgresql
- brew services start postgresql
- psql postgres
- CREATE ROLE insert_username;
- ALTER ROLE insert_username CREATEDB;
- CREATE DATABASE insert_username;
- \q

1. Ruby and Sinatra:
   a. It first requires to install rvm and then these two gems:

- sinatra
- sinatra_generator

Then, run: "sinatra new app_name -va" to produce the sinatra application within the folder where you want to store the project

Install "gem install bundler"

Overall, it uses the following Gems (you should have a Gemfile):

- sinatra
- sinatra_generator
- pg
- bcrypt
- httparty
- pry
- rerun
- puma
- recaptcha
- sendgrid-ruby

Once the Gems are loaded on the Gemfile, run 'bundle' in the terminal within the appropiate folder to download and lock the gems

- Note: I am using erb files. If you are using VSCode, add the following in the setting:
  "emmet.includeLanguages": {
  "erb": "html"
  }

To run the server locally: run main.rb

3. To deploy to Heroku:

- Install Heroku (for MAC): brew install heroku
- Create a Heroku account
- PG.connect line should be changed to:
  "PG.connect(ENV['DATABASE_URL'] || {dbname: 'database_name'})"
- REMEMBER TO HAVE ENVIRONMENT VARIABLES IN YOUR CODE
- After installing, run in the terminal: heroku login
- Create heroku app: heroku create
- Deploy app: git push heroku master

4. Database config

- Deploy your database (remember to change "local_database_name" to your actual database name e.g. "goodfoodhunting"): heroku pg:push local_database_name DATABASE_URL

- If you get an error saying you don't have a database on production, run: heroku addons:create heroku-postgresql:hobby-dev

## User stories

Jack X., a middle age tradie from inner New South Wales, got an exciting email: "Become millionare in only 2 months". He went to his daughter's shiny MacBook Pro and typed in Google: "OneCoin"... 6 million results, thousands of testimonies and photos filled with paradisiac beaches and Lamborghinis. Jack got excited, thinking: "No more sausage rolls for brunch!". He even put an ad for selling his truck. He was ready to invest all his self-managed super.
In this lusftul, greedy frenesi, the algorithm took his side and showed him a site called "The Dead Crypto Archives", citing this OneCoin. Suddenly, Jacks pituitary gland activated.. he clicked, signed up, and discovered the scam. Not only he could read about the downfall of that Ponzi-scheme, but he also read about so many others that fell in the trap. Jack X. was happy that, beyond all those fake promises, there was still truthful information out there that would help him take better decisions regarding his financial future, and happy that there was a site in which he could write his story, the one you have just read.

## Plan

### Step 1

1. Get an idea to work on. Plan what I want the app to have in terms of Wireframe, data, API and functionalities.

2. Create the project files locally: erb files, database and which APIs are feasible at this stage.

3. Deploy to Heroku, to be certain that that the basics work and so that I can build from there.

### Step 2 - Make it work

1. Start with the homepage and the login logic. There will be three levels of access:
   i. The guest
   ii. The registered user
   iii. The admin

2. Start with the pages flow logic
   i. Crypto pages dynamics
   ii. Users dynamics
   iii. Stories dynamics

### Step 3 - Make it better

1. Add APIs
2. Add interaction between SQL tables

### Step 4 - Make it nice

1. CSS

### SQL Database relationship diagram

![Database relationship diagram](/public/images/diagram.png)

## Tech used

- Heroku for deployment, using Sinatra as a web framework
- Hashing algorithm: Bcrypt
- Back End: Ruby and PostgreSQL
- Front End: Javascript, CSS and HTML
- APIs: Coingecko and Purgomalum.
- reCaptcha and SendGrid

## Conclusions & Pendings:

### Conclusions:

I had considerable time constrains for this project, and taking into account that there were a number of technologies I haven't used before, I knew that I had to keep the idea simple to focus on delivering a MVP on the due date. With an unusual lack of good ideas, I rehused as wireframe a little and very basic project I started a few weeks before, just to practice the building of a Sinatra CRUD app. After some polishing, I started with the login logic and with that the challenges of setting up a full-stack app for the first time, in no time. While the app itself is very simple, it has many little features that I am proud to have pulled through. As such, it serves me as a starting point for further developments, under the DRS principle. The main difficulties were adapting to different styles of documentation and working out a solution fit for the project.

#### Specific things I learned:

- How to operate with SQL tables, retrieving different results and returning values for instant consideration of the site, specially in the login fase.
- Everything is in Google as long as you already know what you are looking for.

### Pendings:

- User profiles
- Access to their own messages and capacity to edit them or delete them.
- Like and comment individual stories.
- Sorting of SQL data
- Forgot password functionality
- Implementation of "haveibeenpwned" and email verification via mailtrap

## Credits and Licenses

A big shout out to all those who reply to the ignorant and sacrifice their time in the pursue of knowledge, for I have considerably fed from their posts.

This app was created for educational purposes as Project 2 for the GA Software Engineer Immersive course, cohort #53 (2022), under the <a target="_blank" href="https://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License.
