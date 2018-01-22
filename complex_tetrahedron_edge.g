Print("Complex edge-turning tetrahedron:\n");
reorient := Group([PermList([1,9,17,25,5,13,21,29,2,10,18,26,6,14,22,30,3,11,19,27,7,15,23,31,4,12,20,28,8,16,24,32,33,41,49,57,37,45,53,61,34,42,50,58,38,46,54,62,35,43,51,59,39,47,55,63,36,44,52,60,40,48,56,64]),PermList([1,9,3,11,33,41,35,43,2,10,4,12,34,42,36,44,17,25,19,27,49,57,51,59,18,26,20,28,50,58,52,60,5,13,7,15,37,45,39,47,6,14,8,16,38,46,40,48,21,29,23,31,53,61,55,63,22,30,24,32,54,62,56,64]),PermList([1,2,17,18,33,34,49,50,9,10,25,26,41,42,57,58,3,4,19,20,35,36,51,52,11,12,27,28,43,44,59,60,5,6,21,22,37,38,53,54,13,14,29,30,45,46,61,62,7,8,23,24,39,40,55,56,15,16,31,32,47,48,63,64]),PermList([1,9,17,25,5,13,21,29,2,10,18,26,6,14,22,30,3,11,19,27,7,15,23,31,4,12,20,28,8,16,24,32,33,41,49,57,37,45,53,61,34,42,50,58,38,46,54,62,35,43,51,59,39,47,55,63,36,44,52,60,40,48,56,64]),PermList([1,9,3,11,33,41,35,43,2,10,4,12,34,42,36,44,17,25,19,27,49,57,51,59,18,26,20,28,50,58,52,60,5,13,7,15,37,45,39,47,6,14,8,16,38,46,40,48,21,29,23,31,53,61,55,63,22,30,24,32,54,62,56,64]),PermList([1,2,17,18,33,34,49,50,9,10,25,26,41,42,57,58,3,4,19,20,35,36,51,52,11,12,27,28,43,44,59,60,5,6,21,22,37,38,53,54,13,14,29,30,45,46,61,62,7,8,23,24,39,40,55,56,15,16,31,32,47,48,63,64])]);
types:=Orbits(reorient,[1..64]);
Print("There are ",Length(types), " types of pieces: \n",types,"\n");
pieces := Group([PermList([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,41,49,57,37,45,53,61,34,42,50,58,38,46,54,62,35,43,51,59,39,47,55,63,36,44,52,60,40,48,56,64]),PermList([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,25,19,27,49,57,51,59,18,26,20,28,50,58,52,60,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,21,29,23,31,53,61,55,63,22,30,24,32,54,62,56,64]),PermList([1,2,3,4,5,6,7,8,9,10,25,26,41,42,57,58,17,18,19,20,21,22,23,24,11,12,27,28,43,44,59,60,33,34,35,36,37,38,39,40,13,14,29,30,45,46,61,62,49,50,51,52,53,54,55,56,15,16,31,32,47,48,63,64]),PermList([1,2,3,4,5,13,21,29,9,10,11,12,6,14,22,30,17,18,19,20,7,15,23,31,25,26,27,28,8,16,24,32,33,34,35,36,37,45,53,61,41,42,43,44,38,46,54,62,49,50,51,52,39,47,55,63,57,58,59,60,40,48,56,64]),PermList([1,2,3,11,5,6,35,43,9,10,4,12,13,14,36,44,17,18,19,27,21,22,51,59,25,26,20,28,29,30,52,60,33,34,7,15,37,38,39,47,41,42,8,16,45,46,40,48,49,50,23,31,53,54,55,63,57,58,24,32,61,62,56,64]),PermList([1,2,3,18,5,34,7,50,9,10,11,26,13,42,15,58,17,4,19,20,21,36,23,52,25,12,27,28,29,44,31,60,33,6,35,22,37,38,39,54,41,14,43,30,45,46,47,62,49,8,51,24,53,40,55,56,57,16,59,32,61,48,63,64])]);
Print("Group of permutation of pieces constructed.\nCalculating the size of this group.\n");
size_pieces:=Size(pieces);
Print("Number of permutations of pieces (ignoring orientation): \n",size_pieces,"\n");
stickers := Group([PermList([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,192,193,197,198,196,194,195,241,245,246,244,242,243,289,293,294,292,290,291,337,341,342,340,338,339,217,221,222,220,218,219,265,269,270,268,266,267,313,317,318,316,314,315,361,365,366,364,362,363,199,203,204,202,200,201,247,251,252,250,248,249,295,299,300,298,296,297,343,347,348,346,344,345,223,227,228,226,224,225,271,275,276,274,272,273,319,323,324,322,320,321,367,371,372,370,368,369,205,209,210,208,206,207,253,257,258,256,254,255,301,305,306,304,302,303,349,353,354,352,350,351,229,233,234,232,230,231,277,281,282,280,278,279,325,329,330,328,326,327,373,377,378,376,374,375,211,215,216,214,212,213,259,263,264,262,260,261,307,311,312,310,308,309,355,359,360,358,356,357,235,239,240,238,236,237,283,287,288,286,284,285,331,335,336,334,332,333,379,383,384,382,380,381]),PermList([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,100,98,102,97,101,99,148,146,150,145,149,147,112,110,114,109,113,111,160,158,162,157,161,159,292,290,294,289,293,291,340,338,342,337,341,339,304,302,306,301,305,303,352,350,354,349,353,351,106,104,108,103,107,105,154,152,156,151,155,153,118,116,120,115,119,117,166,164,168,163,167,165,298,296,300,295,299,297,346,344,348,343,347,345,310,308,312,307,311,309,358,356,360,355,359,357,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288,124,122,126,121,125,123,172,170,174,169,173,171,136,134,138,133,137,135,184,182,186,181,185,183,316,314,318,313,317,315,364,362,366,361,365,363,328,326,330,325,329,327,376,374,378,373,377,375,130,128,132,127,131,129,178,176,180,175,179,177,142,140,144,139,143,141,190,188,192,187,191,189,322,320,324,319,323,321,370,368,372,367,371,369,334,332,336,331,335,333,382,380,384,379,383,381]),PermList([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,52,53,51,49,50,54,58,59,57,55,56,60,148,149,147,145,146,150,154,155,153,151,152,156,244,245,243,241,242,246,250,251,249,247,248,252,340,341,339,337,338,342,346,347,345,343,344,348,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,64,65,63,61,62,66,70,71,69,67,68,72,160,161,159,157,158,162,166,167,165,163,164,168,256,257,255,253,254,258,262,263,261,259,260,264,352,353,351,349,350,354,358,359,357,355,356,360,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,240,76,77,75,73,74,78,82,83,81,79,80,84,172,173,171,169,170,174,178,179,177,175,176,180,268,269,267,265,266,270,274,275,273,271,272,276,364,365,363,361,362,366,370,371,369,367,368,372,289,290,291,292,293,294,295,296,297,298,299,300,301,302,303,304,305,306,307,308,309,310,311,312,313,314,315,316,317,318,319,320,321,322,323,324,325,326,327,328,329,330,331,332,333,334,335,336,88,89,87,85,86,90,94,95,93,91,92,96,184,185,183,181,182,186,190,191,189,187,188,192,280,281,279,277,278,282,286,287,285,283,284,288,376,377,375,373,374,378,382,383,381,379,380,384]),PermList([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,29,30,28,26,27,73,77,78,76,74,75,121,125,126,124,122,123,169,173,174,172,170,171,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,31,35,36,34,32,33,79,83,84,82,80,81,127,131,132,130,128,129,175,179,180,178,176,177,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,37,41,42,40,38,39,85,89,90,88,86,87,133,137,138,136,134,135,181,185,186,184,182,183,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,43,47,48,46,44,45,91,95,96,94,92,93,139,143,144,142,140,141,187,191,192,190,188,189,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,221,222,220,218,219,265,269,270,268,266,267,313,317,318,316,314,315,361,365,366,364,362,363,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,223,227,228,226,224,225,271,275,276,274,272,273,319,323,324,322,320,321,367,371,372,370,368,369,289,290,291,292,293,294,295,296,297,298,299,300,301,302,303,304,305,306,307,308,309,310,311,312,229,233,234,232,230,231,277,281,282,280,278,279,325,329,330,328,326,327,373,377,378,376,374,375,337,338,339,340,341,342,343,344,345,346,347,348,349,350,351,352,353,354,355,356,357,358,359,360,235,239,240,238,236,237,283,287,288,286,284,285,331,335,336,334,332,333,379,383,384,382,380,381]),PermList([1,2,3,4,5,6,7,8,9,10,11,12,16,14,18,13,17,15,64,62,66,61,65,63,25,26,27,28,29,30,31,32,33,34,35,36,208,206,210,205,209,207,256,254,258,253,257,255,49,50,51,52,53,54,55,56,57,58,59,60,22,20,24,19,23,21,70,68,72,67,71,69,73,74,75,76,77,78,79,80,81,82,83,84,214,212,216,211,215,213,262,260,264,259,263,261,97,98,99,100,101,102,103,104,105,106,107,108,112,110,114,109,113,111,160,158,162,157,161,159,121,122,123,124,125,126,127,128,129,130,131,132,304,302,306,301,305,303,352,350,354,349,353,351,145,146,147,148,149,150,151,152,153,154,155,156,118,116,120,115,119,117,166,164,168,163,167,165,169,170,171,172,173,174,175,176,177,178,179,180,310,308,312,307,311,309,358,356,360,355,359,357,193,194,195,196,197,198,199,200,201,202,203,204,40,38,42,37,41,39,88,86,90,85,89,87,217,218,219,220,221,222,223,224,225,226,227,228,232,230,234,229,233,231,280,278,282,277,281,279,241,242,243,244,245,246,247,248,249,250,251,252,46,44,48,43,47,45,94,92,96,91,95,93,265,266,267,268,269,270,271,272,273,274,275,276,238,236,240,235,239,237,286,284,288,283,287,285,289,290,291,292,293,294,295,296,297,298,299,300,136,134,138,133,137,135,184,182,186,181,185,183,313,314,315,316,317,318,319,320,321,322,323,324,328,326,330,325,329,327,376,374,378,373,377,375,337,338,339,340,341,342,343,344,345,346,347,348,142,140,144,139,143,141,190,188,192,187,191,189,361,362,363,364,365,366,367,368,369,370,371,372,334,332,336,331,335,333,382,380,384,379,383,381]),PermList([1,2,3,4,5,6,10,11,9,7,8,12,13,14,15,16,17,18,106,107,105,103,104,108,25,26,27,28,29,30,202,203,201,199,200,204,37,38,39,40,41,42,298,299,297,295,296,300,49,50,51,52,53,54,58,59,57,55,56,60,61,62,63,64,65,66,154,155,153,151,152,156,73,74,75,76,77,78,250,251,249,247,248,252,85,86,87,88,89,90,346,347,345,343,344,348,97,98,99,100,101,102,22,23,21,19,20,24,109,110,111,112,113,114,118,119,117,115,116,120,121,122,123,124,125,126,214,215,213,211,212,216,133,134,135,136,137,138,310,311,309,307,308,312,145,146,147,148,149,150,70,71,69,67,68,72,157,158,159,160,161,162,166,167,165,163,164,168,169,170,171,172,173,174,262,263,261,259,260,264,181,182,183,184,185,186,358,359,357,355,356,360,193,194,195,196,197,198,34,35,33,31,32,36,205,206,207,208,209,210,130,131,129,127,128,132,217,218,219,220,221,222,226,227,225,223,224,228,229,230,231,232,233,234,322,323,321,319,320,324,241,242,243,244,245,246,82,83,81,79,80,84,253,254,255,256,257,258,178,179,177,175,176,180,265,266,267,268,269,270,274,275,273,271,272,276,277,278,279,280,281,282,370,371,369,367,368,372,289,290,291,292,293,294,46,47,45,43,44,48,301,302,303,304,305,306,142,143,141,139,140,144,313,314,315,316,317,318,238,239,237,235,236,240,325,326,327,328,329,330,334,335,333,331,332,336,337,338,339,340,341,342,94,95,93,91,92,96,349,350,351,352,353,354,190,191,189,187,188,192,361,362,363,364,365,366,286,287,285,283,284,288,373,374,375,376,377,378,382,383,381,379,380,384])]);
Print("Group of permutation of stickers constructed.\nCalculating the size of this group.\n");
size_stickers:=Size(stickers);
Print("Number of permutations of stickers (considering orientation): \n",size_stickers,"\n");
# Center(stickers);
# <permutation group of size 64 with 6 generators>
