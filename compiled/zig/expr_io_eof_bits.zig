// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const ExprIoEofBits = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ExprIoEofBits) !*ExprIoEofBits {
        const self = try _arena.allocator().create(ExprIoEofBits);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        return self;
    }
    fn _allocator(self: *const ExprIoEofBits) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    pub fn _read(self: *ExprIoEofBits) !void {
        self.foo = try self._io.readBitsIntBe(20);
        if (!((try self._io.isEof()))) {
            self.bar = try self._io.readBitsIntBe(4);
        }
        if (!((try self._io.isEof()))) {
            self.baz = try self._io.readBitsIntBe(16);
        }
        self.align = try self._io.readBytes(self._allocator(), 0);
        if (!((try self._io.isEof()))) {
            self.qux = try self._io.readBitsIntBe(16);
        }
    }
    foo: u64 = undefined,
    bar: ?u64 = null,
    baz: ?u64 = null,
    align: []const u8 = undefined,
    qux: ?u64 = null,
    _root: ?*ExprIoEofBits,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
