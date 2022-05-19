require 'pg'


def cryptonite(sql, params=[]) # this is a default parameter. if i dont pass anything, it will use that parameter
  db = PG.connect(ENV['DATABASE_URL'] || {dbname: 'crud_app'})
  results = db.exec_params(sql, params)

  db.close 
  
  results 
end