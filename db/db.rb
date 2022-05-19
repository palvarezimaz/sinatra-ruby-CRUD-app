require 'pg'

def cryptonite(sql, params=[]) 
  
  db = PG.connect(ENV['DATABASE_URL'] || {dbname: 'crud_app'})
  results = db.exec_params(sql, params)

  db.close 
  
  results 
end