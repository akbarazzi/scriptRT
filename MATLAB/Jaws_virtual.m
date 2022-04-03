function [Jaws_v,x_v] = Jaws_virtual(XY,point,Jaws,de,du,dl,diso,z)
%Jaws position and virtual coordinate respect to point of calculated which not in the isocenter
%Output Jaws_v = integration of extra focal spot; x_v = virtual coordinate
%XY = string, 'X' or 'Y' jaws
%point = point coordinate (+X1,-X2,+Y1,-Y2)
%Jaws = assymetric opening of jaws on isocenter (X1,X2,Y1,Y2)
%de = distance source to lower extra focal attenuator (mainly flattening filter)
%dl = distance source to upper tip of lower collimator
%du = distance source to upper tip of upper collimator
%diso = distance source to isocenter
%z = position of calcultion to depth (upper isocenter +z, lower -z)
if XY == 'X'
    dl_ratio = dl/diso;
    dl_ratio_z = (diso-dl)/(diso-dl-z);
    dl_de_ratio = (dl-de)/(diso-de);
    
    x_v = dl_ratio*Jaws+(point-(dl_ratio*Jaws))*dl_ratio_z;
    Jaws_v = Jaws-(x_v*(1/dl_ratio)*dl_de_ratio);
elseif XY == 'Y'
    du_ratio = du/diso;
    du_ratio_z = (diso-du)/(diso-du-z);
    du_de_ratio = (du-de)/(diso-de);
    
    x_v = du_ratio*Jaws+(point-(du_ratio*Jaws))*du_ratio_z;
    Jaws_v = Jaws-(x_v*(1/du_ratio)*du_de_ratio);
end
