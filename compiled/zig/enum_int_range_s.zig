// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const EnumIntRangeS = struct {
    pub const Constants = enum(i32) {
        int_min = -2147483648,
        zero = 0,
        int_max = 2147483647,
        _,
    };
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*EnumIntRangeS) !*EnumIntRangeS {
        const self = try _arena.allocator().create(EnumIntRangeS);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const EnumIntRangeS) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *EnumIntRangeS) !void {
        self.f1 = @as(EnumIntRangeS.Constants, @enumFromInt(try self._io.readS4be()));
        self.f2 = @as(EnumIntRangeS.Constants, @enumFromInt(try self._io.readS4be()));
        self.f3 = @as(EnumIntRangeS.Constants, @enumFromInt(try self._io.readS4be()));
    }
    f1: Constants = undefined,
    f2: Constants = undefined,
    f3: Constants = undefined,
    _root: ?*EnumIntRangeS,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
