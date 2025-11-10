// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const BitsSignedResB32Be = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*BitsSignedResB32Be) !*BitsSignedResB32Be {
        const self = try _arena.allocator().create(BitsSignedResB32Be);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const BitsSignedResB32Be) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *BitsSignedResB32Be) !void {
        self.a = try self._io.readBitsIntBe(32);
    }
    a: u64 = undefined,
    _root: ?*BitsSignedResB32Be,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
