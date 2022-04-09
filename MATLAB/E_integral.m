function E_i = E_integral(Xv,Yv,eu,el)
%Integration of extra focal source for each quadran field
%note that X is for the lower collimator and Y for upper collimator
%Xv = Jaw X virtual on that quadran
%Yv = Jaw Y virtual on that quadran
%eu = extra focal on the isocenter respect to upper collimator
%el = extra focal on the isocenter respect to lower collimator
    A = 3;
    Xe = Xv/el;
    Ye = Yv/eu;
    E_i = A*Xe*(Ye-(Ye^2)-((Xe^2)/3));
end