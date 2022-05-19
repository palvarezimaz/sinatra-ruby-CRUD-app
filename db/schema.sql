CREATE DATABASE crud_app;

\c crud_app

CREATE TABLE elements(
  id SERIAL PRIMARY KEY,
  name TEXT,
  acronym TEXT,
  logo_url TEXT,
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

INSERT INTO elements(name, acronym, logo_url, year_created, year_ended, country, project_type, extra_info) VALUES('OneCoin', 'ONE', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fyt3.ggpht.com%2Fa%2FAATXAJypkxrXl286sa3uFGKWLuOdA0xQHe5K3rx3Dw%3Ds900-c-k-c0xffffffff-no-rj-mo&f=1&nofb=1', 2014, 2017, 'Bulgaria', 'Ponzi Scam', 'OneCoin was one of the early crypto frauds. Its founder, the self-named CryptoQueen, Ruja Ignatova, hosted glitzy events across the world, including one in the U.K. Wembley Arena. There, she touted OneCoin as a Bitcoin Killer. Millions of investors would later end up defrauded in what turned out to be a $4 billion Ponzi scheme that used money from new investors to pay returns to the existing ones. Ignatova disappeared in 2017 when the net was finally closing in and police had filed a warrant for her arrest.');