class Release_group
    attr_accessor :id, :name, :artists_arr_by_name, :artist_arr_by_id
    def initialize (creator_obj, raw_hash_or_id)
        @creator_obj = creator_obj
        @raw_hash_or_id = raw_hash_or_id
        
        # case raw_hash_or_id.class
        # when Hash
                @id = raw_hash_or_id['id']
                @name = ['name']
                # @artist_arr_by_id = []
                # @artists_arr_by_name = name
        
        #     @name = 
        #     @artists_arr_by_name =
        #     @artist_arr_by_id = 
        # # when String
        #     #querry by ID
        # end
    end
end

