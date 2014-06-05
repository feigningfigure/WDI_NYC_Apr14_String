require 'active_record'
require 'pq'
require 'faker'

ActiveRecord::Base.establish_connection(
	adapter: 'postgresql'
	host: 'localhost',
	database: 'gladiator'
)

class TheArena < ActiveRecord::Base
end

CREATE TABLE gladiators (
	id int(11) NOT NULL auto_increment,
	name varchar(255),
	weapon varchar(255)
	victory_count int(11)
	PRIMARY KEY (id)
);

TheArena.create(:name => 'Luc Longly', weapon => 'psycho', :victory_count => 3)

	
