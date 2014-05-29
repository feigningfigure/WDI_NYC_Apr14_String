###Week06-Day02

#WORK IN YOUR OWN FOLDER ONLY!

---

## Morning Excercise

### Nested Arrays & Hashes


**Given the following data structure:**

    users = {
      "Max" => {
        :github => "mcantor",
        :favorite_numbers => [14, 38, 500],
      },
      "Neel" => {
        :github => "darthneel",
        :favorite_numbers => [53, 38, 7],
      },
      "Keri" => {
        :github => "ktoksu",
        :favorite_numbers => [1, 83, 14],
      },
    }
       
 
#### Group Activity
 
In groups of three, write down the value that these expressions resolve to:
 
	users['Max'][:github]

	users['Neel'][:favorite_numbers][1]


#### Individual Activity 
 
- Add the number 64 to Neel's favorite numbers.

- Add yourself to the users hash.

- Return the smallest of Neel's favorite numbers.

- Return an array of Max's favorite numbers that are also even.

- Return an array containing all users' favorite numbers, sorted, 
  and excluding duplicates.


---


## Homework

### Loggers

(see INSTRUCTORS folder for files)

Fill in the `make_logger()` function in `closures_loggers.rb`.

Use `closures_counters.rb` as a guideline.


#### Bonus

Complete Exercise 5 - SmartCalculator at the end of `blocks_and_procs.md`.

