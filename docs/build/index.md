
<a id='SearchMethods.jl-Documentation-1'></a>

# SearchMethods.jl Documentation


The Julia package for Search Methods algorithms.


<a id='Methods-included-1'></a>

## Methods included


As for now, only **Uninformed Search** and **Informed Search** methods are supported. We plan to support search methods applied to games such as Minimax, Alpha/Beta prunning and Montecarlo Tree Search. The list below states the methods supported:


  * Uninformed Search

      * **Breadth First Search (BFS)**: Expands always the shallowest node.
      * **Depth First Search (DFS)**: Expands always the deepest node.
      * **Depth Limited Search (DLS)**: Expands always the deepest node until maximum depth is reached.
      * **Iterative Deepening Search (IDS)**: DLS with iteratively increasing maximum depth.
      * **Uniform Cost Search (UCS)**: Expands always the least cost node.


  * Informed Search

      * **Greedy Best-First Search**: Expands node that appears to be closest to goal.
      * **A** * **Search**: Expands node that appears to be the closest path through to goal.


<a id='Examples-1'></a>

## Examples


At the moment we have no examples to display here. But we are working on it!


<a id='Meta-1'></a>

## Meta


  * **Author**: Eric Alcaide
  * **Author's GitHub Profile**: [Eric Alcaide](https://github.com/EricAlcaide/)
  * **Twitter**: [@eric_alcaide](https://twitter.com/eric_alcaide)
  * **Email**: ericalcaide1@gmail.com

