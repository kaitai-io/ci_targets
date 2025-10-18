// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const InstanceInRepeatExpr = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*InstanceInRepeatExpr) !*InstanceInRepeatExpr {
        const self = try _arena.allocator().create(InstanceInRepeatExpr);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const InstanceInRepeatExpr) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *InstanceInRepeatExpr) !void {
        self.chunks = try self._allocator().create(std.ArrayList(*Chunk));
        self.chunks.* = .empty;
        for (0..(try self.numChunks())) |i| {
            {
                const _maybe_unused = i;
                _ = _maybe_unused;
            }
            try self.chunks.append(self._allocator(), try Chunk.create(self._arena, self._io, self, self._root));
        }
    }
    pub const Chunk = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*InstanceInRepeatExpr, _root: ?*InstanceInRepeatExpr) !*Chunk {
            const self = try _arena.allocator().create(Chunk);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const Chunk) std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *Chunk) !void {
            self.offset = try self._io.readU4le();
            self.len = try self._io.readU4le();
        }
        offset: u32 = undefined,
        len: u32 = undefined,
        _root: ?*InstanceInRepeatExpr,
        _parent: ?*InstanceInRepeatExpr,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    pub fn numChunks(self: *InstanceInRepeatExpr) !u32 {
        if (self._m_num_chunks) |_v|
            return _v;
        var _v: u32 = undefined;
        const _pos = self._io.pos();
        try self._io.seek(self._io.pos() + 16);
        _v = try self._io.readU4le();
        try self._io.seek(_pos);
        self._m_num_chunks = _v;
        return _v;
    }
    _m_num_chunks: ?u32 = null,
    chunks: *std.ArrayList(*Chunk) = undefined,
    _root: ?*InstanceInRepeatExpr,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
