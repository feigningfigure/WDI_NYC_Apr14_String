
class Algorithm

    #### Looping algorithm

    # build artist obj
    # build array of releasese
    # build array of artist obj
    #     test for finality
    #     add to master array
    #     add to test-next array
    #         build array of releasese
    #         build array of artist obj
    #             test for finality
    #             add to master array
    #             add to test-next array
    def self.process_user_input_to_artist_id(user_input)
        #returns top match.
        # name =  user_input.gsub(" ", "%20")
        search_results = HTTParty.get("http://musicbrainz.org/ws/2/artist?query=#{user_input}")
        # artist_json = search_results.parsed_response
        artist_hash = search_results["metadata"]["artist_list"]["artist"][0]
        artist_id = artist_hash['id']
        return artist_id
    end

    def self.process_artists_array(artists_arr)
        artists_arr.each do |artist|
            artist.test_for_finish()
            artist.build_array_of_releases()
            artist.release_group_objs_arr.each do |release|
                release.build_array_of_related_artists
                release.artist_objs_arr.each do |new_artist|
                    new_artist.add_self_to_array_of_artists_to_test()
                end
            end
            artist.remove_self_from_array_of_artists_to_test()
        end
    end
end



class Artist
    attr_accessor :creator, :input_hash
    attr_accessor :id, :name
    attr_accessor :api_response, :release_group_objs_arr
    # attr_accessor :release_group_objs_arr


    def initialize(creator_obj, id_or_hash)
        @creator_obj = creator_obj
        @api_release_groups_arr = []
        @release_group_objs_arr = []
        @id = ""
        @api_response = ""
        @name = "filler name"

        if creator_obj =='user_input' ## we are creating johnny cash
          @id = id_or_hash  
          @api_response = HTTParty.get("http://musicbrainz.org/ws/2/artist/#{@id}")
          api_response_parsed = @api_response['metadata']['artist']
          @name = api_response_parsed['name']
          puts "user just created johnny from id"

        elsif id_or_hash.class == String                   #If id was passed in, probably just on user_input
          @id = id_or_hash  
          @api_response = HTTParty.get("http://musicbrainz.org/ws/2/artist/#{@id}")
          api_response_parsed = @api_response['metadata']['artist']
          @name = api_response_parsed['name']
          puts "#{@creator_obj.title} just created Artist from id"

        elsif id_or_hash.class == Hash                  #If hash passed in, probably by release group searching for related artists
          hash = id_or_hash
          @id = hash['id']
          @name = hash['name']
          puts "#{@creator_obj.title} just created Artist from Hash"
        end
    end

    # def initialize(creator_obj, input_hash)
    #     @creator_obj = creator_obj
    #     @id = input_hash["id"]
    #     @name = input_hash["name"]

    #     @api_response = ''

    #     @release_group_objs_arr = []
    #     @api_release_groups_arr = []

    #     @release_group_objs_arr = []

    #     puts "#{@creator_obj} just created an artist from a hash"
    # end

    def build_array_of_releases
        puts "#{@name} is building array of releases for itself"
        @api_response = HTTParty.get("http://musicbrainz.org/ws/2/artist/#{@id}/?inc=release-groups")
        @api_release_groups_arr = api_response['metadata']['artist']['release_group_list']['release_group']

        @api_release_groups_arr.each do |release_group_hash|
            @release_group_objs_arr << Release_group.new(self, release_group_hash)
        end
    end

    def to_s
        return "name: #{@name}, id: #{@id}"
    end

    def test_for_finish
        puts "running TESTING FOR FINISH CONDITION"
        if true #@id == artistB id  # FIX THIS
            $stop_condition = true
            puts "stop_condition is now TRUE. algorithm should be stopping now.."
        end

        add_self_to_array_of_tested_artists()
    end

    def add_self_to_array_of_tested_artists
        $array_of_tested_artists << self
        puts "#{self.name} just added itself to the  array_of_tested_artists"
    end

    def add_self_to_array_of_artists_to_test
        if $array_of_artists_to_test.include?(self)
            puts "#{self.name} has already been tested.... doing nothing."
        else
            $array_of_artists_to_test << self
            puts "#{self.name} just added itself to the array_of_artists_to_test"
        end
    end

    def remove_self_from_array_of_artists_to_test()
        $array_of_artists_to_test.delete(self)
        $array_of_artists_to_test.compact!
        puts "#{self.name} just removed itself to the array_of_artists_to_test"
    end

end


class Release_group
    attr_accessor :creator, :input_hash
    attr_accessor :id, :title, :first_release_date, :primary_type, :type
    attr_accessor :api_response
    attr_accessor :artist_objs_arr

    def initialize (creator_obj, input_hash)

        @creator_obj = creator_obj
        @input_hash = input_hash


        # case input_hash.class
        # when Hash
                @id = input_hash['id']
                @title = input_hash['title']
                @first_release_date = input_hash['first_release_date']
                @primary_type = input_hash['primary_type']
                @type = input_hash['type']

                @api_response = ''
                @api_artists_arr_by_id = []
                @api_artists_arr_by_name = []

                @artist_objs_arr = []
        
                puts "#{@creator_obj.name} just created a Release_group and populating with the data it has"
    end

    
    def build_array_of_related_artists
        puts "Release_group #{@title} is building array of related artists for itself"
        @api_response = HTTParty.get("http://musicbrainz.org/ws/2/release-group/#{@id}?inc=artists")
        api_response_parsed_to_artist = api_response['metadata']['release_group']['artist_credit']['name_credit']#['artist']
        
        if api_response_parsed_to_artist.class == Array 
            puts "there are multiple artists on #{self.title} (we think)"

            #parsing API response into arrays
            api_response_parsed_to_artist.each do |artist_hash|
                @api_artists_arr_by_name << artist_hash['artist']['name']
                @api_artists_arr_by_id << artist_hash['artist']['id']
            end
            puts "artists on this release are #{@api_artists_arr_by_name}"

            @api_artists_arr_by_id.each do |artist_id|
                @artist_objs_arr << Artist.new(self, artist_id)
            end



        elsif api_response_parsed_to_artist.class == Hash
            puts "there is only one artist on #{self.title} (we think)"
        end
    end

            


        # @api_artists_arr = api_response['metadata']['release_group']['artist_credit']['name_credit']['artist']
        # @api_release_groups_arr.each do |release_group_hash|
        #     @release_group_objs_arr << Release_group.new(self, release_group_hash)


end




# jonny.build_array_of_releases