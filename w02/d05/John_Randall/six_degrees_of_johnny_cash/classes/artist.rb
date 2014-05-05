



class Artist
    attr_accessor :id, :name, :api_raw, :release_group_objs_arr


    def initialize(id)
        @id = id
        @name = ''
        @api_raw = ''
        @release_group_objs_arr = []
        @api_array_of_release_groups = []
        self.build_array_of_releases

    end

    def build_array_of_releases
        @api_raw = HTTParty.get('http://musicbrainz.org/ws/2/artist/d43d12a1-2dc9-4257-a2fd-0a3bb1081b86/?inc=release-groups')
        @api_array_of_release_groups = @api_raw['metadata']['artist']['release_group_list']['release_group']

       

        @api_array_of_release_groups.each do |release_group_hash|
            @release_group_objs_arr << Release_group.new(self, release_group_hash)
        end
    end

end



# jonny.build_array_of_releases