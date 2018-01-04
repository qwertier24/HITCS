# search.py
# ---------
# Licensing Information:  You are free to use or extend these projects for
# educational purposes provided that (1) you do not distribute or publish
# solutions, (2) you retain this notice, and (3) you provide clear
# attribution to UC Berkeley, including a link to http://ai.berkeley.edu.
# 
# Attribution Information: The Pacman AI projects were developed at UC Berkeley.
# The core projects and autograders were primarily created by John DeNero
# (denero@cs.berkeley.edu) and Dan Klein (klein@cs.berkeley.edu).
# Student side autograding was added by Brad Miller, Nick Hay, and
# Pieter Abbeel (pabbeel@cs.berkeley.edu).



"""
In search.py, you will implement generic search algorithms which are called by
Pacman agents (in searchAgents.py).
"""

import util

class SearchProblem:
    """
    This class outlines the structure of a search problem, but doesn't implement
    any of the methods (in object-oriented terminology: an abstract class).

    You do not need to change anything in this class, ever.
    """

    def getStartState(self):
        """
        Returns the start state for the search problem.
        """
        util.raiseNotDefined()

    def isGoalState(self, state):
        """
          state: Search state

        Returns True if and only if the state is a valid goal state.
        """
        util.raiseNotDefined()

    def getSuccessors(self, state):
        """
          state: Search state

        For a given state, this should return a list of triples, (successor,
        action, stepCost), where 'successor' is a successor to the current
        state, 'action' is the action required to get there, and 'stepCost' is
        the incremental cost of expanding to that successor.
        """
        util.raiseNotDefined()

    def getCostOfActions(self, actions):
        """
         actions: A list of actions to take

        This method returns the total cost of a particular sequence of actions.
        The sequence must be composed of legal moves.
        """
        util.raiseNotDefined()


def tinyMazeSearch(problem):
    """
    Returns a sequence of moves that solves tinyMaze.  For any other maze, the
    sequence of moves will be incorrect, so only use this for tinyMaze.
    """
    from game import Directions
    s = Directions.SOUTH
    w = Directions.WEST
    return  [s, s, w, s, w, w, s, w]

def unifiedSearch(problem, open, heuristic):
    closed = set()
    preDirection = dict()
    prePosition = dict()
    f = dict()
    g = dict()
    h = dict()

    def getPath(dest, src):
        # 获得从起点（src）到终点（dest）的路径，由dest向前遍历得到
        state = dest
        path = []
        while state != src:
            path.append(preDirection[state])
            state = prePosition[state]
        path.reverse()
        return path

    initialState = problem.getStartState()
    g[initialState] = 0
    h[initialState] = heuristic(initialState, problem)
    f[initialState] = g[initialState] + h[initialState]
    open.push((initialState, f[initialState], None, None))

    while not open.isEmpty():
        (state, _, prePositionTmp, preDirectionTmp) = open.pop()
        if state in closed:
            continue
        preDirection[state] = preDirectionTmp  # 找到从父状态所转移来的方向
        prePosition[state] = prePositionTmp  # 找到父状态
        closed.add(state)
        if problem.isGoalState(state):  # 到达终点
            return getPath(state, problem.getStartState())
        for childState in problem.getSuccessors(state):
            if childState[0] not in g:  # 子状态的g函数未定义
                g[childState[0]] = g[state] + childState[2]
            else:
                g[childState[0]] = min(g[childState[0]], g[state] + childState[2])
            if childState[0] not in h:  # 子状态的h函数未定义
                h[childState[0]] = heuristic(childState[0], problem)
            if childState[0] not in f:
                f[childState[0]] = g[childState[0]] + h[childState[0]]
            else:
                f[childState[0]] = min(f[childState[0]], g[childState[0]] + h[childState[0]])
            open.push((childState[0], f[childState[0]], state, childState[1]))
    return []

def depthFirstSearch(problem):
    """
    Search the deepest nodes in the search tree first.

    Your search algorithm needs to return a list of actions that reaches the
    goal. Make sure to implement a graph search algorithm.

    To get started, you might want to try some of these simple commands to
    understand the search problem that is being passed in:
    print "Start:", problem.getStartState()
    print "Is the start a goal?", problem.isGoalState(problem.getStartState())
    print "Start's successors:", problem.getSuccessors(problem.getStartState())
    """
    return unifiedSearch(problem, util.Stack(), nullHeuristic)
    return []

def breadthFirstSearch(problem):
    """Search the shallowest nodes in the search tree first."""
    return unifiedSearch(problem, util.Queue(), nullHeuristic)

def uniformCostSearch(problem):
    """Search the node of least total cost first."""
    return unifiedSearch(problem, util.PriorityQueueWithFunction(lambda x: x[1]), nullHeuristic)

def nullHeuristic(state, problem=None):
    """
    A heuristic function estimates the cost from the current state to the nearest
    goal in the provided SearchProblem.  This heuristic is trivial.
    """
    return 0

def aStarSearch(problem, heuristic=nullHeuristic):
    """Search the node that has the lowest combined cost and heuristic first."""
    return unifiedSearch(problem, util.PriorityQueueWithFunction(lambda x: x[1]), heuristic)


# Abbreviations
bfs = breadthFirstSearch
dfs = depthFirstSearch
astar = aStarSearch
ucs = uniformCostSearch
