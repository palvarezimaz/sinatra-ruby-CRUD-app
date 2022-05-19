def create_crypto(name, acronym, logo_url, year_created, year_ended, country, project_type, extra_info)
  cryptonite("INSERT INTO cryptos(name, acronym, logo_url, year_created, year_ended, country, project_type, extra_info) VALUES($1, $2, $3, $4, $5, $6, $7, $8)", [name, acronym, logo_url, year_created, year_ended, country, project_type, extra_info])
end

def delete_crypto(id)
  cryptonite("DELETE FROM cryptos WHERE id = $1", [id])
end

def update_crypto(name, acronym, logo_url, year_created, year_ended, country, project_type, extra_info, id)
  cryptonite("UPDATE cryptos SET name = $1, acronym = $2, logo_url = $3, year_created = $4, year_ended = $5, country = $6, project_type = $7, extra_info = $8 WHERE id = $9", [name, acronym, logo_url, year_created, year_ended, country, project_type, extra_info, id])
end

def edit_crypto(id)
  cryptonite("SELECT * FROM cryptos WHERE id = $1", [id])[0]
end

def all_crypto
  cryptonite("SELECT * FROM cryptos ORDER BY name")
end

def one_crypto
  cryptonite("SELECT * FROM cryptos WHERE name ILIKE $1", [name]);
end