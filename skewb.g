# I don't know the notation. From http://www.cubeman.org/skewb.txt
skewb_others := Group(
    ( 1,11,17) ( 2,12,20)( 4,10,18)(22, 6,14) (25,27,29),
    ( 2,10,22) ( 1, 9,23)( 3,11,21)(17, 5,15) (25,27,30),
    ( 4,14,20) ( 1,15,19)( 3,13,17)( 7,11,23) (25,28,29),
    ( 6,12,18) ( 5,11,19)( 7, 9,17)(21, 1,13) (26,27,29)
);

skewb_4gen := Group(
    ( 1, 2, 3)( 4, 5, 6)( 7, 8, 9)(10,11,12)(13,14,15),
    (16,17,18)( 1,19,20)(10,21,14)( 7,13,22)( 9,23,11),
    (24,25,26)( 3,27,19)( 9,15,21)(12,23,13)( 8,22,10),
    (28,29,30)( 2,27,20)(11,15,22)( 8,23,14)(12,21, 7)
);

skewb_8gen := Group(
    ( 1, 2, 3)( 4, 5, 6)( 7, 8, 9)(10,11,12)(13,14,15),
    (16,17,18)( 1,19,20)(10,21,14)( 7,13,22)( 9,23,11),
    (24,25,26)( 3,27,19)( 9,15,21)(12,23,13)( 8,22,10),
    (28,29,30)( 2,27,20)(11,15,22)( 8,23,14)(12,21, 7),
    ( 1, 2,20)( 7,11,14)(16, 5,30)( 4,28,18)( 6,29,17),
    ( 1, 3,19)(10, 9,13)(16, 6,26)( 4,24,17)( 5,25,18),
    (21,22,23)(19,20,27)(17,30,25)(18,29,26)(16,28,24),
    (12, 8,15)( 3, 2,27)(24, 5,29)( 6,28,25)( 4,30,26)
);

Print(Size(skewb_others),"\n");
Print("Skewb 4 gen",Size(skewb_4gen),"\n");
Print("Skewb 8 gen",Size(skewb_8gen),"\n");

center_4gen := Center(skewb_4gen);
center_4gen_size := Size(center_4gen);
Print(center_4gen, "\n");

center_8gen := Center(skewb_8gen);
center_8gen_size := Size(center_8gen);
Print(center_8gen, "\n");