# CRUD APP - Project 2 - The Dead Crypto Archives

## Summary

This second project deploys an full stack CRUD app via Heroku.
[To acces it, click here](https://young-eyrie-39795.herokuapp.com/). The Dead Crypro Archives aims to be a repository of terminated, abandoned or failed Crypto-currency projects. I also has a space for users to share their stories related to these projects. With a early 2000's flair, it's strong on security and safety.

### Key features

- Secure login through password hashing (Bcrypt)
- Parameterized database queries in PostgreSQL
- Three levels of access: guest, user (by sign up registered) and admin (cold setup)
- MVC design pater, clean and replicable.
- Profanity filter.

## Project description

Cryptocurrencies have seen an exponential growth in the last few years, reaching market caps of billions and exciting many with promises of quick money and financial independence. However, many projects have failed and have taken with them the financial prosperity and security of those who trusted and deposited their hard earn money. The most recent example (May 2022) was the dramatic fall of Terra LUNA and the "stablecoin" USD, which offered an anual 20% rate with their Anchor protocol, sweeping billions of dollars in just one day.

In lieu of this, it makes sense to gather these failing projects in an Archive, as well as giving the oportunity for investors and cryptocurrency users to share theirs stories, as a testimony of a these tumultuous events that will shape, for better or worse, the financial future of humanity.

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

### Step 3 - Make it better

1. Add APIs
2. Add interaction between SQL tables

### Step 4 - Make it nice

1. CSS

## Tech used

- Heroku for deployment, using Sinatra as a web framework
- Hashing algorithm: Bcrypt
- Back End: Ruby and PostgreSQL
- Front End: Javascript, CSS and HTML
- APIs: Coingecko and Purgomalum.

### Pending:

User profile, access to their own messages and capacity to edit them or delete them.

### pages to revisit (so I can close them in Chrome)

Important:
Password check
https://haveibeenpwned.com/API/v3

language
https://dovetailapp.com/blog/sentiment-analysis/
https://techwithsach.com/sentiment-analysis-using-google-cloud-natural-language-api/
https://www.upbuild.io/blog/google-cloud-natural-language-api/
https://www.geeksforgeeks.org/translation-and-natural-language-processing-using-google-cloud/
https://cloud.google.com/natural-language/docs/reference/libraries

CSS
https://www.w3schools.com/howto/howto_js_topnav.asp

https://www.w3schools.com/howto/tryit.asp?filename=tryhow_js_popup
https://www.w3schools.com/howto/tryit.asp?filename=tryhow_css_overlay
https://www.w3schools.com/howto/howto_css_overlay.asp
https://blog.stackfindover.com/html-popup-box/

email verif
https://mailtrap.docs.apiary.io/#
https://www.guerrillamail.com/GuerrillaMailAPI.html

stupid ones
https://icanhazdadjoke.com/api
