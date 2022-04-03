function eL = e_lower_value(e,de,diso,dl)
%diameter extra focal spot on isocenter
%e = diameter of extra focal spot (from e_value)
%de = distance source to lower extra focal attenuator (mainly flattening filter)
%diso = distance source to isocenter
%dl = distance source to upper tip of lower collimator
    diso_ratio = (diso-dl)/(diso-de);
    eL = e*diso_ratio*(diso/dl);
end