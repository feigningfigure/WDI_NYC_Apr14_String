  require 'json'

  # class Person
  #   def initialize(name)
  #     @name = name@
  #     # source_file =File.open(whatever)
  #   end

  # def (obj){
  #     "type" => "Person"
  #     "name => Aname"
  #   }
  # end
  # end

  data = {
      :quizzes => [
          {
              :id => 1,
              :name => "What Game of Thrones character are you?",
              :questions => [
                  {
                      :id => 1,
                      :text => "What would you rather do?",
                      :choices => [
                          "Drink and make merry",
                          "Have, like, a ton of honor",
                          "Be a terrible person",
                          "Swear a lot and bathe rarely"
                      ]
                  },
                  {
                      :id => 2,
                      :text => "Are you all about family events?",
                      :choices => ["Yes", "No"]
                  }
              ]
          }
      ]
  }




  puts data.to_json()


