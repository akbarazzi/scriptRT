function tri = triangle(diso, z, Jaws)
%function for congruent triangle
    dtri = diso-z;
    tri = Jaws/diso*(dtri);
end
