// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const EnumIntRangeU = struct {
    pub const Constants = enum(i32) {
        zero = 0,
        int_max = 4294967295,
        _,
    };
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*EnumIntRangeU) !*EnumIntRangeU {
        const self = try _arena.allocator().create(EnumIntRangeU);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const EnumIntRangeU) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *EnumIntRangeU) !void {
        self.f1 = @as(EnumIntRangeU.Constants, @enumFromInt(try self._io.readU4be()));
        self.f2 = @as(EnumIntRangeU.Constants, @enumFromInt(try self._io.readU4be()));
    }
    f1: Constants = undefined,
    f2: Constants = undefined,
    _root: ?*EnumIntRangeU,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
