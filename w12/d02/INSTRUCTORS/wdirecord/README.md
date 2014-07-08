# SQL Refresher

- Compare and contrast sqlite3 and postgresql.
- Write an ActiveRecord-like Ruby class for creating, reading, updating, and deleting
  rows in a relational database.

## sqlite3

sqlite is nice for prototyping and small projects because databases are stored
on the filesystem as single files. If you delete an sqlite `.db` file, the database
is gone. This is nice because there's no server process to manage.

Scope out `lib/wdirecord/database.rb` to see how to get started with sqlite3 in Ruby.

You can use the `sqlite3` command to access a database file
just like `psql` was used to access a postgresql database:

```shell
mcantor@cloudseer ~: sqlite3 refresher.db
SQLite version 3.7.13 2012-07-17 17:46:21
Enter ".help" for instructions
Enter SQL statements terminated with a ";"
sqlite> select * from people;
1|Max Cantor|Teacher
2|Bob Johnson|Villain
sqlite>
```

Some usage notes:

## Here Documents

A heredoc, or "[here document][heredoc]", is a special syntactical feature of certain languages
(Ruby included) that allows you to conveniently define multi-line strings without
having to do all kinds of crazy newline escapes and plus signs.

[heredoc]: http://en.wikipedia.org/wiki/Here_document

```ruby
db.execute <<-SQL
    create table people (
        name varchar(30),
        profession varchar(30)
    );
SQL
```

Keep in mind that heredocs completely take over interpretation of EVERYTHING until
their delimiter is found. If we were using explicit parentheses, we would need to
write them like so:

```ruby
db.execute(<<-SQL)
    create table people (
        name varchar(30),
        profession varchar(30)
    );
SQL
```

So here's a way we could store an indented string, but shave off the first few
spaces of each line:

```ruby
document = <<-HTML.gsub(/^  /, '')
  <body>
    <div>lol</div>
  </body>
HTML
```

The `-` in the delimiter (`<<-HTML` as opposed to `<<HTML`) is an indicator that
the final delimiter might be indented.


## Parameterized Queries

**Don't use string interpolation to construct SQL queries.**

This makes you vulnerable to [SQL injection attacks](http://xkcd.com/327/) ([Wikipedia](http://en.wikipedia.org/wiki/SQL_injection)).

Instead, use **parameterized queries**, as shown here:

```ruby
INSERT_SQL = <<-SQL
    insert into people (
        name,
        profession
    ) values (?, ?);
SQL

db.execute INSERT_SQL, 'Max Cantor', 'Teacher'
```

Instead of using string interpolation, you are putting question marks into the query
and "filling them in" later on by providing additional arguments to the `execute()` method.


## Exercise: WDIRecord

Let's make our own ActiveRecord!

We want to be able to write this code:

```ruby
max = Person.find_by({'name' => 'Max Cantor'})
puts max.name #=> 'Max Cantor'
puts max.profession #=> 'Teacher'

rex = Person.create({'name' => 'Rex Belltower', 'profession' => 'dilettante'})

puts Person.count() #=> 3
```

### Guidelines

- Start small! Pick ONE feature and make it work.

  - `find_by()`
  - Attribute accessors (`name`, `profession`)
  - `create()`
  - `count()`

  One at a time!

- Use tests to help scaffold functionality.

- If you've completed all of the methods in the first step, try doing:
  - `new()` (AKA `initialize()`)
  - `save()`
  - `destroy()`

  Remember: **One at a time!**

- Breezed through that? Now refactor it to work with another table:

  ```ruby
  db.execute <<-SQL
      create table memories (
          id integer primary key,
          person_id integer,
          location varchar(30),
          description text,
          foreign key(person_id) references people(id)
      );
  SQL

  sandwich = Memory.create({
    'person_id' => max.id,
    'location' => 'New York City',
    'description' => 'A tasty sandwich was consumed at Potbelly on a cool afternoon.'
  })
  ```

- Associations?

  ```ruby
  puts sandwich.person.name #=> 'Max Cantor'
  ```
