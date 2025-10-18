// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const StrEosPadTerm = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*StrEosPadTerm) !*StrEosPadTerm {
        const self = try _arena.allocator().create(StrEosPadTerm);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const StrEosPadTerm) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *StrEosPadTerm) !void {
        self._raw_str_pad = try self._io.readBytes(self._allocator(), 20);
        const _io__raw_str_pad = try self._allocator().create(kaitai_struct.KaitaiStream);
        _io__raw_str_pad.* = kaitai_struct.KaitaiStream.fromBytes(self._raw_str_pad);
        self.str_pad = try StrPadType.create(self._arena, _io__raw_str_pad, self, self._root);
        self._raw_str_term = try self._io.readBytes(self._allocator(), 20);
        const _io__raw_str_term = try self._allocator().create(kaitai_struct.KaitaiStream);
        _io__raw_str_term.* = kaitai_struct.KaitaiStream.fromBytes(self._raw_str_term);
        self.str_term = try StrTermType.create(self._arena, _io__raw_str_term, self, self._root);
        self._raw_str_term_and_pad = try self._io.readBytes(self._allocator(), 20);
        const _io__raw_str_term_and_pad = try self._allocator().create(kaitai_struct.KaitaiStream);
        _io__raw_str_term_and_pad.* = kaitai_struct.KaitaiStream.fromBytes(self._raw_str_term_and_pad);
        self.str_term_and_pad = try StrTermAndPadType.create(self._arena, _io__raw_str_term_and_pad, self, self._root);
        self._raw_str_term_include = try self._io.readBytes(self._allocator(), 20);
        const _io__raw_str_term_include = try self._allocator().create(kaitai_struct.KaitaiStream);
        _io__raw_str_term_include.* = kaitai_struct.KaitaiStream.fromBytes(self._raw_str_term_include);
        self.str_term_include = try StrTermIncludeType.create(self._arena, _io__raw_str_term_include, self, self._root);
    }
    pub const StrPadType = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*StrEosPadTerm, _root: ?*StrEosPadTerm) !*StrPadType {
            const self = try _arena.allocator().create(StrPadType);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const StrPadType) std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *StrPadType) !void {
            self.value = kaitai_struct.KaitaiStream.bytesToStr(kaitai_struct.KaitaiStream.bytesStripRight(try self._io.readBytesFull(self._allocator()), 64), "UTF-8");
        }
        value: []u8 = undefined,
        _root: ?*StrEosPadTerm,
        _parent: ?*StrEosPadTerm,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    pub const StrTermAndPadType = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*StrEosPadTerm, _root: ?*StrEosPadTerm) !*StrTermAndPadType {
            const self = try _arena.allocator().create(StrTermAndPadType);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const StrTermAndPadType) std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *StrTermAndPadType) !void {
            self.value = kaitai_struct.KaitaiStream.bytesToStr(kaitai_struct.KaitaiStream.bytesTerminate(kaitai_struct.KaitaiStream.bytesStripRight(try self._io.readBytesFull(self._allocator()), 43), 64, false), "UTF-8");
        }
        value: []u8 = undefined,
        _root: ?*StrEosPadTerm,
        _parent: ?*StrEosPadTerm,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    pub const StrTermIncludeType = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*StrEosPadTerm, _root: ?*StrEosPadTerm) !*StrTermIncludeType {
            const self = try _arena.allocator().create(StrTermIncludeType);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const StrTermIncludeType) std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *StrTermIncludeType) !void {
            self.value = kaitai_struct.KaitaiStream.bytesToStr(kaitai_struct.KaitaiStream.bytesTerminate(try self._io.readBytesFull(self._allocator()), 64, true), "UTF-8");
        }
        value: []u8 = undefined,
        _root: ?*StrEosPadTerm,
        _parent: ?*StrEosPadTerm,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    pub const StrTermType = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*StrEosPadTerm, _root: ?*StrEosPadTerm) !*StrTermType {
            const self = try _arena.allocator().create(StrTermType);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const StrTermType) std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *StrTermType) !void {
            self.value = kaitai_struct.KaitaiStream.bytesToStr(kaitai_struct.KaitaiStream.bytesTerminate(try self._io.readBytesFull(self._allocator()), 64, false), "UTF-8");
        }
        value: []u8 = undefined,
        _root: ?*StrEosPadTerm,
        _parent: ?*StrEosPadTerm,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    str_pad: *StrPadType = undefined,
    str_term: *StrTermType = undefined,
    str_term_and_pad: *StrTermAndPadType = undefined,
    str_term_include: *StrTermIncludeType = undefined,
    _root: ?*StrEosPadTerm,
    _parent: ?*anyopaque,
    _raw_str_pad: []u8 = undefined,
    _raw_str_term: []u8 = undefined,
    _raw_str_term_and_pad: []u8 = undefined,
    _raw_str_term_include: []u8 = undefined,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
