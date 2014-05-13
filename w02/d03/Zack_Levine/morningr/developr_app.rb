class Developer
  attr_accessor :first_name, :last_name, :favorite_language
  def initialize(rand_lang, hash_spring) #method with 2 instances
    @first_name = hash_spring[:first_name]
    @last_name = hash_spring[:last_name] 
    @rand_lang = rand.sample


  end
  
  def to_s #print to string method!!!
    "my name is #{@first_name}, #{@last_name} and my favorite lang is #{@rand_lang}

  spring_wdi = ["Joe Park", "artem Murada"]

  languages = ["Ruby", "Js", "c++", "pY"]

  wdi_objects[] # start your each loop for this array
  
  spring_wdi.each do |student| 
    first_name = student.split[0] #.split built in array method
    last_name = student.split[1]
    favorite_language - languages.sample

    wdi+objects << Developer.new(favorite_language,  {:first_name => last_name)
#this function takes two  end
