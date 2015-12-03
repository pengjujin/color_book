image = imread('kat_texture.png');
flipped = zeros(512, 512, 3);
for i = 1:size(image, 1)
    for j = 1:size(image, 2)
        flipped(i, j, :) = image(j, i, :);
    end
end
flipped = uint8(flipped);
figure, imshow(flipped);
imwrite(flipped, 'kat_flip.png');