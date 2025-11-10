// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const ValidShort = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ValidShort) !*ValidShort {
        const self = try _arena.allocator().create(ValidShort);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ValidShort) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ValidShort) !void {
        self.magic1 = try self._io.readBytes(self._allocator(), 6);
        if (!(_imp_std.mem.eql(u8, self.magic1, &[_]u8{ 80, 65, 67, 75, 45, 49 }))) {
            return error.ValidationNotEqualError;
        }
        self.uint8 = try self._io.readU1();
        if (!(self.uint8 == 255)) {
            return error.ValidationNotEqualError;
        }
        self.sint8 = try self._io.readS1();
        if (!(self.sint8 == -1)) {
            return error.ValidationNotEqualError;
        }
        self.magic_uint = (try _imp_kaitai_struct.KaitaiStream.bytesToStr(self._allocator(), try self._io.readBytes(self._allocator(), 10), "UTF-8"));
        if (!(_imp_std.mem.eql(u8, self.magic_uint, "PACK-U-DEF"))) {
            return error.ValidationNotEqualError;
        }
        self.uint16 = try self._io.readU2le();
        if (!(self.uint16 == 65535)) {
            return error.ValidationNotEqualError;
        }
        self.uint32 = try self._io.readU4le();
        if (!(self.uint32 == 4294967295)) {
            return error.ValidationNotEqualError;
        }
        self.uint64 = try self._io.readU8le();
        if (!(self.uint64 == 18446744073709551615)) {
            return error.ValidationNotEqualError;
        }
        self.magic_sint = (try _imp_kaitai_struct.KaitaiStream.bytesToStr(self._allocator(), try self._io.readBytes(self._allocator(), 10), "UTF-8"));
        if (!(_imp_std.mem.eql(u8, self.magic_sint, "PACK-S-DEF"))) {
            return error.ValidationNotEqualError;
        }
        self.sint16 = try self._io.readS2le();
        if (!(self.sint16 == -1)) {
            return error.ValidationNotEqualError;
        }
        self.sint32 = try self._io.readS4le();
        if (!(self.sint32 == -1)) {
            return error.ValidationNotEqualError;
        }
        self.sint64 = try self._io.readS8le();
        if (!(self.sint64 == -1)) {
            return error.ValidationNotEqualError;
        }
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
    _root: ?*ValidShort,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
