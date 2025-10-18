// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const IntegersDoubleOverflow = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*IntegersDoubleOverflow) !*IntegersDoubleOverflow {
        const self = try _arena.allocator().create(IntegersDoubleOverflow);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const IntegersDoubleOverflow) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *IntegersDoubleOverflow) !void {
        self.signed_safe_min_be = try self._io.readS8be();
        self.signed_safe_min_le = try self._io.readS8le();
        self.signed_safe_max_be = try self._io.readS8be();
        self.signed_safe_max_le = try self._io.readS8le();
        self.signed_unsafe_neg_be = try self._io.readS8be();
        self.signed_unsafe_neg_le = try self._io.readS8le();
        self.signed_unsafe_pos_be = try self._io.readS8be();
        self.signed_unsafe_pos_le = try self._io.readS8le();
    }
    pub fn unsignedSafeMaxBe(self: *IntegersDoubleOverflow) !u64 {
        if (self._m_unsigned_safe_max_be) |_v|
            return _v;
        var _v: u64 = undefined;
        const _pos = self._io.pos();
        try self._io.seek(16);
        _v = try self._io.readU8be();
        try self._io.seek(_pos);
        self._m_unsigned_safe_max_be = _v;
        return _v;
    }
    pub fn unsignedSafeMaxLe(self: *IntegersDoubleOverflow) !u64 {
        if (self._m_unsigned_safe_max_le) |_v|
            return _v;
        var _v: u64 = undefined;
        const _pos = self._io.pos();
        try self._io.seek(24);
        _v = try self._io.readU8le();
        try self._io.seek(_pos);
        self._m_unsigned_safe_max_le = _v;
        return _v;
    }
    pub fn unsignedUnsafePosBe(self: *IntegersDoubleOverflow) !u64 {
        if (self._m_unsigned_unsafe_pos_be) |_v|
            return _v;
        var _v: u64 = undefined;
        const _pos = self._io.pos();
        try self._io.seek(48);
        _v = try self._io.readU8be();
        try self._io.seek(_pos);
        self._m_unsigned_unsafe_pos_be = _v;
        return _v;
    }
    pub fn unsignedUnsafePosLe(self: *IntegersDoubleOverflow) !u64 {
        if (self._m_unsigned_unsafe_pos_le) |_v|
            return _v;
        var _v: u64 = undefined;
        const _pos = self._io.pos();
        try self._io.seek(56);
        _v = try self._io.readU8le();
        try self._io.seek(_pos);
        self._m_unsigned_unsafe_pos_le = _v;
        return _v;
    }
    _m_unsigned_safe_max_be: ?u64 = null,
    _m_unsigned_safe_max_le: ?u64 = null,
    _m_unsigned_unsafe_pos_be: ?u64 = null,
    _m_unsigned_unsafe_pos_le: ?u64 = null,
    signed_safe_min_be: i64 = undefined,
    signed_safe_min_le: i64 = undefined,
    signed_safe_max_be: i64 = undefined,
    signed_safe_max_le: i64 = undefined,
    signed_unsafe_neg_be: i64 = undefined,
    signed_unsafe_neg_le: i64 = undefined,
    signed_unsafe_pos_be: i64 = undefined,
    signed_unsafe_pos_le: i64 = undefined,
    _root: ?*IntegersDoubleOverflow,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
