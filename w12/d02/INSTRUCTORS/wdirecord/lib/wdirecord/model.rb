module WDIRecord

    class Person

        # Functions like ActiveRecord::Base

        # Class Methods

        def self.create(attributes)
        end

        def self.find_by(attributes)
        end

        def self.count()
        end

        # Instance Methods

        # ???

        private

        def self.execute(sql)
            WDIRecord::Database.connection.execute(sql)
        end

    end

end
