# Searching for files and text patterns

## find: search for files

Find files that have the string "user" in their name.

```bash
find . -name "*user*"
```

Find ruby files.

```bash
find . -name "*.rb"
```

Use `-iname` instead of `-name` to get case-inensitive search.


## grep: search within files

Show every instance of the string "User" (case-sensitive) in all files.

```bash
grep -r "User" .
```

## pipes: chain commands together

Search within the output of another command: this will show all
POST routes.

```bash
bin/rake routes | grep POST
```
