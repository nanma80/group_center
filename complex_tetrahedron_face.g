Print("Complex face-turning tetrahedron:\n");
reorient := Group([PermList([1,3,5,7,2,4,6,8,9,11,13,15,10,12,14,16]),PermList([1,9,2,10,5,13,6,14,3,11,4,12,7,15,8,16]),PermList([1,5,3,7,9,13,11,15,2,6,4,8,10,14,12,16]),PermList([1,2,9,10,3,4,11,12,5,6,13,14,7,8,15,16])]);
types:=Orbits(reorient,[1..16]);
Print("There are ",Length(types), " types of pieces: \n",types,"\n");
pieces := Group([PermList([1,2,3,4,5,6,7,8,9,11,13,15,10,12,14,16]),PermList([1,2,3,4,5,13,6,14,9,10,11,12,7,15,8,16]),PermList([1,2,3,7,5,6,11,15,9,10,4,8,13,14,12,16]),PermList([1,2,3,10,5,4,7,12,9,6,11,14,13,8,15,16])]);
Print("Group of permutation of pieces constructed.\nCalculating the size of this group.\n");
size_pieces:=Size(pieces);
Print("Number of permutations of pieces (ignoring orientation): \n",size_pieces,"\n");
stickers := Group([PermList([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,36,34,35,41,44,42,43,49,52,50,51,57,60,58,59,37,40,38,39,45,48,46,47,53,56,54,55,61,64,62,63]),PermList([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,19,18,20,17,51,50,52,49,23,22,24,21,55,54,56,53,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,27,26,28,25,59,58,60,57,31,30,32,29,63,62,64,61]),PermList([1,2,3,4,5,6,7,8,12,9,11,10,28,25,27,26,17,18,19,20,21,22,23,24,44,41,43,42,60,57,59,58,33,34,35,36,37,38,39,40,16,13,15,14,32,29,31,30,49,50,51,52,53,54,55,56,48,45,47,46,64,61,63,62]),PermList([1,2,3,4,6,7,5,8,9,10,11,12,38,39,37,40,17,18,19,20,14,15,13,16,25,26,27,28,46,47,45,48,33,34,35,36,22,23,21,24,41,42,43,44,54,55,53,56,49,50,51,52,30,31,29,32,57,58,59,60,62,63,61,64])]);
Print("Group of permutation of stickers constructed.\nCalculating the size of this group.\n");
size_stickers:=Size(stickers);
Print("Number of permutations of stickers (considering orientation): \n",size_stickers,"\n");
# Center(stickers);
# <permutation group of size 54 with 7 generators>
