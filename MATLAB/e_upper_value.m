function eU = e_upper_value(e,de,diso,du)
%diameter extra focal spot on isocenter
%e = diameter of extra focal spot (from e_value)
%de = distance source to lower extra focal attenuator (mainly flattening filter)
%diso = distance source to isocenter
%du = distance source to upper tip of upper collimator
    diso_ratio = (diso-du)/(diso-de);
    eU = e*diso_ratio*(diso/du);
end