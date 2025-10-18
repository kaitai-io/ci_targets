// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const TermStrz4 = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*TermStrz4) !*TermStrz4 {
        const self = try _arena.allocator().create(TermStrz4);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const TermStrz4) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *TermStrz4) !void {
        self._raw_s1 = try self._io.readBytes(self._allocator(), 3);
        const _io__raw_s1 = try self._allocator().create(kaitai_struct.KaitaiStream);
        _io__raw_s1.* = kaitai_struct.KaitaiStream.fromBytes(self._raw_s1);
        self.s1 = try S1Type.create(self._arena, _io__raw_s1, self, self._root);
        self.skip_term1 = try self._io.readU1();
        self._raw_s2 = try self._io.readBytes(self._allocator(), 3);
        const _io__raw_s2 = try self._allocator().create(kaitai_struct.KaitaiStream);
        _io__raw_s2.* = kaitai_struct.KaitaiStream.fromBytes(self._raw_s2);
        self.s2 = try S2Type.create(self._arena, _io__raw_s2, self, self._root);
        self.skip_term2 = try self._io.readU1();
        self._raw_s3 = try self._io.readBytes(self._allocator(), 3);
        const _io__raw_s3 = try self._allocator().create(kaitai_struct.KaitaiStream);
        _io__raw_s3.* = kaitai_struct.KaitaiStream.fromBytes(self._raw_s3);
        self.s3 = try S3Type.create(self._arena, _io__raw_s3, self, self._root);
    }
    pub const S1Type = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*TermStrz4, _root: ?*TermStrz4) !*S1Type {
            const self = try _arena.allocator().create(S1Type);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const S1Type) std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *S1Type) !void {
            self.value = kaitai_struct.KaitaiStream.bytesToStr(try self._io.readBytesTerm(self._allocator(), 124, false, true, false), "UTF-8");
        }
        value: []u8 = undefined,
        _root: ?*TermStrz4,
        _parent: ?*TermStrz4,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    pub const S2Type = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*TermStrz4, _root: ?*TermStrz4) !*S2Type {
            const self = try _arena.allocator().create(S2Type);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const S2Type) std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *S2Type) !void {
            self.value = kaitai_struct.KaitaiStream.bytesToStr(try self._io.readBytesTerm(self._allocator(), 124, false, false, false), "UTF-8");
        }
        value: []u8 = undefined,
        _root: ?*TermStrz4,
        _parent: ?*TermStrz4,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    pub const S3Type = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*TermStrz4, _root: ?*TermStrz4) !*S3Type {
            const self = try _arena.allocator().create(S3Type);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const S3Type) std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *S3Type) !void {
            self.value = kaitai_struct.KaitaiStream.bytesToStr(try self._io.readBytesTerm(self._allocator(), 64, true, true, false), "UTF-8");
        }
        value: []u8 = undefined,
        _root: ?*TermStrz4,
        _parent: ?*TermStrz4,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    s1: *S1Type = undefined,
    skip_term1: u8 = undefined,
    s2: *S2Type = undefined,
    skip_term2: u8 = undefined,
    s3: *S3Type = undefined,
    _root: ?*TermStrz4,
    _parent: ?*anyopaque,
    _raw_s1: []u8 = undefined,
    _raw_s2: []u8 = undefined,
    _raw_s3: []u8 = undefined,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
