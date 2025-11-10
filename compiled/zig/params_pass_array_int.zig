// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const ParamsPassArrayInt = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ParamsPassArrayInt) !*ParamsPassArrayInt {
        const self = try _arena.allocator().create(ParamsPassArrayInt);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ParamsPassArrayInt) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ParamsPassArrayInt) !void {
        self.ints = try self._allocator().create(_imp_std.ArrayList(u16));
        self.ints.* = .empty;
        for (0..3) |i| {
            {
                const _maybe_unused = i;
                _ = _maybe_unused;
            }
            try self.ints.append(self._allocator(), try self._io.readU2le());
        }
        self.pass_ints = try WantsInts.create(self._arena, self._io, self, self._root, self.ints);
        self.pass_ints_calc = try WantsInts.create(self._arena, self._io, self, self._root, (try self.intsCalc()));
    }
    pub const WantsInts = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*ParamsPassArrayInt, _root: ?*ParamsPassArrayInt, nums: *_imp_std.ArrayList(u16)) !*WantsInts {
            const self = try _arena.allocator().create(WantsInts);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            self.nums = nums;
            try self._read();
            return self;
        }
        fn _allocator(self: *const WantsInts) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *WantsInts) !void {
            _ = self;
        }
        nums: *_imp_std.ArrayList(u16) = undefined,
        _root: ?*ParamsPassArrayInt,
        _parent: ?*ParamsPassArrayInt,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    pub fn intsCalc(self: *ParamsPassArrayInt) !*_imp_std.ArrayList(u16) {
        if (self._m_ints_calc) |_v|
            return _v;
        var _v: *_imp_std.ArrayList(u16) = undefined;
        _v = _imp_std.ArrayList(u16){ .items = @constCast(@as([]const u16, &.{ 27643, 7 })), .capacity = 2 };
        self._m_ints_calc = _v;
        return _v;
    }
    _m_ints_calc: ?*_imp_std.ArrayList(u16) = null,
    ints: *_imp_std.ArrayList(u16) = undefined,
    pass_ints: *WantsInts = undefined,
    pass_ints_calc: *WantsInts = undefined,
    _root: ?*ParamsPassArrayInt,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
