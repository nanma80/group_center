# without 1C triangles. Should not matter
fto := Group(
  ( 1, 2, 3)( 4, 5, 6)( 7, 8, 9)(10,11,12)(13,14,15)(16,17,18), # front up
  (37, 9, 6)(38,11, 3)(12,40, 2)(39, 5, 7)(42,41,18)(43,48,15), # back up
  (10,27,21)( 4,28,26)(19, 8,30)( 1,31,20)(25,29,32)(23,33,34), # front down
  (39,30,26)(38,31,21)(20,40,27)(37,28,19)(45,46,34)(44,47,32), # back down
  ( 4, 7,19)(10, 3,20)(21, 1,12)( 8, 6,26)(16,22,23)(13,24,25), # front right
  (38,12,20)(39, 6,19)(26,37, 7)(40, 3,21)(43,24,44)(42,22,45), # back right
  ( 8, 5,28)(10, 2,31)(27, 1,11)( 4, 9,30)(17,35,33)(14,36,29), # front left
  (40,11,31)(39, 9,28)(30,37, 5)(38, 2,27)(48,36,47)(41,35,46)  # back left
);

Print("Size of puzzle: ",Size(fto),"\n");
center := Center(fto);
center_size := Size(center);
Print("Size of center: ",center_size,"\n");
Print("Center: ", center, "\n");
Print("Generators of center: ", GeneratorsOfGroup(center), "\n");
Print("Number of generators of center: ", Size(GeneratorsOfGroup(center)), "\n");
