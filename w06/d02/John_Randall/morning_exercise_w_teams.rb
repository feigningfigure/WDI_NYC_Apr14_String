users = {
      "Max" => {
        :github => "mcantor",
        :favorite_numbers => [14, 38, 501]
      },
      "Neel" => {
        :github => "darthneel",
        :favorite_numbers => [53, 38, 7]
      },
      "Keri" => {
        :github => "ktoksu",
        :favorite_numbers => [1, 83, 14]
      }
    }



def add_64_to_neels_favs
    users['neel'][favorite_numbers].push(64)
end

def add_me
    users['john'] = {
        github: 'johntrandall', 
        favorite_numbers: [7, 8, 9]}
end

def neels_smallest_fav
    users['neel'][favorite_numbers].sort.first
end

def maxs_evens
    users['max'][favorite_numbers].select {|num| num.even?}
end



def return_unique_numbers
    unique_numbers = []
    users.flatten(5).each do |e|
        if e.class = int
            unique_numbers << e
        end
    end
    unique_numbers.sort.uniq
end