// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const EofExceptionBitsBe2 = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*EofExceptionBitsBe2) !*EofExceptionBitsBe2 {
        const self = try _arena.allocator().create(EofExceptionBitsBe2);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        return self;
    }
    fn _allocator(self: *const EofExceptionBitsBe2) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    pub fn _read(self: *EofExceptionBitsBe2) !void {
        self.pre_bits = try self._io.readBitsIntBe(8);
        self.fail_bits = try self._io.readBitsIntBe(17);
    }
    pre_bits: u64 = undefined,
    fail_bits: u64 = undefined,
    _root: ?*EofExceptionBitsBe2,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
