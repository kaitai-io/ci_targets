// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const InstanceStdArray = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*InstanceStdArray) !*InstanceStdArray {
        const self = try _arena.allocator().create(InstanceStdArray);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const InstanceStdArray) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *InstanceStdArray) !void {
        self.ofs = try self._io.readU4le();
        self.entry_size = try self._io.readU4le();
        self.qty_entries = try self._io.readU4le();
    }
    pub fn entries(self: *InstanceStdArray) !*_imp_std.ArrayList([]const u8) {
        if (self._m_entries) |_v|
            return _v;
        var _v: *_imp_std.ArrayList([]const u8) = undefined;
        const _pos = self._io.pos();
        try self._io.seek(self.ofs);
        _v = try self._allocator().create(_imp_std.ArrayList([]const u8));
        _v.* = .empty;
        for (0..self.qty_entries) |i| {
            {
                const _maybe_unused = i;
                _ = _maybe_unused;
            }
            try _v.append(self._allocator(), try self._io.readBytes(self._allocator(), self.entry_size));
        }
        try self._io.seek(_pos);
        self._m_entries = _v;
        return _v;
    }
    _m_entries: ?*_imp_std.ArrayList([]const u8) = null,
    ofs: u32 = undefined,
    entry_size: u32 = undefined,
    qty_entries: u32 = undefined,
    _root: ?*InstanceStdArray,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
