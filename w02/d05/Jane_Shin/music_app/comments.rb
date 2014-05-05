#from main.rb
#'/results'
# release = MusicBrainz::Release.find(@artist_id)
	# @tracks = release.tracks
	# @searchresult = MusicBrainz::Artist.search(artist)

	# limit = @artist_info.release_groups.length
	# @hash = {}
	# @titles = []
	# for counter in 0..limit-1
	# 	type = @artist_info.release_groups[counter].type
	# 	title = @artist_info.release_groups[counter].title
	# 	@titles << title
	# 	@hash[type] = @titles
	# end

	# @artist = MusicBrainz::ReleaseGroup.find(info)


	# for counter in 0..limit-1
	# 	title = @album[counter].title
	# end
		

	# limit = @artist_info.release_groups.length
	# # case = type
	# @album = []
	# @compilation = []
	# @ep=[]
	# @live = []
	# @single = []
	# for counter in 0..limit-1
	# 	type = @artist_info.release_groups[counter].type
	# 	if type == "Album"
	# 	@album << type
	# 	elsif type == "Compilation"
	# 	@compilation << type
	# 	elsif type == "EP"
	# 	@ep << type
	# 	else type == "Single"
	# 	@single << type
	# 	end
	# end



			<% if @options == "all" %>
			<%= @all %>
		<% elsif @options ==  "album" %>
			<%= @album %>
		<% elsif @options == "compilation" %>
			<%= @compilation %>
		<% elsif @options == "ep" %>
			<%= @ep %>
		<% elsif @options == "live" %>
			<%= @live %>
		<% elsif @options == "single" %>
			<%= @single %>
		<% else @options == "misc" %>
			<%= @misc %>
		
		<% end %>
