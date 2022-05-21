def create_crypto(name, acronym, year_created, year_ended, country, project_type, extra_info)
  cryptonite("INSERT INTO cryptos(name, acronym, year_created, year_ended, country, project_type, extra_info) VALUES($1, $2, $3, $4, $5, $6, $7)", [name, acronym, year_created, year_ended, country, project_type, extra_info])
end

def delete_crypto(id)
  cryptonite("DELETE FROM cryptos WHERE id = $1", [id])
end

def update_crypto(name, acronym, year_created, year_ended, country, project_type, extra_info, id)
  cryptonite("UPDATE cryptos SET name = $1, acronym = $2, year_created = $3, year_ended = $4, country = $5, project_type = $6, extra_info = $7 WHERE id = $8", [name, acronym, year_created, year_ended, country, project_type, extra_info, id])
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

def all_acronyms
  cryptonite("SELECT acronym FROM cryptos")
end

def btc_price
  HTTParty.get("https://api.coingecko.com/api/v3/simple/price?ids=bitcoin&vs_currencies=aud")
end

def kanye_west
  HTTParty.get("https://api.kanye.rest/")
end

