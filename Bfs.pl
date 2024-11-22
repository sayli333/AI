% Define the directed graph as facts (edges).
edge(a, b).
edge(a, c).
edge(b, d).
edge(b, e).
edge(c, f).
edge(d, g).
edge(e, g).
edge(f, g).
% Predicate to check if there is a path between two nodes using DFS.
dfs(Path, Node, Node, [Node|Path]).
dfs(Path, Start, End, Solution) :-
edge(Start, Next),
\+ member(Next, Path),
dfs([Start|Path], Next, End, Solution).
% Predicate to find a path between two nodes.
find_path(Start, End, Path) :-
dfs([], Start, End, ReversedPath),
reverse(ReversedPath, Path).
