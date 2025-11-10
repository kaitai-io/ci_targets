// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const ParamsPassArrayStr = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ParamsPassArrayStr) !*ParamsPassArrayStr {
        const self = try _arena.allocator().create(ParamsPassArrayStr);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ParamsPassArrayStr) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ParamsPassArrayStr) !void {
        self.str_array = try self._allocator().create(_imp_std.ArrayList([]const u8));
        self.str_array.* = .empty;
        for (0..3) |i| {
            {
                const _maybe_unused = i;
                _ = _maybe_unused;
            }
            try self.str_array.append(self._allocator(), (try _imp_kaitai_struct.KaitaiStream.bytesToStr(self._allocator(), try self._io.readBytes(self._allocator(), 2), "ASCII")));
        }
        self.pass_str_array = try WantsStrs.create(self._arena, self._io, self, self._root, self.str_array);
        self.pass_str_array_calc = try WantsStrs.create(self._arena, self._io, self, self._root, (try self.strArrayCalc()));
    }
    pub const WantsStrs = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*ParamsPassArrayStr, _root: ?*ParamsPassArrayStr, strs: *_imp_std.ArrayList([]const u8)) !*WantsStrs {
            const self = try _arena.allocator().create(WantsStrs);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            self.strs = strs;
            try self._read();
            return self;
        }
        fn _allocator(self: *const WantsStrs) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *WantsStrs) !void {
            _ = self;
        }
        strs: *_imp_std.ArrayList([]const u8) = undefined,
        _root: ?*ParamsPassArrayStr,
        _parent: ?*ParamsPassArrayStr,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    pub fn strArrayCalc(self: *ParamsPassArrayStr) !*_imp_std.ArrayList([]const u8) {
        if (self._m_str_array_calc) |_v|
            return _v;
        var _v: *_imp_std.ArrayList([]const u8) = undefined;
        _v = _imp_std.ArrayList([]const u8){ .items = @constCast(@as([]const []const u8, &.{ "aB", "Cd" })), .capacity = 2 };
        self._m_str_array_calc = _v;
        return _v;
    }
    _m_str_array_calc: ?*_imp_std.ArrayList([]const u8) = null,
    str_array: *_imp_std.ArrayList([]const u8) = undefined,
    pass_str_array: *WantsStrs = undefined,
    pass_str_array_calc: *WantsStrs = undefined,
    _root: ?*ParamsPassArrayStr,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
