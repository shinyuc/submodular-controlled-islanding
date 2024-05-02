% the system topology
% generate adjacency matrix
num_N = 7; % number of nodes in G
edges = [1 2; 1 4; 2 3; 3 4; 3 6;4 5; 5 7; 6 7;];
adjacency_G = zeros(num_N);
for i = 1: size(edges, 1)
    temp_edge = edges(i,:);
    adjacency_G(temp_edge(1), temp_edge(2)) = 1;
    adjacency_G(temp_edge(2), temp_edge(1)) = 1;
end
degree_G = zeros(num_N);
for i = 1: num_N
    degree_G(i,i) = sum(adjacency_G(i,:));
end
laplacian_G = degree_G - adjacency_G;
% system dynamics