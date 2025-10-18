// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const ExprArray = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ExprArray) !*ExprArray {
        const self = try _arena.allocator().create(ExprArray);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ExprArray) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ExprArray) !void {
        self.aint = try self._allocator().create(std.ArrayList(u32));
        self.aint.* = .empty;
        for (0..4) |i| {
            {
                const _maybe_unused = i;
                _ = _maybe_unused;
            }
            try self.aint.append(self._allocator(), try self._io.readU4le());
        }
        self.afloat = try self._allocator().create(std.ArrayList(f64));
        self.afloat.* = .empty;
        for (0..3) |i| {
            {
                const _maybe_unused = i;
                _ = _maybe_unused;
            }
            try self.afloat.append(self._allocator(), try self._io.readF8le());
        }
        self.astr = try self._allocator().create(std.ArrayList([]u8));
        self.astr.* = .empty;
        for (0..3) |i| {
            {
                const _maybe_unused = i;
                _ = _maybe_unused;
            }
            try self.astr.append(self._allocator(), kaitai_struct.KaitaiStream.bytesToStr(try self._io.readBytesTerm(self._allocator(), 0, false, true, true), "UTF-8"));
        }
    }
    pub fn afloatFirst(self: *ExprArray) !f64 {
        if (self._m_afloat_first) |_v|
            return _v;
        var _v: f64 = undefined;
        _v = self.afloat.items[0];
        self._m_afloat_first = _v;
        return _v;
    }
    pub fn afloatLast(self: *ExprArray) !f64 {
        if (self._m_afloat_last) |_v|
            return _v;
        var _v: f64 = undefined;
        _v = self.afloat.items[self.afloat.items.len - 1];
        self._m_afloat_last = _v;
        return _v;
    }
    pub fn afloatMax(self: *ExprArray) !f64 {
        if (self._m_afloat_max) |_v|
            return _v;
        var _v: f64 = undefined;
        _v = std.mem.max(f64, self.afloat.items);
        self._m_afloat_max = _v;
        return _v;
    }
    pub fn afloatMin(self: *ExprArray) !f64 {
        if (self._m_afloat_min) |_v|
            return _v;
        var _v: f64 = undefined;
        _v = std.mem.min(f64, self.afloat.items);
        self._m_afloat_min = _v;
        return _v;
    }
    pub fn afloatSize(self: *ExprArray) !i32 {
        if (self._m_afloat_size) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = self.afloat.items.len;
        self._m_afloat_size = _v;
        return _v;
    }
    pub fn aintFirst(self: *ExprArray) !u32 {
        if (self._m_aint_first) |_v|
            return _v;
        var _v: u32 = undefined;
        _v = self.aint.items[0];
        self._m_aint_first = _v;
        return _v;
    }
    pub fn aintLast(self: *ExprArray) !u32 {
        if (self._m_aint_last) |_v|
            return _v;
        var _v: u32 = undefined;
        _v = self.aint.items[self.aint.items.len - 1];
        self._m_aint_last = _v;
        return _v;
    }
    pub fn aintMax(self: *ExprArray) !u32 {
        if (self._m_aint_max) |_v|
            return _v;
        var _v: u32 = undefined;
        _v = std.mem.max(u32, self.aint.items);
        self._m_aint_max = _v;
        return _v;
    }
    pub fn aintMin(self: *ExprArray) !u32 {
        if (self._m_aint_min) |_v|
            return _v;
        var _v: u32 = undefined;
        _v = std.mem.min(u32, self.aint.items);
        self._m_aint_min = _v;
        return _v;
    }
    pub fn aintSize(self: *ExprArray) !i32 {
        if (self._m_aint_size) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = self.aint.items.len;
        self._m_aint_size = _v;
        return _v;
    }
    pub fn astrFirst(self: *ExprArray) ![]u8 {
        if (self._m_astr_first) |_v|
            return _v;
        var _v: []u8 = undefined;
        _v = self.astr.items[0];
        self._m_astr_first = _v;
        return _v;
    }
    pub fn astrLast(self: *ExprArray) ![]u8 {
        if (self._m_astr_last) |_v|
            return _v;
        var _v: []u8 = undefined;
        _v = self.astr.items[self.astr.items.len - 1];
        self._m_astr_last = _v;
        return _v;
    }
    pub fn astrMax(self: *ExprArray) ![]u8 {
        if (self._m_astr_max) |_v|
            return _v;
        var _v: []u8 = undefined;
        _v = std.mem.max([]u8, self.astr.items);
        self._m_astr_max = _v;
        return _v;
    }
    pub fn astrMin(self: *ExprArray) ![]u8 {
        if (self._m_astr_min) |_v|
            return _v;
        var _v: []u8 = undefined;
        _v = std.mem.min([]u8, self.astr.items);
        self._m_astr_min = _v;
        return _v;
    }
    pub fn astrSize(self: *ExprArray) !i32 {
        if (self._m_astr_size) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = self.astr.items.len;
        self._m_astr_size = _v;
        return _v;
    }
    _m_afloat_first: ?f64 = null,
    _m_afloat_last: ?f64 = null,
    _m_afloat_max: ?f64 = null,
    _m_afloat_min: ?f64 = null,
    _m_afloat_size: ?i32 = null,
    _m_aint_first: ?u32 = null,
    _m_aint_last: ?u32 = null,
    _m_aint_max: ?u32 = null,
    _m_aint_min: ?u32 = null,
    _m_aint_size: ?i32 = null,
    _m_astr_first: ?[]u8 = null,
    _m_astr_last: ?[]u8 = null,
    _m_astr_max: ?[]u8 = null,
    _m_astr_min: ?[]u8 = null,
    _m_astr_size: ?i32 = null,
    aint: *std.ArrayList(u32) = undefined,
    afloat: *std.ArrayList(f64) = undefined,
    astr: *std.ArrayList([]u8) = undefined,
    _root: ?*ExprArray,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
