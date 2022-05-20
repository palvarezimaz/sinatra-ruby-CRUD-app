def all_stories
    cryptonite("SELECT * FROM stories ORDER BY id DESC")
  end

def create_story(user_posting_id, crypto_id, story)
  cryptonite("INSERT INTO stories(user_posting_id, crypto_id, story) VALUES($1, $2, $3)", [user_posting_id, crypto_id, story])
end

def delete_story(id)
  cryptonite("DELETE FROM stories WHERE id = $1", [id])
end

def edit_stories(id)
  cryptonite("SELECT * FROM stories WHERE id = $1", [id])[0]
end

def update_story(crypto_id, story, id)
  cryptonite("UPDATE stories SET crypto_id = $1, story = $2 WHERE id = $3", [crypto_id, story, id])
end



