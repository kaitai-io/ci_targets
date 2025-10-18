// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const StrEncodingsEscapingToS = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*StrEncodingsEscapingToS) !*StrEncodingsEscapingToS {
        const self = try _arena.allocator().create(StrEncodingsEscapingToS);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const StrEncodingsEscapingToS) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *StrEncodingsEscapingToS) !void {
        self.len_of_1 = try self._io.readU2le();
        self.str1_raw = try self._io.readBytes(self._allocator(), self.len_of_1);
        self.len_of_2 = try self._io.readU2le();
        self.str2_raw = try self._io.readBytes(self._allocator(), self.len_of_2);
        self.len_of_3 = try self._io.readU2le();
        self.str3_raw = try self._io.readBytes(self._allocator(), self.len_of_3);
        self.len_of_4 = try self._io.readU2le();
        self.str4_raw = try self._io.readBytes(self._allocator(), self.len_of_4);
    }
    pub fn str1(self: *StrEncodingsEscapingToS) ![]u8 {
        if (self._m_str1) |_v|
            return _v;
        var _v: []u8 = undefined;
        _v = kaitai_struct.KaitaiStream.bytesToStr(self.str1_raw, "ASCII\\\\x");
        self._m_str1 = _v;
        return _v;
    }
    pub fn str2(self: *StrEncodingsEscapingToS) ![]u8 {
        if (self._m_str2) |_v|
            return _v;
        var _v: []u8 = undefined;
        _v = kaitai_struct.KaitaiStream.bytesToStr(self.str2_raw, "UTF-8\\'x");
        self._m_str2 = _v;
        return _v;
    }
    pub fn str3(self: *StrEncodingsEscapingToS) ![]u8 {
        if (self._m_str3) |_v|
            return _v;
        var _v: []u8 = undefined;
        _v = kaitai_struct.KaitaiStream.bytesToStr(self.str3_raw, "SJIS\\\"x");
        self._m_str3 = _v;
        return _v;
    }
    pub fn str4(self: *StrEncodingsEscapingToS) ![]u8 {
        if (self._m_str4) |_v|
            return _v;
        var _v: []u8 = undefined;
        _v = kaitai_struct.KaitaiStream.bytesToStr(self.str4_raw, "IBM437\\nx");
        self._m_str4 = _v;
        return _v;
    }
    _m_str1: ?[]u8 = null,
    _m_str2: ?[]u8 = null,
    _m_str3: ?[]u8 = null,
    _m_str4: ?[]u8 = null,
    len_of_1: u16 = undefined,
    str1_raw: []u8 = undefined,
    len_of_2: u16 = undefined,
    str2_raw: []u8 = undefined,
    len_of_3: u16 = undefined,
    str3_raw: []u8 = undefined,
    len_of_4: u16 = undefined,
    str4_raw: []u8 = undefined,
    _root: ?*StrEncodingsEscapingToS,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
