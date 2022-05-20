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

--WHEN CREATING THE DATABASE, ADMIN USER SHOULD BE GIVEN ADMIN PROPERTY

INSERT INTO stories(user_posting_id, user_posting_name, crypto_id, date_created, story) VALUES('1', '1', 'test11', 20-05-2022,'I took a credit and lost a million AUD into this scam! It was terrible. But then I joined a GA SEI course and my future is brighter!');

INSERT INTO cryptos(name, acronym, year_created, year_ended, country, project_type, extra_info) VALUES('OneCoin', 'ONE', 2014, 2017, 'Bulgaria', 'Ponzi Scam', 'OneCoin was one of the early crypto frauds. Its founder, the self-named CryptoQueen, Ruja Ignatova, hosted glitzy events across the world, including one in the U.K. Wembley Arena. There, she touted OneCoin as a Bitcoin Killer. Millions of investors would later end up defrauded in what turned out to be a $4 billion Ponzi scheme that used money from new investors to pay returns to the existing ones. Ignatova disappeared in 2017 when the net was finally closing in and police had filed a warrant for her arrest.');