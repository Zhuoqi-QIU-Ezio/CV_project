imgpath = 'dataset10s_hsv/';
file = '0.png';
img_filenames = dir([imgpath '*' file]); 
Num_img_files = size(img_filenames,1);


for j = 1:Num_img_files
    filename = [imgpath img_filenames(j).name];   % kth-filename in the list
    I = imread(filename);
    I = rgb2hsv(I);
    I =I(:,:,1);
    imwrite(I,img_filenames(j).name);
    %I = imread('Angry Birds In-game Trailer.avi_20170506_211702.131.jpg');
end
    % Run the detector.
