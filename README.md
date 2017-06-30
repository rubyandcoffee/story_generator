# SETUP
1. `git clone https://github.com/rubyandcoffee/story_generator.git`
2. `cd story_generator`
3. `bundle install`
4. `rake db:create && rake db:seed`
5. Navigate to `localhost:3000` in the browser

All done!

# README

This app consists of a Story Plot Generator and a Character Name Generator.

Each will return a randomized result of records, i.e.
- Story Plot returns a randomized result of `Character.name`, `Situation.name`, `Place.name`
  * e.g. A random story plot may be: "A **woman** is a **survivor** in **World War Two**"
- Character Name returns a randomized result of `FirstName.name` and `LastName.name`
  * e.g. A random character name may be "**Emma Watson**"

### For Story Plot Generator:
- `character = Character.new(name: "woman", character_type: "gender")`
- `situation = Situation.new(name: "soldier", situation_type: "occupation")`
- `place = Place.new(name: "England", place_type: "country")`

### For Character Name Generator:
- `first_name = FirstName.new(name: "Emma")`
- `last_name = LastName.new(name: "Watson")`

It's pretty straightforward, really.
