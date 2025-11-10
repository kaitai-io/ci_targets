// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const EofExceptionBitsLe = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*EofExceptionBitsLe) !*EofExceptionBitsLe {
        const self = try _arena.allocator().create(EofExceptionBitsLe);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        return self;
    }
    fn _allocator(self: *const EofExceptionBitsLe) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    pub fn _read(self: *EofExceptionBitsLe) !void {
        self.pre_bits = try self._io.readBitsIntLe(7);
        self.fail_bits = try self._io.readBitsIntLe(18);
    }
    pre_bits: u64 = undefined,
    fail_bits: u64 = undefined,
    _root: ?*EofExceptionBitsLe,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
