digitDatasetPath = fullfile(matlabroot,'toolbox','nnet','nndemos', ...
    'nndatasets','DigitDataset');
imds = imageDatastore(digitDatasetPath, ...
    'IncludeSubfolders',true,'LabelSource','foldernames');

%show image
%figure;
perm = randperm(10000,20);
for i = 1:20
    subplot(4,5,i);
 %  imshow(imds.Files{perm(i)});
end


labelCount = countEachLabel(imds);
img = readimage(imds,1);

numTrainFiles = 750;
[imdsTrain,imdsValidation] = splitEachLabel(imds,numTrainFiles,'randomize');
%%%constructure VGG

