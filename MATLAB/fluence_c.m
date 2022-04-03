function y_i = fluence_c(X1,X2,Y1,Y2,diso,dl,z,k_c)
%fluence collimator

    y_upper = (diso-dl)^2;
    y_lower = (diso-dl-z)^2;
    y_i = k_c*2*(X1+X2+Y1+Y2)*(y_upper/y_lower);
end