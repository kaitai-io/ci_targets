// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const StrEncodingsEscapingEnc = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*StrEncodingsEscapingEnc) !*StrEncodingsEscapingEnc {
        const self = try _arena.allocator().create(StrEncodingsEscapingEnc);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const StrEncodingsEscapingEnc) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *StrEncodingsEscapingEnc) !void {
        self.len_of_1 = try self._io.readU2le();
        const _raw_str1 = try self._io.readBytes(self._allocator(), self.len_of_1);
        const _io__raw_str1 = try self._allocator().create(_imp_kaitai_struct.KaitaiStream);
        _io__raw_str1.* = _imp_kaitai_struct.KaitaiStream.fromBytes(_raw_str1);
        self.str1 = try Str1Wrapper.create(self._arena, _io__raw_str1, self, self._root);
        self.len_of_2 = try self._io.readU2le();
        const _raw_str2 = try self._io.readBytes(self._allocator(), self.len_of_2);
        const _io__raw_str2 = try self._allocator().create(_imp_kaitai_struct.KaitaiStream);
        _io__raw_str2.* = _imp_kaitai_struct.KaitaiStream.fromBytes(_raw_str2);
        self.str2 = try Str2Wrapper.create(self._arena, _io__raw_str2, self, self._root);
        self.len_of_3 = try self._io.readU2le();
        const _raw_str3 = try self._io.readBytes(self._allocator(), self.len_of_3);
        const _io__raw_str3 = try self._allocator().create(_imp_kaitai_struct.KaitaiStream);
        _io__raw_str3.* = _imp_kaitai_struct.KaitaiStream.fromBytes(_raw_str3);
        self.str3 = try Str3Wrapper.create(self._arena, _io__raw_str3, self, self._root);
        self.len_of_4 = try self._io.readU2le();
        const _raw_str4 = try self._io.readBytes(self._allocator(), self.len_of_4);
        const _io__raw_str4 = try self._allocator().create(_imp_kaitai_struct.KaitaiStream);
        _io__raw_str4.* = _imp_kaitai_struct.KaitaiStream.fromBytes(_raw_str4);
        self.str4 = try Str4Wrapper.create(self._arena, _io__raw_str4, self, self._root);
    }
    pub const Str1Wrapper = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*StrEncodingsEscapingEnc, _root: ?*StrEncodingsEscapingEnc) !*Str1Wrapper {
            const self = try _arena.allocator().create(Str1Wrapper);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const Str1Wrapper) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *Str1Wrapper) !void {
            _ = self;
        }
        pub fn v(self: *Str1Wrapper) ![]const u8 {
            if (self._m_v) |_v|
                return _v;
            var _v: []const u8 = undefined;
            const _pos = self._io.pos();
            try self._io.seek(0);
            _v = (try _imp_kaitai_struct.KaitaiStream.bytesToStr(self._allocator(), try self._io.readBytesFull(self._allocator()), "ASCII\\\\x"));
            try self._io.seek(_pos);
            self._m_v = _v;
            return _v;
        }
        _m_v: ?[]const u8 = null,
        _root: ?*StrEncodingsEscapingEnc,
        _parent: ?*StrEncodingsEscapingEnc,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    pub const Str2Wrapper = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*StrEncodingsEscapingEnc, _root: ?*StrEncodingsEscapingEnc) !*Str2Wrapper {
            const self = try _arena.allocator().create(Str2Wrapper);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const Str2Wrapper) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *Str2Wrapper) !void {
            _ = self;
        }
        pub fn v(self: *Str2Wrapper) ![]const u8 {
            if (self._m_v) |_v|
                return _v;
            var _v: []const u8 = undefined;
            const _pos = self._io.pos();
            try self._io.seek(0);
            _v = (try _imp_kaitai_struct.KaitaiStream.bytesToStr(self._allocator(), try self._io.readBytesFull(self._allocator()), "UTF-8\\'x"));
            try self._io.seek(_pos);
            self._m_v = _v;
            return _v;
        }
        _m_v: ?[]const u8 = null,
        _root: ?*StrEncodingsEscapingEnc,
        _parent: ?*StrEncodingsEscapingEnc,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    pub const Str3Wrapper = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*StrEncodingsEscapingEnc, _root: ?*StrEncodingsEscapingEnc) !*Str3Wrapper {
            const self = try _arena.allocator().create(Str3Wrapper);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const Str3Wrapper) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *Str3Wrapper) !void {
            _ = self;
        }
        pub fn v(self: *Str3Wrapper) ![]const u8 {
            if (self._m_v) |_v|
                return _v;
            var _v: []const u8 = undefined;
            const _pos = self._io.pos();
            try self._io.seek(0);
            _v = (try _imp_kaitai_struct.KaitaiStream.bytesToStr(self._allocator(), try self._io.readBytesFull(self._allocator()), "SJIS\\\"x"));
            try self._io.seek(_pos);
            self._m_v = _v;
            return _v;
        }
        _m_v: ?[]const u8 = null,
        _root: ?*StrEncodingsEscapingEnc,
        _parent: ?*StrEncodingsEscapingEnc,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    pub const Str4Wrapper = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*StrEncodingsEscapingEnc, _root: ?*StrEncodingsEscapingEnc) !*Str4Wrapper {
            const self = try _arena.allocator().create(Str4Wrapper);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const Str4Wrapper) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *Str4Wrapper) !void {
            _ = self;
        }
        pub fn v(self: *Str4Wrapper) ![]const u8 {
            if (self._m_v) |_v|
                return _v;
            var _v: []const u8 = undefined;
            const _pos = self._io.pos();
            try self._io.seek(0);
            _v = (try _imp_kaitai_struct.KaitaiStream.bytesToStr(self._allocator(), try self._io.readBytesFull(self._allocator()), "IBM437\\nx"));
            try self._io.seek(_pos);
            self._m_v = _v;
            return _v;
        }
        _m_v: ?[]const u8 = null,
        _root: ?*StrEncodingsEscapingEnc,
        _parent: ?*StrEncodingsEscapingEnc,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    len_of_1: u16 = undefined,
    str1: *Str1Wrapper = undefined,
    len_of_2: u16 = undefined,
    str2: *Str2Wrapper = undefined,
    len_of_3: u16 = undefined,
    str3: *Str3Wrapper = undefined,
    len_of_4: u16 = undefined,
    str4: *Str4Wrapper = undefined,
    _root: ?*StrEncodingsEscapingEnc,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
