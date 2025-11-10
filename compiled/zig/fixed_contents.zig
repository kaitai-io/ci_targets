// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const FixedContents = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*FixedContents) !*FixedContents {
        const self = try _arena.allocator().create(FixedContents);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const FixedContents) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *FixedContents) !void {
        self.normal = try self._io.readBytes(self._allocator(), 6);
        if (!(_imp_std.mem.eql(u8, self.normal, &[_]u8{ 80, 65, 67, 75, 45, 49 }))) {
            return error.ValidationNotEqualError;
        }
        self.high_bit_8 = try self._io.readBytes(self._allocator(), 2);
        if (!(_imp_std.mem.eql(u8, self.high_bit_8, &[_]u8{ 255, 255 }))) {
            return error.ValidationNotEqualError;
        }
    }
    normal: []const u8 = undefined,
    high_bit_8: []const u8 = undefined,
    _root: ?*FixedContents,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
