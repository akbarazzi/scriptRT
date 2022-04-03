function y_i = fluence_e(x,y,de,diso,z,E,cang,k_e)
%fluence from extra focal source
%x = x position on calcuation point
%y = y position on calcuation point
%de = distance source to lower extra focal attenuator (mainly flattening filter)
%diso = distance source to isocenter
%z = position of calcultion to depth (upper isocenter +z, lower -z)
%E = integral extra focal of all quadran
%cang = angle correction
%k_e = fluence constant for extra focal source
    y_upper = (diso-de)^2;
    y_lower = (x^2+y^2+(diso-de-z)^2);
    y_i = k_e*E*(y_upper/y_lower)*cang;
end