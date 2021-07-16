# Anagram or Antigam

#### By Arthur Lee

## Description
A application that can determine if 2 user inputted words are anagrams or antigrams. 

## Technologies Used

* _Ruby_
* _Docker_
* _Rspec_
* _Visual Studio code_


## Setup/Installation Requirements
### Using This Repository for Docker

To use it, start by creating a new repository with `ruby-rspec-docker-container` as a template. Clone that repository down to your desktop.

We recommend creating an alias for the following commands. The alias should look something like this:

```
dspec ()
{
  docker-compose down
  docker-compose up --build
  docker-compose run --rm app
}
```

With this alias, the `dspec` command will automatically run RSpec tests. You can use `binding.pry` as needed.

* _Clone this repository to your desktop._
* _Mavigate to the top level of the directory._
* _Use command .code in your gitbash._
* _Run command despec to test out the functionality of each function_
* _Edit the anagram spec to your likings and run despec in your terminal to figure out what 2 words are anagrams._



## Known Bugs

* _No known bugs_
## License

[MIT](https://en.wikipedia.org/wiki/MIT_License)
Copyright (c) 2021 Arthur Lee
## Contact Information

_Arthur Lee [meleearthur@gmail.com](meleearthur@gmail.com)_