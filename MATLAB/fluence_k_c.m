function k = fluence_k_c(Emc, Fsm)
%fluence constant based on Ahnsenjö 1995 Collimator scatter in photon beams
% Emc = nominal energy linac
% Fsm = maximum field size
    k = (-0.002006*log(Emc)+0.01098)/(4*Fsm);
end
