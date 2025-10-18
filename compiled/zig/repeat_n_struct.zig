// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const RepeatNStruct = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*RepeatNStruct) !*RepeatNStruct {
        const self = try _arena.allocator().create(RepeatNStruct);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const RepeatNStruct) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *RepeatNStruct) !void {
        self.qty = try self._io.readU4le();
        self.chunks = try self._allocator().create(std.ArrayList(*Chunk));
        self.chunks.* = .empty;
        for (0..self.qty) |i| {
            {
                const _maybe_unused = i;
                _ = _maybe_unused;
            }
            try self.chunks.append(self._allocator(), try Chunk.create(self._arena, self._io, self, self._root));
        }
    }
    pub const Chunk = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*RepeatNStruct, _root: ?*RepeatNStruct) !*Chunk {
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
        _root: ?*RepeatNStruct,
        _parent: ?*RepeatNStruct,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    qty: u32 = undefined,
    chunks: *std.ArrayList(*Chunk) = undefined,
    _root: ?*RepeatNStruct,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
