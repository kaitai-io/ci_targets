// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const PositionToEnd = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*PositionToEnd) !*PositionToEnd {
        const self = try _arena.allocator().create(PositionToEnd);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const PositionToEnd) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *PositionToEnd) !void {
        _ = self;
    }
    pub const IndexObj = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*PositionToEnd, _root: ?*PositionToEnd) !*IndexObj {
            const self = try _arena.allocator().create(IndexObj);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const IndexObj) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *IndexObj) !void {
            self.foo = try self._io.readU4le();
            self.bar = try self._io.readU4le();
        }
        foo: u32 = undefined,
        bar: u32 = undefined,
        _root: ?*PositionToEnd,
        _parent: ?*PositionToEnd,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    pub fn index(self: *PositionToEnd) !*IndexObj {
        if (self._m_index) |_v|
            return _v;
        var _v: *IndexObj = undefined;
        const _pos = self._io.pos();
        try self._io.seek((try self._io.size()) - 8);
        _v = try IndexObj.create(self._arena, self._io, self, self._root);
        try self._io.seek(_pos);
        self._m_index = _v;
        return _v;
    }
    _m_index: ?*IndexObj = null,
    _root: ?*PositionToEnd,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
