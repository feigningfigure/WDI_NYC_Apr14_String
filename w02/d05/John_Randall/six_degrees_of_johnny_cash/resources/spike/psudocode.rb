

$array_of_recordings = artistA_array_of_recordings


def process_array_of_recordings ($array_of_recordings)
	$array_of_recordings.each  {
		if artist B is present, EXIT - PRINT RESULT
		else, 
			$array_of_artists = artists from $array_of_recordings
			process_array_of_artists($array_of_artists)

	}
end


def praccess_array_of_artists ($array_of_artists)
	$array_of_artists.each {
		$array_ofRecordings << recordings of this particular artist  # THIS IS THE FIRST RING - THIS ONE IS GROWING EXPONENTIALLY)
		process_array_of_recordings($array_of_recordings)
	}
end

