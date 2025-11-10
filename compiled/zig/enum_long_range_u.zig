// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const EnumLongRangeU = struct {
    pub const Constants = enum(i32) {
        zero = 0,
        int_max = 4294967295,
        int_over_max = 4294967296,
        long_max = 9223372036854775807,
        _,
    };
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*EnumLongRangeU) !*EnumLongRangeU {
        const self = try _arena.allocator().create(EnumLongRangeU);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const EnumLongRangeU) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *EnumLongRangeU) !void {
        self.f1 = @as(EnumLongRangeU.Constants, @enumFromInt(try self._io.readU8be()));
        self.f2 = @as(EnumLongRangeU.Constants, @enumFromInt(try self._io.readU8be()));
        self.f3 = @as(EnumLongRangeU.Constants, @enumFromInt(try self._io.readU8be()));
        self.f4 = @as(EnumLongRangeU.Constants, @enumFromInt(try self._io.readU8be()));
    }
    f1: Constants = undefined,
    f2: Constants = undefined,
    f3: Constants = undefined,
    f4: Constants = undefined,
    _root: ?*EnumLongRangeU,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
