// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const SwitchManualIntSizeElse = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*SwitchManualIntSizeElse) !*SwitchManualIntSizeElse {
        const self = try _arena.allocator().create(SwitchManualIntSizeElse);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const SwitchManualIntSizeElse) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *SwitchManualIntSizeElse) !void {
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
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*SwitchManualIntSizeElse, _root: ?*SwitchManualIntSizeElse) !*Chunk {
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
            self.code = try self._io.readU1();
            self.size = try self._io.readU4le();
            switch (self.code) {
                17 => {
                    self._raw_body = try self._io.readBytes(self._allocator(), self.size);
                    const _io__raw_body = try self._allocator().create(kaitai_struct.KaitaiStream);
                    _io__raw_body.* = kaitai_struct.KaitaiStream.fromBytes(self._raw_body);
                    self.body = try ChunkMeta.create(self._arena, _io__raw_body, self, self._root);
                },
                34 => {
                    self._raw_body = try self._io.readBytes(self._allocator(), self.size);
                    const _io__raw_body = try self._allocator().create(kaitai_struct.KaitaiStream);
                    _io__raw_body.* = kaitai_struct.KaitaiStream.fromBytes(self._raw_body);
                    self.body = try ChunkDir.create(self._arena, _io__raw_body, self, self._root);
                },
                else => {
                    self._raw_body = try self._io.readBytes(self._allocator(), self.size);
                    const _io__raw_body = try self._allocator().create(kaitai_struct.KaitaiStream);
                    _io__raw_body.* = kaitai_struct.KaitaiStream.fromBytes(self._raw_body);
                    self.body = try Dummy.create(self._arena, _io__raw_body, self, self._root);
                },
            }
        }
        pub const ChunkDir = struct {
            pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*SwitchManualIntSizeElse.Chunk, _root: ?*SwitchManualIntSizeElse) !*ChunkDir {
                const self = try _arena.allocator().create(ChunkDir);
                self.* = .{
                    ._arena = _arena,
                    ._io = _io,
                    ._parent = _parent,
                    ._root = _root,
                };
                try self._read();
                return self;
            }
            fn _allocator(self: *const ChunkDir) std.mem.Allocator {
                return self._arena.allocator();
            }
            fn _read(self: *ChunkDir) !void {
                self.entries = try self._allocator().create(std.ArrayList([]u8));
                self.entries.* = .empty;
                {
                    var i: usize = 0;
                    while (!try self._io.isEof()) : (i += 1) {
                        try self.entries.append(self._allocator(), kaitai_struct.KaitaiStream.bytesToStr(try self._io.readBytes(self._allocator(), 4), "UTF-8"));
                    }
                }
            }
            entries: *std.ArrayList([]u8) = undefined,
            _root: ?*SwitchManualIntSizeElse,
            _parent: ?*SwitchManualIntSizeElse.Chunk,
            _arena: *std.heap.ArenaAllocator,
            _io: *kaitai_struct.KaitaiStream,
        };
        pub const ChunkMeta = struct {
            pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*SwitchManualIntSizeElse.Chunk, _root: ?*SwitchManualIntSizeElse) !*ChunkMeta {
                const self = try _arena.allocator().create(ChunkMeta);
                self.* = .{
                    ._arena = _arena,
                    ._io = _io,
                    ._parent = _parent,
                    ._root = _root,
                };
                try self._read();
                return self;
            }
            fn _allocator(self: *const ChunkMeta) std.mem.Allocator {
                return self._arena.allocator();
            }
            fn _read(self: *ChunkMeta) !void {
                self.title = kaitai_struct.KaitaiStream.bytesToStr(try self._io.readBytesTerm(self._allocator(), 0, false, true, true), "UTF-8");
                self.author = kaitai_struct.KaitaiStream.bytesToStr(try self._io.readBytesTerm(self._allocator(), 0, false, true, true), "UTF-8");
            }
            title: []u8 = undefined,
            author: []u8 = undefined,
            _root: ?*SwitchManualIntSizeElse,
            _parent: ?*SwitchManualIntSizeElse.Chunk,
            _arena: *std.heap.ArenaAllocator,
            _io: *kaitai_struct.KaitaiStream,
        };
        pub const Dummy = struct {
            pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*SwitchManualIntSizeElse.Chunk, _root: ?*SwitchManualIntSizeElse) !*Dummy {
                const self = try _arena.allocator().create(Dummy);
                self.* = .{
                    ._arena = _arena,
                    ._io = _io,
                    ._parent = _parent,
                    ._root = _root,
                };
                try self._read();
                return self;
            }
            fn _allocator(self: *const Dummy) std.mem.Allocator {
                return self._arena.allocator();
            }
            fn _read(self: *Dummy) !void {
                self.rest = try self._io.readBytesFull(self._allocator());
            }
            rest: []u8 = undefined,
            _root: ?*SwitchManualIntSizeElse,
            _parent: ?*SwitchManualIntSizeElse.Chunk,
            _arena: *std.heap.ArenaAllocator,
            _io: *kaitai_struct.KaitaiStream,
        };
        code: u8 = undefined,
        size: u32 = undefined,
        body: *anyopaque = undefined,
        _root: ?*SwitchManualIntSizeElse,
        _parent: ?*SwitchManualIntSizeElse,
        _raw_body: []u8 = undefined,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    chunks: *std.ArrayList(*Chunk) = undefined,
    _root: ?*SwitchManualIntSizeElse,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
