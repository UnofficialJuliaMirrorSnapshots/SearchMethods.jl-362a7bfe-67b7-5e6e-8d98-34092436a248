# <img src="searchmethods_logo.png" width="25%" align="right" /> SearchMethods.jl

[![Latest Release](https://img.shields.io/badge/release-v0.1.0-blue.svg)](https://github.com/EricAlcaide/SearchMethods.jl/releases/latest)
[![Julia v1.0](https://img.shields.io/badge/Julia%20v1.0-passing-brightgreen.svg)](https://docs.julialang.org/en/v1/)
[![Julia v0.6](https://img.shields.io/badge/Julia%20v0.6-passing-brightgreen.svg)](https://docs.julialang.org/en/v0.6.4/)
[![MIT license](https://img.shields.io/github/license/mashape/apistatus.svg)](https://github.com/EricAlcaide/SearchMethods.jl/blob/master/LICENSE.md) 
[![Build Status](https://travis-ci.org/EricAlcaide/SearchMethods.jl.svg?branch=master)](https://travis-ci.org/EricAlcaide/SearchMethods.jl)
[![Build status](https://ci.appveyor.com/api/projects/status/rfctrj4w0t2wctr1?svg=true)](https://ci.appveyor.com/project/EricAlcaide/searchmethods-jl)
[![Code Coverage](https://coveralls.io/repos/github/EricAlcaide/SearchMethods.jl/badge.svg?branch=master)](https://coveralls.io/github/EricAlcaide/SearchMethods.jl?branch=master)
![Lifecycle](https://img.shields.io/badge/lifecycle-stable-brightgreen.svg)

The Julia package for Search Methods algorithms.

## Documentation

We're actually working on a cool documentation for the project. A first draft can be found at the [/docs](https://github.com/EricAlcaide/SearchMethods.jl/blob/master/docs/src/index.md) folder.

* **Expand node**: Node expansion function must be provided with the format `expand(node)` returning a 1d-Array of child nodes.
* **Goal check**: Goal checking function must be provided with the format `goalCheck(node)` returning a boolean value.
* **Expansion cost**: For cost-related methods such as **UCS**, an expansion-cost function must be provided with the format `cost(node, neighbor)` returning a real number (the greater the number the costly the expansion).
* **Heuristic**: For informed search methods such as **A Star**, a heuristic function must be provided with the format `heuristic(node, goal)` returning a real number (the greater the number the farther the goal).


## Examples - 8 puzzle
The 8-puzzle consists of 9 spaces to fill with numbers from 1 to 9. The resulting blank space is used to move the pieces of the puzzle.
From a given initial state, the goal of the puzzle is to reach the goal state, in which the numbers are ordered.

The code can be found [here](https://github.com/EricAlcaide/SearchMethods.jl/blob/master/example/8puzzle.jl). The example contains the BFS, DLS and IDS search methods.

<center><img src="https://github.com/EricAlcaide/SearchMethods.jl/blob/master/example/8puzzle_example.png"/></center>

* `function expand_node(node, tree)`: Expands a node by generating new child nodes. Creates a tree-like search space. Returns a 1d-Array of new nodes.
* `function goal_check(node)`: Checks if a goal state is found. Returns true or false.

The code can be found [here](https://github.com/EricAlcaide/SearchMethods.jl/blob/master/example/8puzzle.jl). The example contains the BFS, DLS and IDS search methods.

Another minimal working example with a tree-like structure can be found at the [/test](https://github.com/EricAlcaide/SearchMethods.jl/tree/master/test/) folder.


## Installation
Install **SearchMethods.jl** in your computer:
* Julia v1.0: `add https://github.com/EricAlcaide/SearchMethods.jl`
* Julia v0.6: `Pkg.clone("https://github.com/EricAlcaide/SearchMethods.jl")`

## Contribute
Hey there! New ideas are welcome: open/close issues, fork the repo and share your code with a Pull Request.
Clone this project to your computer:
 
`git clone https://github.com/EricAlcaide/SearchMethods.jl`
 
By participating in this project, you agree to abide by the thoughtbot [code of conduct](https://thoughtbot.com/open-source-code-of-conduct)
 
## Meta
 
* **Author's GitHub Profile**: [Eric Alcaide](https://github.com/EricAlcaide/)
* **Twitter**: [@eric_alcaide](https://twitter.com/eric_alcaide)
* **Email**: ericalcaide1@gmail.com
