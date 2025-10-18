// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const StrEncodings = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*StrEncodings) !*StrEncodings {
        const self = try _arena.allocator().create(StrEncodings);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const StrEncodings) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *StrEncodings) !void {
        self.len_of_1 = try self._io.readU2le();
        self.str1 = kaitai_struct.KaitaiStream.bytesToStr(try self._io.readBytes(self._allocator(), self.len_of_1), "ASCII");
        self.len_of_2 = try self._io.readU2le();
        self.str2 = kaitai_struct.KaitaiStream.bytesToStr(try self._io.readBytes(self._allocator(), self.len_of_2), "UTF-8");
        self.len_of_3 = try self._io.readU2le();
        self.str3 = kaitai_struct.KaitaiStream.bytesToStr(try self._io.readBytes(self._allocator(), self.len_of_3), "Shift_JIS");
        self.len_of_4 = try self._io.readU2le();
        self.str4 = kaitai_struct.KaitaiStream.bytesToStr(try self._io.readBytes(self._allocator(), self.len_of_4), "IBM437");
    }
    len_of_1: u16 = undefined,
    str1: []u8 = undefined,
    len_of_2: u16 = undefined,
    str2: []u8 = undefined,
    len_of_3: u16 = undefined,
    str3: []u8 = undefined,
    len_of_4: u16 = undefined,
    str4: []u8 = undefined,
    _root: ?*StrEncodings,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
