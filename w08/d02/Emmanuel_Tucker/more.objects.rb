class Person
     def sayHello
     return "Yo! My name is #{@name}."
          end

          def  is0lder(other)
          return @age > other.age
               end

          def age ()
          return @age
          end


          def age = (new_value)
          @age = new_value

     end
end

ed = Person.new()

ed.age = 15

jet = Person.new()
jet.age = 43


puts jet.is0lder(ed)
