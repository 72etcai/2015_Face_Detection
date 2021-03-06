function net = f12net()

net.layers = {} ;
net.layers{end+1} = struct('type', 'conv', ...
    'weights', {{0.01*randn(3,3,3,16, 'single'), zeros(1, 16, 'single')}}, ...
    'stride', 1, ...
    'pad', 0) ;
net.layers{end+1} = struct('type', 'pool', ...
    'method', 'max', ...
    'pool', [3 3], ...
    'stride', 2, ...
    'pad', 0) ;
net.layers{end+1} = struct('type', 'relu') ;
net.layers{end+1} = struct('type', 'conv', ...
    'weights', {{0.01*randn(5,5,16,16, 'single'), zeros(1, 16, 'single')}}, ...
    'stride', 1, ...
    'pad', 0) ;
net.layers{end+1} = struct('type', 'relu') ;
net.layers{end+1} = struct('type', 'dropout',  'rate', 0.5) ;
net.layers{end+1} = struct('type', 'conv', ...
    'weights', {{0.05*randn(1,1,16,2, 'single'), zeros(1, 2, 'single')}}, ...
    'stride', 1, ...
    'pad', 0) ;
net.layers{end+1} = struct('type', 'relu') ;
net.layers{end+1} = struct('type', 'softmaxloss') ;

