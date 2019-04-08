# Code written entirely by Eric Alcaide.

# An implementation of Informed search methods algorithms
# in julia for a future package: SearchMethods.jl


""" Greedy Best-First Search method algorithm. Expands node that appears to
    be closest to goal. 
    Inputs:
        * root: the initial node. Any type.
        * tree: the search space. Any type.
        * goal_check: checks if the goal is met. Function.
        * expand: returns an array of new nodes. Function.
        * heuristic: returns the estimated cost to goal from a node. Function.
    Returns:
        * the goal if it's found in tree.
        * false (boolean value) otherwise.
"""
function greedy(root, tree, goal_check, expand, heuristic)
	explored = Set([])
	# Keep track of node, depth while node in frontier
    frontier = PriorityQueue()
    enqueue!(frontier, root, 0)
    # While frontier is active, pop least cost node.
    while !isempty(frontier)
    	# Peek least cost value and cost. Eliminate from frontier.
    	node, cost_to_goal = map(Any, peek(frontier))
    	dequeue!(frontier)
    	# Check if goal found. Else => continue.
    	if goal_check(node) return node end
    	# Explore node
    	for neighbor in expand(node, tree)
    		if !in(neighbor, union(explored, keys(frontier)))
    			enqueue!(frontier, neighbor, heuristic(node,neighbor))
    		end
    	end
    end
    # Return false if goal not found.
    return false
end


""" A* Search method algorithm. Expands always the shallowest node. 
    Inputs:
        * root: the initial node. Any type.
        * tree: the search space. Any type.
        * goal_check: checks if the goal is met. Function.
        * expand: returns an array of new nodes. Function.
        * cost: returns the cost of expanding a node. Function.
        * heuristic: returns the estimated cost to goal from a node. Function.
    Returns:
        * the goal if it's found in tree.
        * false (boolean value) otherwise.
"""
function a_star(root, tree, goal_check, expand, cost, heuristic)
	explored = Set([])
	# Keep track of node, depth while node in frontier
    frontier = PriorityQueue()
    enqueue!(frontier, root, 0)
    # While frontier is active, pop least cost node.
    while !isempty(frontier)
    	# Peek least cost value and cost. Eliminate from frontier.
    	node, cost_to_goal = map(Any, peek(frontier))
    	dequeue!(frontier)
    	# Check if goal found. Else => continue.
    	if goal_check(node) return node end
    	# Explore node
    	for neighbor in expand(node, tree)
    		if !in(neighbor, union(explored, keys(frontier)))
    			enqueue!(frontier, neighbor, cost(node, neighbor)+heuristic(node,neighbor))
    		end
    	end
    end
    # Return false if goal not found.
    return false
end