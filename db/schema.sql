CREATE DATABASE crud_app;

\c crud_app

CREATE TABLE cryptos(
  id SERIAL PRIMARY KEY,
  name TEXT,
  acronym TEXT,
  year_created REAL,
  year_ended REAL,
  country TEXT,
  project_type TEXT,
  extra_info TEXT,
  current_user_id TEXT
);

CREATE TABLE users(
  id SERIAL PRIMARY KEY,
  name TEXT,
  email TEXT,
  password_digest TEXT,
  user_role TEXT
);

CREATE TABLE stories(
  id SERIAL PRIMARY KEY,
  user_posting_id TEXT,
  user_posting_name TEXT,
  crypto_id TEXT,
  date_created TEXT,
  story TEXT
);

CREATE TABLE messages(
  id SERIAL PRIMARY KEY,
  name TEXT,
  email TEXT,
  message TEXT
);

--WHEN CREATING THE DATABASE, ADMIN USER SHOULD BE GIVEN ADMIN PROPERTY. 
--0. Purge the users TABLE
--1. Create a new user through ' Sign in '. This will give it 'user' rights
--2. Run this code
UPDATE users
SET user_role = 'admin'
WHERE id=1;
--3. Enjoy the app!

--Dummy data
INSERT INTO stories(user_posting_id, user_posting_name, crypto_id, date_created, story) VALUES('1', '1', 'admin', 20-05-2022,'I took a credit and lost a million AUD into this scam! It was terrible. But now I recovered thanks to USD and LUNA');

INSERT INTO cryptos(name, acronym, year_created, year_ended, country, project_type, extra_info) VALUES('OneCoin', 'ONE', 2014, 2017, 'Bulgaria', 'Ponzi Scam', 'OneCoin was one of the early crypto frauds. Its founder, the self-named CryptoQueen, Ruja Ignatova, hosted glitzy events across the world, including one in the U.K. Wembley Arena. There, she touted OneCoin as a Bitcoin Killer. Millions of investors would later end up defrauded in what turned out to be a $4 billion Ponzi scheme that used money from new investors to pay returns to the existing ones. Ignatova disappeared in 2017 when the net was finally closing in and police had filed a warrant for her arrest. Source: https://www.fool.com/the-ascent/cryptocurrency/articles/5-cryptocurrencies-that-have-failed-and-why/');

INSERT INTO cryptos(name, acronym, year_created, year_ended, country, project_type, extra_info) VALUES('DAO', 'DAO', 2016, 2016, 'Decentralized', 'Decentralized Smart Contracts', ' The Decentralized Autonomous Organization — crypto-anarchists and Bitcoinists dreamed about it for years, and Ethereum finally made it reality. People were so excited about it that they purchased DAO tokens by the truckload. The DAO token sale quickly made this project the largest crowdfund in history, bringing in over $168 million USD. This success translated into market activity once the coin got listed on exchanges. At its peak, according to CoinGecko, the DAO token reached a price of 0.19 USD. On June 18, an attacker exploited a vulnerability in the DAO smart contract, resulting in a loss exceeding $50 million USD. Once news of the attack circulated, traders dumped the DAO token, sending its price spiraling downwards. Source: https://bitcoinist.com/cryptocurrency-failures-all-time/ ');