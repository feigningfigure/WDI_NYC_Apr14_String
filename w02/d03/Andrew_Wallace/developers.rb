require 'sinatra'
# optional

# this loads global variables called $developers and $languages which are arrays
require_relative "db/developers"
require_relative "db/languages"
require_relative "classes/classes"

wdi_objects = []

#Go through each student of the developer array
developers.each do |dev|
  first_name = student.split[0]
  last_name = student.split[1]
  fav_lang = languages.sample #.sample randomly selects a value from the array

  wdi_objects << Developer.new(fav_lang, :first => first_name, :last => last_name)
end
