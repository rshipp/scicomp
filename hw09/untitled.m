clear all
clf
rgb = imread('car.png');
B = flipud(rgb);
image([0 10],[0 1],B);
set(gca,'YDir','normal')
grid on
grid minor
