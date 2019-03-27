digitDatasetPath = fullfile(matlabroot,'toolbox','nnet',...
    'nndemos','nndatasets','DigitDataset');
imds = imageDatastore(digitDatasetPath,...
    'IncludeSubfolders',true,...
    'LabelSource','foldernames');

numImages = 10000;
perm = randperm(numImages,20);

for i = 1:20
    subplot(4,5,i);
    imshow(imds.Files{perm(i)});
end

%% Split data into Training and validation and test set
[imdsTrain,imdsVal,imdsTest] = splitEachLabel(imds,.7,.2,.1,'randomize');

%% Define the CNN ARCHITECTURE
layers = [ ...
    imageInputLayer([28 28 1])
    convolution2dLayer(5,20)
    reluLayer
    maxPooling2dLayer(2,'Stride',2)
    fullyConnectedLayer(10)
    softmaxLayer
    classificationLayer];



