close all;
clear all;

mov = VideoReader ('video.avi');
currAxes = axes;
%NumofFrame = mov.NumberOfFrames;
frame_count = 1;
block_size = 10;
 
frame_matrix = zeros(320,480,1977);
blocked_frame_matrix = zeros(100, 1536 ,1977);

    col_count = 1;
    count = 1;
while hasFrame(mov)
    videoFrame = readFrame(mov);

    if rem(col_count,1) == 0 
     
    % im = imresize(videoFrame, [160 240]);
   %  imwrite(im, [num2str(col_count),'.png' ])
     imwrite(videoFrame, ['a',num2str(count),'.png' ])
     count = count + 1;
    end
    col_count = col_count + 1;
    
    
%     frame_do = rgb2hsv(videoFrame);
%     frame_h_do = frame_do(:,:,1);
%     frame_matrix(:,:,frame_count) = frame_h_do;
    
    
   
%     for row = 1 : 10 : 311
%         for col = 1 : 10 : 471
%             mask = reshape(frame_h_do(row:row+9, col:col+9),[100,1]);
%             blocked_frame_matrix(:,col_count,frame_count)= mask;
%             col_count = col_count + 1;
%         end
%     end
%     frame_count = frame_count + 1;
%  
%     
     pause(0.0001);
end

%save('blocked_frame_matrix.mat','-v7.3');


