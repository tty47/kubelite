# Script Grows Up

## Description

The following folder contains some files that their purpose is to replace an string in a file.

Similar to our scripts, but this time using [Go](https://go.dev/)

---

### How to?

- Build the service

```bash
docker build -t script-grows-up .
 ```

- Run the service
Example, using some values in the flags to replace the test `latest` with `123` in the file `example.txt`.

```bash
docker run -v $(PWD):/kubelite script-grows-up -str_old=latest -str_new=123 -file=example.txt; cat example.txt.new
 ```

---

## Flags available:

- **str_old:** Old string
- **str_new:** New string
- **file:** Path to the file

---

Jose Ramon Mañes