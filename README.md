# Box Creator

[Summary](#summary) | [Quickstart](#quickstart) | [Running Tests](#tests) | [Sample Output](#output) | [Approach](#approach)

<a id ="#summary"></a>

## Summary

A command-line application that draws a box using ASCII characters based on a given width and height.

Example output: 

<img width = "400" src="https://user-images.githubusercontent.com/29439776/39396099-c472ee70-4adf-11e8-92de-9d86ba3f4b0e.png">



<a id ="#quickstart"></a>

## Quickstart

* Clone the directory by running the following command in the terminal:

```
$ git clone https://github.com/serenahathi/box-creator.git
```

<a id ="#tests"></a>

## Running Tests

- Tests are run using RSpec. To run the entire test suite, run the following command in the root of the project directory:

```
$ rspec
```

<a id ="#output"></a>

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
