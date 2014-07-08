require 'sqlite3'


module WDIRecord

    module Database

        DB_FILENAME = 'spec/refresher.db'

        # Once WDIRecord::Database.connect() is called, the connection
        # is established and stored in @db, which can be accessed through
        # WDIRecord::Database.connection().

        def self.connection()
            @db
        end

        def self.connect()
            if File.exists?(DB_FILENAME)
                File.delete(DB_FILENAME)
            end

            @db = SQLite3::Database.new(DB_FILENAME)

            # so we can do results[0]["name"]
            @db.results_as_hash = true

            # otherwise foreign key constraints will not be enforced
            @db.execute 'PRAGMA foreign_keys = ON;'
        end

        def self.create_schema()
            # execute() will silently discard all statements after the first;
            # execute_batch() must be used to execute multiple statements
            @db.execute_batch SQL::CREATE_SCHEMA
        end

        def self.create_test_data()
            @db.execute SQL::INSERT_PERSON, 'Max Cantor', 'Teacher'

            @db.execute SQL::INSERT_PERSON, 'Bob Johnson', 'Villain'

            @db.execute SQL::INSERT_MEMORY, 1, 'New York City', 'A very tasty sandwich.'
        end

    end

    module SQL

        # This module is specifically for storing constants
        # that contain SQL snippets.

        INSERT_PERSON = <<-SQL
            insert into people (
                name,
                profession
            ) values (?, ?);
        SQL

        INSERT_MEMORY = <<-SQL
            insert into memories (
                person_id,
                location,
                description
            ) values (?, ?, ?);
        SQL

        CREATE_SCHEMA = <<-SQL
            create table people (
                id integer primary key,
                name varchar(30),
                profession varchar(30)
            );

            create table memories (
                id integer primary key,
                person_id integer,
                location varchar(30),
                description text,
                foreign key(person_id) references people(id)
            );
        SQL

    end

end

