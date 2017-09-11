 close all;
% clear all;
% 
mov = VideoReader ('video.avi');
%currAxes = axes;
% NumofFrame = mov.NumberOfFrames;
frame_count = 1;
shotcut_second = 58.5;

while hasFrame(mov)
    videoFrame = readFrame(mov);
    if frame_count == round((shotcut_second/66) *1977)
        frame_do = videoFrame;
        current_frame = frame_count;
        %imwrite(videoFrame,'traing_pic_1.jpg');
        break;
    end
    
    frame_count = frame_count + 1;
end


figure
imagesc(uint8(frame_do));
hold on
 for row = 1 : 10 : 320
       x = [1,480];
       y = [row,row];
       line(x,y);
 end

  for col = 1 : 10 : 480
       x = [col,col];
       y = [1,320];
       line(x,y);
  end
 

 %imwrite(videoFrame,'traing_pic_1.jpg');