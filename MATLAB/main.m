%% main script
clc
clear
close all


%% Linac information

T = readtable('G:\My Drive\Akbar files\Projek\Development\scriptRT\linac desain\elekta_distance.csv','NumHeaderLines',1);
de = T{1,3}; %in mm
du = T{2,3}; %in mm
dl = T{3,3}; %in mm
diso = T{4,3}; %in mm

Fsm = 400; %in mm (1 side)
%% initial information
z = 50; % in mm (distance upper from isocenter)
% collimator on isoplane
X1 = 50; % in mm
X2 = -50; % in mm
Y1 = 50; % in mm
Y2 = -50; % in mm

% calculation points
x1 = triangle(diso,z,X1);
x2 = triangle(diso,z,X2);
y1 = triangle(diso,z,Y1);
y2 = triangle(diso,z,Y2);


%% diameter extra focal

e = e_value(Fsm,de,diso);
e_up = e_upper_value(e,de,diso,du);
e_low = e_lower_value(e,de,diso,dl);

%% jaws virtual per quadrant
%quadrant 1 (upper left) X2 Y1
iq1 = 1;x2i = x2;
while x2i<0
    [xq1(iq1),xx(iq1)] = Jaws_virtual('X',x2i,X2,de,du,dl,diso,z);
    x2i = x2+iq1;%every 1 mm
    iq1 = iq1 + 1;
end

jq1 = 1;y1i = y1;
while y1i>0
    [yq1(jq1),yy(iq1)] = Jaws_virtual('Y',y1i,Y1,de,du,dl,diso,z);
    y1i = y1-jq1;%every 1 mm
    jq1 = jq1 + 1;
end

for i = 1: length(xq1)
    E1(i) = E_integral(xq1(1),yq1(1),e_up,e_low);
end

korang = angle_corr(6,x2,y2,xx(1),yy(1),de,diso,z);