# http://www.cubeman.org/megalink.html
dod := Group (
 (1,9,7,5,3)(50,40,30,200,11)(52,42,32,22,13)(2,10,8,6,4)(51,41,31,21,12),
 (11,13,15,17,19)(3,200,72,62,54)(5,28,70,60,52)(12,14,16,18,20)(4,29,71,61,53),
 (200,22,24,26,28)(5,30,82,74,15)(7,38,80,72,13)(21,23,25,27,29)(6,39,81,73,14),
 (30,32,34,36,38)(7,40,92,84,24)(9,48,90,82,22)(31,33,35,37,39)(8,49,91,83,23),
 (40,42,44,46,48)(9,50,114,94,34)(1,58,112,92,32)(41,43,45,47,49)(10,59,113,93,33),
 (50,52,54,56,58)(1,11,60,116,44)(3,19,68,114,42)(51,53,55,57,59)(2,20,69,115,43),
 (60,62,64,66,68)(19,70,106,118,56)(17,78,104,116,54)(61,63,65,67,69)(18,79,105,117,55),
 (70,72,74,76,78)(17,28,80,108,64)(15,26,88,106,62)(71,73,75,77,79)(16,27,89,107,63),
 (80,82,84,86,88)(26,38,90,100,76)(24,36,98,108,74)(81,83,85,87,89)(25,37,99,109,75),
 (90,92,94,96,98)(36,48,112,102,86)(34,46,110,100,84)(91,93,95,97,99)(35,47,111,101,85),
 (100,102,104,106,108)(98,110,66,78,88)(96,118,64,76,86)(101,103,105,107,109)(97,119,65,77,87),
 (110,112,114,116,118)(96,46,58,68,104)(94,44,56,66,102)(111,113,115,117,119)(95,45,57,67,103)
         );;

center := Center(dod);
center_size := Size(center);
Print(center);