// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const StrEosPadTermEqual = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*StrEosPadTermEqual) !*StrEosPadTermEqual {
        const self = try _arena.allocator().create(StrEosPadTermEqual);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const StrEosPadTermEqual) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *StrEosPadTermEqual) !void {
        const _raw_s1 = try self._io.readBytes(self._allocator(), 20);
        const _io__raw_s1 = try self._allocator().create(_imp_kaitai_struct.KaitaiStream);
        _io__raw_s1.* = _imp_kaitai_struct.KaitaiStream.fromBytes(_raw_s1);
        self.s1 = try S1Type.create(self._arena, _io__raw_s1, self, self._root);
        const _raw_s2 = try self._io.readBytes(self._allocator(), 20);
        const _io__raw_s2 = try self._allocator().create(_imp_kaitai_struct.KaitaiStream);
        _io__raw_s2.* = _imp_kaitai_struct.KaitaiStream.fromBytes(_raw_s2);
        self.s2 = try S2Type.create(self._arena, _io__raw_s2, self, self._root);
        const _raw_s3 = try self._io.readBytes(self._allocator(), 20);
        const _io__raw_s3 = try self._allocator().create(_imp_kaitai_struct.KaitaiStream);
        _io__raw_s3.* = _imp_kaitai_struct.KaitaiStream.fromBytes(_raw_s3);
        self.s3 = try S3Type.create(self._arena, _io__raw_s3, self, self._root);
        const _raw_s4 = try self._io.readBytes(self._allocator(), 20);
        const _io__raw_s4 = try self._allocator().create(_imp_kaitai_struct.KaitaiStream);
        _io__raw_s4.* = _imp_kaitai_struct.KaitaiStream.fromBytes(_raw_s4);
        self.s4 = try S4Type.create(self._arena, _io__raw_s4, self, self._root);
    }
    pub const S1Type = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*StrEosPadTermEqual, _root: ?*StrEosPadTermEqual) !*S1Type {
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
        fn _allocator(self: *const S1Type) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *S1Type) !void {
            self.value = (try _imp_kaitai_struct.KaitaiStream.bytesToStr(self._allocator(), _imp_kaitai_struct.KaitaiStream.bytesTerminate(try self._io.readBytesFull(self._allocator()), 64, false), "UTF-8"));
        }
        value: []const u8 = undefined,
        _root: ?*StrEosPadTermEqual,
        _parent: ?*StrEosPadTermEqual,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    pub const S2Type = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*StrEosPadTermEqual, _root: ?*StrEosPadTermEqual) !*S2Type {
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
        fn _allocator(self: *const S2Type) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *S2Type) !void {
            self.value = (try _imp_kaitai_struct.KaitaiStream.bytesToStr(self._allocator(), _imp_kaitai_struct.KaitaiStream.bytesTerminate(_imp_kaitai_struct.KaitaiStream.bytesStripRight(try self._io.readBytesFull(self._allocator()), 43), 64, true), "UTF-8"));
        }
        value: []const u8 = undefined,
        _root: ?*StrEosPadTermEqual,
        _parent: ?*StrEosPadTermEqual,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    pub const S3Type = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*StrEosPadTermEqual, _root: ?*StrEosPadTermEqual) !*S3Type {
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
        fn _allocator(self: *const S3Type) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *S3Type) !void {
            self.value = (try _imp_kaitai_struct.KaitaiStream.bytesToStr(self._allocator(), _imp_kaitai_struct.KaitaiStream.bytesTerminate(try self._io.readBytesFull(self._allocator()), 43, false), "UTF-8"));
        }
        value: []const u8 = undefined,
        _root: ?*StrEosPadTermEqual,
        _parent: ?*StrEosPadTermEqual,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    pub const S4Type = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*StrEosPadTermEqual, _root: ?*StrEosPadTermEqual) !*S4Type {
            const self = try _arena.allocator().create(S4Type);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const S4Type) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *S4Type) !void {
            self.value = (try _imp_kaitai_struct.KaitaiStream.bytesToStr(self._allocator(), _imp_kaitai_struct.KaitaiStream.bytesTerminate(try self._io.readBytesFull(self._allocator()), 46, true), "UTF-8"));
        }
        value: []const u8 = undefined,
        _root: ?*StrEosPadTermEqual,
        _parent: ?*StrEosPadTermEqual,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    s1: *S1Type = undefined,
    s2: *S2Type = undefined,
    s3: *S3Type = undefined,
    s4: *S4Type = undefined,
    _root: ?*StrEosPadTermEqual,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
