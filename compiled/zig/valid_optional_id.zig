// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const ValidOptionalId = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ValidOptionalId) !*ValidOptionalId {
        const self = try _arena.allocator().create(ValidOptionalId);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ValidOptionalId) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ValidOptionalId) !void {
        self._unnamed0 = try self._io.readBytes(self._allocator(), 6);
        if (!(_imp_std.mem.eql(u8, self._unnamed0, &[_]u8{ 80, 65, 67, 75, 45, 49 }))) {
            return error.ValidationNotEqualError;
        }
        self._unnamed1 = try self._io.readU1();
        if (!(self._unnamed1 == 255)) {
            return error.ValidationNotEqualError;
        }
        self._unnamed2 = try self._io.readS1();
        {
            const _it = self._unnamed2;
            if (!(_it == -1)) {
                return error.ValidationExprError;
            }
        }
    }
    _unnamed0: []const u8 = undefined,
    _unnamed1: u8 = undefined,
    _unnamed2: i8 = undefined,
    _root: ?*ValidOptionalId,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
