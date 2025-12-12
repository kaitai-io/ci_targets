// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const SwitchManualIntSize = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*SwitchManualIntSize) !*SwitchManualIntSize {
        const self = try _arena.allocator().create(SwitchManualIntSize);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const SwitchManualIntSize) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *SwitchManualIntSize) !void {
        self.chunks = try self._allocator().create(_imp_std.ArrayList(*Chunk));
        self.chunks.* = .empty;
        {
            var i: usize = 0;
            while (!try self._io.isEof()) : (i += 1) {
                try self.chunks.append(self._allocator(), try Chunk.create(self._arena, self._io, self, self._root));
            }
        }
    }
    pub const Chunk = struct {
        pub const Body_switch = union(enum) {
            chunk_meta: *ChunkMeta,
            chunk_dir: *ChunkDir,
            bytes: []const u8,
        };
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*SwitchManualIntSize, _root: ?*SwitchManualIntSize) !*Chunk {
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
        fn _allocator(self: *const Chunk) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *Chunk) !void {
            self.code = try self._io.readU1();
            self.size = try self._io.readU4le();
            switch (self.code) {
                17 => {
                    const _raw_body = try self._io.readBytes(self._allocator(), self.size);
                    const _io__raw_body = try self._allocator().create(_imp_kaitai_struct.KaitaiStream);
                    _io__raw_body.* = _imp_kaitai_struct.KaitaiStream.fromBytes(_raw_body);
                    self.body = .{ .chunk_meta = try ChunkMeta.create(self._arena, _io__raw_body, self, self._root) };
                },
                34 => {
                    const _raw_body = try self._io.readBytes(self._allocator(), self.size);
                    const _io__raw_body = try self._allocator().create(_imp_kaitai_struct.KaitaiStream);
                    _io__raw_body.* = _imp_kaitai_struct.KaitaiStream.fromBytes(_raw_body);
                    self.body = .{ .chunk_dir = try ChunkDir.create(self._arena, _io__raw_body, self, self._root) };
                },
                else => {
                    self.body = .{ .bytes = try self._io.readBytes(self._allocator(), self.size) };
                },
            }
        }
        pub const ChunkDir = struct {
            pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*SwitchManualIntSize.Chunk, _root: ?*SwitchManualIntSize) !*ChunkDir {
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
            fn _allocator(self: *const ChunkDir) _imp_std.mem.Allocator {
                return self._arena.allocator();
            }
            fn _read(self: *ChunkDir) !void {
                self.entries = try self._allocator().create(_imp_std.ArrayList([]const u8));
                self.entries.* = .empty;
                {
                    var i: usize = 0;
                    while (!try self._io.isEof()) : (i += 1) {
                        try self.entries.append(self._allocator(), (try _imp_kaitai_struct.KaitaiStream.bytesToStr(self._allocator(), try self._io.readBytes(self._allocator(), 4), "UTF-8")));
                    }
                }
            }
            entries: *_imp_std.ArrayList([]const u8) = undefined,
            _root: ?*SwitchManualIntSize,
            _parent: ?*SwitchManualIntSize.Chunk,
            _arena: *_imp_std.heap.ArenaAllocator,
            _io: *_imp_kaitai_struct.KaitaiStream,
        };
        pub const ChunkMeta = struct {
            pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*SwitchManualIntSize.Chunk, _root: ?*SwitchManualIntSize) !*ChunkMeta {
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
            fn _allocator(self: *const ChunkMeta) _imp_std.mem.Allocator {
                return self._arena.allocator();
            }
            fn _read(self: *ChunkMeta) !void {
                self.title = (try _imp_kaitai_struct.KaitaiStream.bytesToStr(self._allocator(), try self._io.readBytesTerm(self._allocator(), 0, false, true, true), "UTF-8"));
                self.author = (try _imp_kaitai_struct.KaitaiStream.bytesToStr(self._allocator(), try self._io.readBytesTerm(self._allocator(), 0, false, true, true), "UTF-8"));
            }
            title: []const u8 = undefined,
            author: []const u8 = undefined,
            _root: ?*SwitchManualIntSize,
            _parent: ?*SwitchManualIntSize.Chunk,
            _arena: *_imp_std.heap.ArenaAllocator,
            _io: *_imp_kaitai_struct.KaitaiStream,
        };
        code: u8 = undefined,
        size: u32 = undefined,
        body: Body_switch = undefined,
        _root: ?*SwitchManualIntSize,
        _parent: ?*SwitchManualIntSize,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    chunks: *_imp_std.ArrayList(*Chunk) = undefined,
    _root: ?*SwitchManualIntSize,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
