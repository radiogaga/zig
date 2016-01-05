export executable "hello";

#link("c")
extern {
    fn printf(__format: &const u8, ...) -> i32;
    fn exit(__status: i32) -> unreachable;
}

export fn main(argc: i32, argv: &&u8, env: &&u8) -> i32 {
    printf(c"Hello, world!\n");
    return 0;
}