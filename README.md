# Anagram or Antigam

#### By Arthur Lee

## Description
A website that allows users to input a number to then convert that number from USD to any currency that choose!

## Technologies Used

* _Javascript_
* _Jest_
* _JQuery_
* _Visual Studio code_
* _HTML_
* _Webpack_
* _JSON_
* _Babelrc_
* _CSS_


## Setup/Installation Requirements
* _Clone this repository to your desktop._
* _Mavigate to the top level of the directory._
* _Visit the ExchangeRate-API site. Input your email address and click the "Get Free Key" button._
* _You'll be prompted to create an account with your email, first name and a password. Agree to the terms of use and click "Get Started!"_
* _Place your API key in an .env file at the top level of your directory. It should be look like this "API\_KEY=notarealkeyjustforexample" in your .env file_
* _Run npm install in your terminal_
* _Run npm build in your terminal_
* _Run npm run start to see what the program can do!._


## Known Bugs

* _No known bugs_
## License

[MIT](https://en.wikipedia.org/wiki/MIT_License)
Copyright (c) 2021 Arthur Lee
## Contact Information

_Arthur Lee [meleearthur@gmail.com](meleearthur@gmail.com)_




## Description

This template repository includes a basic setup for using Docker to run RSpec tests, Pry, and Ruby scripts using Ruby 2.6.5. 

To use Docker, you will first need to [install](https://docs.docker.com/get-docker/) it. Once it's installed, Docker should be open so you can actually run Docker commands in the terminal.

## Running IRB

You don't need this setup for running IRB (Ruby REPL) by itself. To use IRB on its own, do the following (after Docker is installed and open):

```
$ docker pull ruby:2.6.5
```

This pulls down the image of Ruby we use at Epicodus. You only need to do this once.

Once you have it on your machine, you can run IRB with the following command:

```
$ docker run -it ruby:2.6.5 irb
```

We recommend creating an alias (called something like `dirb` for Docker IRB) to make the command easier to use.

You can exit IRB as normal by typing `exit`.

## Using This Repository for Docker

This repository is a template repository. To use it, start by creating a new repository with `ruby-rspec-docker-container` as a template. Clone that repository down to your desktop.

The repository contains a simple project that tests a simple `title_case` method. To run tests on the current code, simply run the command `docker-compose up` in the root directory of this project.

To run tests on your own code, replace the `lib` and `spec` directories with your own source code (for `lib`) and tests (for `spec`).

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

### Running Scripts

Running scripts is optional at Epicodus. However, if you want to experiment with it, follow these steps:

* The script must be located in `lib` and be called `script.rb`.

* Run the following command: `docker-compose run --rm app ruby lib/script.rb`.

Once again, we recommend aliasing this command if you plan to run scripts often. If you prefer to name your script something else, you just need to update the command to use the correct path and file name.