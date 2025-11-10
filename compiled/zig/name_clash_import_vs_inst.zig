// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");
const _imp_integers = @import("integers.zig");

pub const NameClashImportVsInst = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*NameClashImportVsInst) !*NameClashImportVsInst {
        const self = try _arena.allocator().create(NameClashImportVsInst);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const NameClashImportVsInst) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *NameClashImportVsInst) !void {
        _ = self;
    }
    pub fn integers(self: *NameClashImportVsInst) !*_imp_integers.Integers {
        if (self._m_integers) |_v|
            return _v;
        var _v: *_imp_integers.Integers = undefined;
        const _pos = self._io.pos();
        try self._io.seek(0);
        _v = try _imp_integers.Integers.create(self._arena, self._io, null, null);
        try self._io.seek(_pos);
        self._m_integers = _v;
        return _v;
    }
    pub fn std(self: *NameClashImportVsInst) !i32 {
        if (self._m_std) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = 1 + 2;
        self._m_std = _v;
        return _v;
    }
    _m_integers: ?*_imp_integers.Integers = null,
    _m_std: ?i32 = null,
    _root: ?*NameClashImportVsInst,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
