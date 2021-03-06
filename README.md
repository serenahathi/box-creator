# Box Creator

[Summary](#summary) | [Quickstart](#quickstart) | [Running Tests](#running-tests) | [Sample Output](#sample-output) | [Approach](#approach)

<a id ="#summary"></a>

## Summary

A command-line application that draws a box using ASCII characters based on a given width and height.

Example output: 

<img width = "400" src="https://user-images.githubusercontent.com/29439776/39396099-c472ee70-4adf-11e8-92de-9d86ba3f4b0e.png">



<a id ="#quickstart"></a>

## Quickstart

- Ensure you have Ruby and [Bundler](http://bundler.io/) installed and then clone the repository by running the following command:

```
$ git clone https://github.com/serenahathi/box-creator.git
```

* Navigate to the root of the project directory and install dependencies by running the following command in the terminal:

```
$ bundle install
```


* Open irb: 

```
$ irb
```

* Require the file:

```
$ require './lib/box.rb'
```

* Create a new instance of the Box class and assign it to a variable. For example:

```
$ box = Box.new
```

* Call the *draw* method on the variable, passing in a width and height. For example:

```
$ box.draw(3,3)
```


<a id ="#running-tests"></a>

## Running Tests

- Tests are run using RSpec. To run the entire test suite, run the following command in the root of the project directory:

```
$ rspec
```

- Coverage summary:

<img width = "900" src="https://user-images.githubusercontent.com/29439776/39401742-b8c6e670-4b44-11e8-8049-75c5567a5176.png">


<a id ="#sample-output"></a>

## Sample Output

```
2.4.1 :001 > box = Box.new
 => #<Box:0x007ff52013c5a0>

2.4.1 :002 > box.draw(4,4)
┌ ╶  ╶ ┐
╷      ╷
╷      ╷
└ ╶  ╶ ┘
 => nil

2.4.1 :003 > box.draw(3,5)
┌ ╶ ┐
╷   ╷
╷   ╷
╷   ╷
└ ╶ ┘
 => nil

2.4.1 :004 > box.draw(5,8)
┌ ╶  ╶  ╶ ┐
╷         ╷
╷         ╷
╷         ╷
╷         ╷
╷         ╷
╷         ╷
└ ╶  ╶  ╶ ┘
 => nil

2.4.1 :005 > box.draw(1,1)
RuntimeError: Please enter dimensions that are greater than or equal to 2x2
```

<a id ="#approach"></a>

## Approach

- I began by breaking down the task into smaller component parts and identified four key milestones:
  - Being able draw a 2x2 box with no user input
  -  Being able to draw a box of any given width with a fixed height of 2
  - Being able to draw a box of any given width and a fixed height of 3
  - Being able to draw a box of any given width and height

- Taking an iterative approach, I worked through each part one at a time building upon the functionality implemented in the previous step.

- I followed the TDD cycle of writing a failing test, making it pass and then refactoring. After each test had passed, I manually tested the functionality using IRB.

- I then focused on defending against edge cases such as the user entering a non-integer or entering box dimensions less than 2x2.

- Once the main logic was implemented, I refactored further by:
    - Abstracting the methods used to build the box 
    - Abstracting the methods used to defend against edge cases
    - Amending areas of duplication such as the creation of the horizontal edges that make up the top and bottom rows of a box to adhere to DRY principles
    
