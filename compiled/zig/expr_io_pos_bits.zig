// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const ExprIoPosBits = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ExprIoPosBits) !*ExprIoPosBits {
        const self = try _arena.allocator().create(ExprIoPosBits);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ExprIoPosBits) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ExprIoPosBits) !void {
        self.foo = try self._io.readBitsIntBe(3);
        if (self._io.pos() == 1) {
            self.bar = try self._io.readBitsIntBe(5);
        }
        if (self._io.pos() == 1) {
            self.baz = try self._io.readBitsIntBe(1) != 0;
        }
        if (self._io.pos() == 2) {
            self.qux = try self._io.readBitsIntBe(7);
        }
    }
    foo: u64 = undefined,
    bar: ?u64 = null,
    baz: ?bool = null,
    qux: ?u64 = null,
    _root: ?*ExprIoPosBits,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
