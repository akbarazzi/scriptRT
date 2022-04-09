function a_i = angle_corr(Emc,x,y,xc,yc,de,diso,z)
%angle correction of ray tracing x-ray as an impact of scatter interaction
%(compton)
%Emc = nominal energy linac (MV)
%x = x position on calcuation point
%y = y position on calcuation point
%xc = x position on extra focal source plane
%yc = y position on extra focal source plane
%de = distance source to lower extra focal attenuator (mainly flattening filter)
%diso = distance source to isocenter
%z = position of calcultion to depth (upper isocenter +z, lower -z)
    xxc = x-xc;
    yyc = y-yc;
    diso_d = diso-de-z;
    sq = sqrt(xc^2+yc^2+de);
    sqq = sqrt(xxc^2+yyc^2+diso_d^2);
    a_upper = x*xxc+y*yyc+de*diso_d;
    a_lower = sq*sqq;
    a = acos(a_upper/a_lower);
    a_i = Emc*a;
end
