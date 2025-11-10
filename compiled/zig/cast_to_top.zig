// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const CastToTop = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*CastToTop) !*CastToTop {
        const self = try _arena.allocator().create(CastToTop);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const CastToTop) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *CastToTop) !void {
        self.code = try self._io.readU1();
    }
    pub fn header(self: *CastToTop) !*CastToTop {
        if (self._m_header) |_v|
            return _v;
        var _v: *CastToTop = undefined;
        const _pos = self._io.pos();
        try self._io.seek(1);
        _v = try CastToTop.create(self._arena, self._io, self, self._root);
        try self._io.seek(_pos);
        self._m_header = _v;
        return _v;
    }
    pub fn headerCasted(self: *CastToTop) !*CastToTop {
        if (self._m_header_casted) |_v|
            return _v;
        var _v: *CastToTop = undefined;
        _v = @as(*CastToTop, (try self.header()));
        self._m_header_casted = _v;
        return _v;
    }
    _m_header: ?*CastToTop = null,
    _m_header_casted: ?*CastToTop = null,
    code: u8 = undefined,
    _root: ?*CastToTop,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
