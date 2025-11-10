// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const EofExceptionBitsBe = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*EofExceptionBitsBe) !*EofExceptionBitsBe {
        const self = try _arena.allocator().create(EofExceptionBitsBe);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        return self;
    }
    fn _allocator(self: *const EofExceptionBitsBe) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    pub fn _read(self: *EofExceptionBitsBe) !void {
        self.pre_bits = try self._io.readBitsIntBe(7);
        self.fail_bits = try self._io.readBitsIntBe(18);
    }
    pre_bits: u64 = undefined,
    fail_bits: u64 = undefined,
    _root: ?*EofExceptionBitsBe,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
