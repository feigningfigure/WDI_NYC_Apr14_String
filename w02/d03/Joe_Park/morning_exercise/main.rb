require_relative 'classes/developer'
require_relative 'db/languages'
require_relative 'db/students'



name = $spring_wdi.sample
lang = $languages.sample

morning = Developer.new(name, lang)

p morning.to_s