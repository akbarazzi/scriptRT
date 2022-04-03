n = 1000000; %jumlah history
enx = importdata('atmos.txt',' ');

%material udara
avo = 6.022*10^23; %konstanta avogadro
n2 = 0.78*28.013; %nitrogen
o2 = 0.21*31.999; %oksigen
ar = 0.01*39.948; %argon
to = n2 + o2 + ar; %total molecular mass
uu = 1.661*10^(-24);

ene = enx(:,1); %energi
att = enx(:,2); %atenuasi xcom
csx = att .* (to/(avo*uu)); %cross section
mp = @(x,y) exp(-x*y); %max mean free path
mf = @(x,y) -log(1-x*(1-exp(-y))); %number of mean free path
rd = rand(n,1);

z1 = zeros(length(att(:,1)),1);
for a = 1:length(att(:,1))
    z1(a,1) = mp(csx(a),a-1);
end

z2 = zeros(n,length(att(:,1)));
for a = 1:n
    for b = 1:length(att(:,1))
        z2(a,b) = mf(rd(a,1),z1(b,1));
    end
end


% 
% for a = 1:length(att(:,1))
%     figure;histogram(z(:,a));xlabel('Energi');ylabel('MFP');title('Nilai mean free path')
% end

% 
% z = zeros(n,1);
% l = zeros(n,length(dat(2,:));
% r = 0:20;
% lam = zeros(length(dat(2,:)),1);
% for a = 1:length(dat(2,:))
%     for b = 1:n
%         l(n,a) = dat(2,a).*rdm(n);
%     end
% end


