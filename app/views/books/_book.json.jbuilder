json.extract! book, :id, :title, :author, :genre, :price, :published :created_at, :updated_at
json.url book_url(book, format: :json)
