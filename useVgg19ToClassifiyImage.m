net = vgg19;
inputsize = net.Layers(1).InputSize(1:2);
im = imread('dog.jpg');
im = imresize(im,inputsize(1:2));
[label,scores] = classify(net,im);




%display the top five
[~,idx] = sort(scores,'descend');
idx = idx(5:-1:1);
classNamesTop = net.Layers(end).ClassNames(idx);
scoresTop = scores(idx);

figure
barh(scoresTop)
xlim([0 1])
title('Top 5 Predictions')
xlabel('Probability')
yticklabels(classNamesTop)

features=activations(net,im,'conv5_1');


channels = 1:30;

I = deepDreamImage(net,'conv5_1',channels,'PyramidLevels',1);

figure
montage(I)
name = net.Layers(layer).Name;
title(['Layer ',name,' Features'])