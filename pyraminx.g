# without turning trivial tips
pyraminx := Group(
    ( 1, 2, 3)(4,5,6)(7,8,9),
    (10,11,12)(4,13,14)(7,15,16),
    (17,18,19)(9,20,14)(6,21,16),
    (22,23,24)(8,13,21)(5,15,20)
);

Print(Size(pyraminx),"\n");
center := Center(pyraminx);
center_size := Size(center);
Print(center, "\n");
