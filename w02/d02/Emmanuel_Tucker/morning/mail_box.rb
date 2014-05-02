class Mailbox



     def  intialize
          @postcards = []
     end


     def accept_postcard (postcard) #mail_item
          @postcards << postcard #mail_item
          # takes postcard object and puts it in array
     end

     def to_s
          puts "There are  #{@postcards.count} postcards in this mailbox"
     end # .count will return of the numbers in the array
end

