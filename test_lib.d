module test_lib;

int sqr (int a) { return a*a; }

unittest {
    static assert(2.sqr == 4);
    static assert((-1).sqr == 1);
    assert (2.sqr == 4);
}