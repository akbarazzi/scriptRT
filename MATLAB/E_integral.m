function E_i = E_integral(Xv,Yv,eu,el)
%Integration of extra focal source for each quadran field
%note that X is for the lower collimator and Y for upper collimator
%Xv = Jaw X virtual on that quadran
%Yv = Jaw Y virtual on that quadran
%eu = extra focal on the isocenter respect to upper collimator
%el = extra focal on the isocenter respect to lower collimator
    A = 3;
    X_e = Xv/el;
    Y_e = Yv/eu;
    E_i = A*X_e(Y_e-Y_e^2-((1/3)*X_e^2));
end