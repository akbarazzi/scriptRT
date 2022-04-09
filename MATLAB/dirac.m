%dirac delta function approximation

sum = ones(1,1024);
number_of_iterations = 100000;
for i = 0:number_of_iterations
    sum = sum + random_cos_wave(100);
end

%main program for calculation angular flux density

psi_0 = 0;
for j = 1:16
    psi_0 = psi_0 + ((exp(-0.1678)*6)/10)*sum(j); 
    %-0.1678 is a random value and will be replaced by mean free path value, and 6 is initial energy photon source depend on the LINAC
end

figure;
plot(sum)
title('Dirac Approximation');
ylabel('Dirac(\omega_0)');
xlabel('\omega_0');