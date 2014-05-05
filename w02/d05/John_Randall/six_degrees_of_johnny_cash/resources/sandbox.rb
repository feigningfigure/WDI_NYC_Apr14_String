require 'HTTParty'

# release_group_api_query_data = HTTParty.get('http://musicbrainz.org/ws/2/release-group/288b58ea-6b89-3dae-8428-2822fb15c7cb?inc=artists')

# puts release_group_api_query_data['metadata']['release_group']['artist_credit']['name_credit']['artist']




release_group_api_query_data = HTTParty.get('http://musicbrainz.org/ws/2/release-group/50031fc5-b480-368a-a7f2-a5db73fd3370?inc=artists')

release_group_artists_api_query_parsed_data = release_group_api_query_data['metadata']['release_group']['artist_credit']['name_credit']#['artist']


array_of_related_artists_by_name = []
array_of_related_artists_by_id = []

if release_group_artists_api_query_parsed_data.class == Array  #We suspect that there are multiple artists in play
	 release_group_artists_api_query_parsed_data.each do |artist_hash|
	 	# puts ""
	 	# puts artist_hash['artist']['id']
	 	# puts artist_hash['artist']['name']
	 	# puts ""
	 	array_of_related_artists_by_name << artist_hash['artist']['name']
	 	array_of_related_artists_by_id << artist_hash['artist']['id']

	 	puts array_of_related_artists_by_id
	 	# puts ""
	 	puts array_of_related_artists_by_name
	 end

end