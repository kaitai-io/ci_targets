// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const StrEosPadTerm = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*StrEosPadTerm) !*StrEosPadTerm {
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
    fn _allocator(self: *const StrEosPadTerm) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *StrEosPadTerm) !void {
        const _raw_str_pad = try self._io.readBytes(self._allocator(), 20);
        const _io__raw_str_pad = try self._allocator().create(_imp_kaitai_struct.KaitaiStream);
        _io__raw_str_pad.* = _imp_kaitai_struct.KaitaiStream.fromBytes(_raw_str_pad);
        self.str_pad = try StrPadType.create(self._arena, _io__raw_str_pad, self, self._root);
        const _raw_str_term = try self._io.readBytes(self._allocator(), 20);
        const _io__raw_str_term = try self._allocator().create(_imp_kaitai_struct.KaitaiStream);
        _io__raw_str_term.* = _imp_kaitai_struct.KaitaiStream.fromBytes(_raw_str_term);
        self.str_term = try StrTermType.create(self._arena, _io__raw_str_term, self, self._root);
        const _raw_str_term_and_pad = try self._io.readBytes(self._allocator(), 20);
        const _io__raw_str_term_and_pad = try self._allocator().create(_imp_kaitai_struct.KaitaiStream);
        _io__raw_str_term_and_pad.* = _imp_kaitai_struct.KaitaiStream.fromBytes(_raw_str_term_and_pad);
        self.str_term_and_pad = try StrTermAndPadType.create(self._arena, _io__raw_str_term_and_pad, self, self._root);
        const _raw_str_term_include = try self._io.readBytes(self._allocator(), 20);
        const _io__raw_str_term_include = try self._allocator().create(_imp_kaitai_struct.KaitaiStream);
        _io__raw_str_term_include.* = _imp_kaitai_struct.KaitaiStream.fromBytes(_raw_str_term_include);
        self.str_term_include = try StrTermIncludeType.create(self._arena, _io__raw_str_term_include, self, self._root);
    }
    pub const StrPadType = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*StrEosPadTerm, _root: ?*StrEosPadTerm) !*StrPadType {
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
        fn _allocator(self: *const StrPadType) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *StrPadType) !void {
            self.value = (try _imp_kaitai_struct.KaitaiStream.bytesToStr(self._allocator(), _imp_kaitai_struct.KaitaiStream.bytesStripRight(try self._io.readBytesFull(self._allocator()), 64), "UTF-8"));
        }
        value: []const u8 = undefined,
        _root: ?*StrEosPadTerm,
        _parent: ?*StrEosPadTerm,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    pub const StrTermAndPadType = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*StrEosPadTerm, _root: ?*StrEosPadTerm) !*StrTermAndPadType {
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
        fn _allocator(self: *const StrTermAndPadType) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *StrTermAndPadType) !void {
            self.value = (try _imp_kaitai_struct.KaitaiStream.bytesToStr(self._allocator(), _imp_kaitai_struct.KaitaiStream.bytesTerminate(_imp_kaitai_struct.KaitaiStream.bytesStripRight(try self._io.readBytesFull(self._allocator()), 43), 64, false), "UTF-8"));
        }
        value: []const u8 = undefined,
        _root: ?*StrEosPadTerm,
        _parent: ?*StrEosPadTerm,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    pub const StrTermIncludeType = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*StrEosPadTerm, _root: ?*StrEosPadTerm) !*StrTermIncludeType {
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
        fn _allocator(self: *const StrTermIncludeType) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *StrTermIncludeType) !void {
            self.value = (try _imp_kaitai_struct.KaitaiStream.bytesToStr(self._allocator(), _imp_kaitai_struct.KaitaiStream.bytesTerminate(try self._io.readBytesFull(self._allocator()), 64, true), "UTF-8"));
        }
        value: []const u8 = undefined,
        _root: ?*StrEosPadTerm,
        _parent: ?*StrEosPadTerm,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    pub const StrTermType = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*StrEosPadTerm, _root: ?*StrEosPadTerm) !*StrTermType {
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
        fn _allocator(self: *const StrTermType) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *StrTermType) !void {
            self.value = (try _imp_kaitai_struct.KaitaiStream.bytesToStr(self._allocator(), _imp_kaitai_struct.KaitaiStream.bytesTerminate(try self._io.readBytesFull(self._allocator()), 64, false), "UTF-8"));
        }
        value: []const u8 = undefined,
        _root: ?*StrEosPadTerm,
        _parent: ?*StrEosPadTerm,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    str_pad: *StrPadType = undefined,
    str_term: *StrTermType = undefined,
    str_term_and_pad: *StrTermAndPadType = undefined,
    str_term_include: *StrTermIncludeType = undefined,
    _root: ?*StrEosPadTerm,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
