// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const EofExceptionBitsLe2 = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*EofExceptionBitsLe2) !*EofExceptionBitsLe2 {
        const self = try _arena.allocator().create(EofExceptionBitsLe2);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        return self;
    }
    fn _allocator(self: *const EofExceptionBitsLe2) std.mem.Allocator {
        return self._arena.allocator();
    }
    pub fn _read(self: *EofExceptionBitsLe2) !void {
        self.pre_bits = try self._io.readBitsIntLe(8);
        self.fail_bits = try self._io.readBitsIntLe(17);
    }
    pre_bits: u64 = undefined,
    fail_bits: u64 = undefined,
    _root: ?*EofExceptionBitsLe2,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
