// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const PositionAbs = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*PositionAbs) !*PositionAbs {
        const self = try _arena.allocator().create(PositionAbs);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const PositionAbs) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *PositionAbs) !void {
        self.index_offset = try self._io.readU4le();
    }
    pub const IndexObj = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*PositionAbs, _root: ?*PositionAbs) !*IndexObj {
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
        fn _allocator(self: *const IndexObj) std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *IndexObj) !void {
            self.entry = kaitai_struct.KaitaiStream.bytesToStr(try self._io.readBytesTerm(self._allocator(), 0, false, true, true), "UTF-8");
        }
        entry: []u8 = undefined,
        _root: ?*PositionAbs,
        _parent: ?*PositionAbs,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    pub fn index(self: *PositionAbs) !*IndexObj {
        if (self._m_index) |_v|
            return _v;
        var _v: *IndexObj = undefined;
        const _pos = self._io.pos();
        try self._io.seek(self.index_offset);
        _v = try IndexObj.create(self._arena, self._io, self, self._root);
        try self._io.seek(_pos);
        self._m_index = _v;
        return _v;
    }
    _m_index: ?*IndexObj = null,
    index_offset: u32 = undefined,
    _root: ?*PositionAbs,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
