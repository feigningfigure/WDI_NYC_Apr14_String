ActiveRecord::Schema.define(version: 20140508183348) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "movies", force: true do |t|
    t.string  "title"
    t.string "Year"
    t.string "Runtime"
    t.string  "actors"
    t.string  " rated"
    t.string "released"
    t.string  "genre"
    t.string "director"
    t.string" writer"
    t.string "plot"
     t.string "Movie Poster"
  end

end








