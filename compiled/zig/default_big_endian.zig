// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const DefaultBigEndian = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*DefaultBigEndian) !*DefaultBigEndian {
        const self = try _arena.allocator().create(DefaultBigEndian);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const DefaultBigEndian) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *DefaultBigEndian) !void {
        self.one = try self._io.readU4be();
    }
    one: u32 = undefined,
    _root: ?*DefaultBigEndian,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
