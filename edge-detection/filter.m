function X = ass_filter(sigma,I)
size = (6*sigma);
G = fspecial('gaussian',[size,size],sigma);
L = [0 -1 0; -1 4 -1; 0 -1 0];
LoG = conv2(G,L);
X_1 = conv2(I,LoG);
X = zeroCrossing(X_1);
end 

