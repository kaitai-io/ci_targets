// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const RepeatEosStruct = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*RepeatEosStruct) !*RepeatEosStruct {
        const self = try _arena.allocator().create(RepeatEosStruct);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const RepeatEosStruct) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *RepeatEosStruct) !void {
        self.chunks = try self._allocator().create(std.ArrayList(*Chunk));
        self.chunks.* = .empty;
        {
            var i: usize = 0;
            while (!try self._io.isEof()) : (i += 1) {
                try self.chunks.append(self._allocator(), try Chunk.create(self._arena, self._io, self, self._root));
            }
        }
    }
    pub const Chunk = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*RepeatEosStruct, _root: ?*RepeatEosStruct) !*Chunk {
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
        _root: ?*RepeatEosStruct,
        _parent: ?*RepeatEosStruct,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    chunks: *std.ArrayList(*Chunk) = undefined,
    _root: ?*RepeatEosStruct,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
