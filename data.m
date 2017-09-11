% data = load('fasterRCNNVehicleTrainingData.mat');
% vehicleDataset = data.vehicleTrainingData;

clear 
load xiaofanweibiaoji.mat
fruitDataset=labelingSession.ImageSet.ImageStruct;
% a=fruitDataset(1).imageFilename;
total_num=size(fruitDataset,2);

filepath=char();
Blue=cell(total_num,1);
Red=cell(total_num,1);
Slingshot=cell(total_num,1);
Pig=cell(total_num,1);
Yellow=cell(total_num,1);
Black=cell(total_num,1);
White=cell(total_num,1);

for i =1:total_num
    filepath{i,1}=fruitDataset(i).imageFilename;
    for j=1:size(fruitDataset(i).catID,1)
        switch (fruitDataset(i).catID(j,1))
            case 1
                Blue{i,1}= [Blue{i,1};fruitDataset(i).objectBoundingBoxes(j,:)];
            case 2
                 Red{i,1}= [Red{i,1};fruitDataset(i).objectBoundingBoxes(j,:)];
            case 3
                Slingshot{i,1}= [Slingshot{i,1};fruitDataset(i).objectBoundingBoxes(j,:)];
            case 4
                Pig{i,1}= [Pig{i,1};fruitDataset(i).objectBoundingBoxes(j,:)];
            case 5
                Yellow{i,1}= [Yellow{i,1};fruitDataset(i).objectBoundingBoxes(j,:)];
            case 6
                Black{i,1}= [Black{i,1};fruitDataset(i).objectBoundingBoxes(j,:)];
            case 7
                White{i,1}= [White{i,1};fruitDataset(i).objectBoundingBoxes(j,:)]; 
        end
    end
end
colName={'imageFilename','Blue','Red','Slingshot','Pig','Yellow','Black','White'};

tables=table(filepath,Blue,Red,Slingshot,Pig,Yellow,Black,White,'VariableNames',colName);