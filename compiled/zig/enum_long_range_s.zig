// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const EnumLongRangeS = struct {
    pub const Constants = enum(i32) {
        long_min = -9223372036854775808,
        int_below_min = -2147483649,
        int_min = -2147483648,
        zero = 0,
        int_max = 2147483647,
        int_over_max = 2147483648,
        long_max = 9223372036854775807,
        _,
    };
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*EnumLongRangeS) !*EnumLongRangeS {
        const self = try _arena.allocator().create(EnumLongRangeS);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const EnumLongRangeS) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *EnumLongRangeS) !void {
        self.f1 = @as(EnumLongRangeS.Constants, @enumFromInt(try self._io.readS8be()));
        self.f2 = @as(EnumLongRangeS.Constants, @enumFromInt(try self._io.readS8be()));
        self.f3 = @as(EnumLongRangeS.Constants, @enumFromInt(try self._io.readS8be()));
        self.f4 = @as(EnumLongRangeS.Constants, @enumFromInt(try self._io.readS8be()));
        self.f5 = @as(EnumLongRangeS.Constants, @enumFromInt(try self._io.readS8be()));
        self.f6 = @as(EnumLongRangeS.Constants, @enumFromInt(try self._io.readS8be()));
        self.f7 = @as(EnumLongRangeS.Constants, @enumFromInt(try self._io.readS8be()));
    }
    f1: Constants = undefined,
    f2: Constants = undefined,
    f3: Constants = undefined,
    f4: Constants = undefined,
    f5: Constants = undefined,
    f6: Constants = undefined,
    f7: Constants = undefined,
    _root: ?*EnumLongRangeS,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
