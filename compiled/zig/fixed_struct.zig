// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const FixedStruct = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*FixedStruct) !*FixedStruct {
        const self = try _arena.allocator().create(FixedStruct);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const FixedStruct) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *FixedStruct) !void {
        _ = self;
    }
    pub const Header = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*FixedStruct, _root: ?*FixedStruct) !*Header {
            const self = try _arena.allocator().create(Header);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const Header) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *Header) !void {
            self.magic1 = try self._io.readBytes(self._allocator(), 6);
            if (!(_imp_std.mem.eql(u8, self.magic1, &[_]u8{ 80, 65, 67, 75, 45, 49 }))) {
                return error.ValidationNotEqualError;
            }
            self.uint8 = try self._io.readU1();
            self.sint8 = try self._io.readS1();
            self.magic_uint = try self._io.readBytes(self._allocator(), 10);
            if (!(_imp_std.mem.eql(u8, self.magic_uint, &[_]u8{ 80, 65, 67, 75, 45, 85, 45, 68, 69, 70 }))) {
                return error.ValidationNotEqualError;
            }
            self.uint16 = try self._io.readU2le();
            self.uint32 = try self._io.readU4le();
            self.uint64 = try self._io.readU8le();
            self.magic_sint = try self._io.readBytes(self._allocator(), 10);
            if (!(_imp_std.mem.eql(u8, self.magic_sint, &[_]u8{ 80, 65, 67, 75, 45, 83, 45, 68, 69, 70 }))) {
                return error.ValidationNotEqualError;
            }
            self.sint16 = try self._io.readS2le();
            self.sint32 = try self._io.readS4le();
            self.sint64 = try self._io.readS8le();
            self.magic_uint_le = try self._io.readBytes(self._allocator(), 9);
            if (!(_imp_std.mem.eql(u8, self.magic_uint_le, &[_]u8{ 80, 65, 67, 75, 45, 85, 45, 76, 69 }))) {
                return error.ValidationNotEqualError;
            }
            self.uint16le = try self._io.readU2le();
            self.uint32le = try self._io.readU4le();
            self.uint64le = try self._io.readU8le();
            self.magic_sint_le = try self._io.readBytes(self._allocator(), 9);
            if (!(_imp_std.mem.eql(u8, self.magic_sint_le, &[_]u8{ 80, 65, 67, 75, 45, 83, 45, 76, 69 }))) {
                return error.ValidationNotEqualError;
            }
            self.sint16le = try self._io.readS2le();
            self.sint32le = try self._io.readS4le();
            self.sint64le = try self._io.readS8le();
            self.magic_uint_be = try self._io.readBytes(self._allocator(), 9);
            if (!(_imp_std.mem.eql(u8, self.magic_uint_be, &[_]u8{ 80, 65, 67, 75, 45, 85, 45, 66, 69 }))) {
                return error.ValidationNotEqualError;
            }
            self.uint16be = try self._io.readU2be();
            self.uint32be = try self._io.readU4be();
            self.uint64be = try self._io.readU8be();
            self.magic_sint_be = try self._io.readBytes(self._allocator(), 9);
            if (!(_imp_std.mem.eql(u8, self.magic_sint_be, &[_]u8{ 80, 65, 67, 75, 45, 83, 45, 66, 69 }))) {
                return error.ValidationNotEqualError;
            }
            self.sint16be = try self._io.readS2be();
            self.sint32be = try self._io.readS4be();
            self.sint64be = try self._io.readS8be();
        }
        magic1: []const u8 = undefined,
        uint8: u8 = undefined,
        sint8: i8 = undefined,
        magic_uint: []const u8 = undefined,
        uint16: u16 = undefined,
        uint32: u32 = undefined,
        uint64: u64 = undefined,
        magic_sint: []const u8 = undefined,
        sint16: i16 = undefined,
        sint32: i32 = undefined,
        sint64: i64 = undefined,
        magic_uint_le: []const u8 = undefined,
        uint16le: u16 = undefined,
        uint32le: u32 = undefined,
        uint64le: u64 = undefined,
        magic_sint_le: []const u8 = undefined,
        sint16le: i16 = undefined,
        sint32le: i32 = undefined,
        sint64le: i64 = undefined,
        magic_uint_be: []const u8 = undefined,
        uint16be: u16 = undefined,
        uint32be: u32 = undefined,
        uint64be: u64 = undefined,
        magic_sint_be: []const u8 = undefined,
        sint16be: i16 = undefined,
        sint32be: i32 = undefined,
        sint64be: i64 = undefined,
        _root: ?*FixedStruct,
        _parent: ?*FixedStruct,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    pub fn hdr(self: *FixedStruct) !*Header {
        if (self._m_hdr) |_v|
            return _v;
        var _v: *Header = undefined;
        const _pos = self._io.pos();
        try self._io.seek(0);
        _v = try Header.create(self._arena, self._io, self, self._root);
        try self._io.seek(_pos);
        self._m_hdr = _v;
        return _v;
    }
    _m_hdr: ?*Header = null,
    _root: ?*FixedStruct,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
