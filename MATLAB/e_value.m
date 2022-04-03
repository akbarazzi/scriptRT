function e = e_value(Fsm, de, diso)
%diameter of extra focal source
%Fsm = field size maximum
%de = distance source to lower extra focal attenuator (mainly flattening filter)
%diso = distance source to isocenter
    e = sqrt(pi/2)*Fsm*(de/diso);
end