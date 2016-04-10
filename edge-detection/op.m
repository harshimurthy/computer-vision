function op(image1 )

for i = 1:length(image1)
    if image1(i)=='.'
        name_len = i ;
    end
end

N_1 = strcat(image1(1:name_len-1),'_1.jpg');
N_2 = strcat(image1(1:name_len-1),'_2.jpg');
N_3 = strcat(image1(1:name_len-1),'_3.jpg');
N_4 = strcat(image1(1:name_len-1),'_4.jpg');
N_5 = strcat(image1(1:name_len-1),'_5.jpg');

if(image1(name_len+1:end) == 'bmp')
    I_1 = imread(image1);
    con_img = strcat(image1(1:name_len-1),'.jpg');
    imwrite(I_1,con_img);
    I_2 = imread(con_img);
    I = rgb2gray(I_2);
else 
    I = imread(image1);
end

    
O = filter(3,I);
O_2 = filter(6,I);
O_3 = filter(9,I);
O_4 = filter(12,I);
O_5 = filter(24,I);


imwrite(O,N_1);
imwrite(O_2,N_2);
imwrite(O_3,N_3);
imwrite(O_4,N_4);
imwrite(O_5,N_5);

end

