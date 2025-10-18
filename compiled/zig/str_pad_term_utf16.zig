// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const StrPadTermUtf16 = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*StrPadTermUtf16) !*StrPadTermUtf16 {
        const self = try _arena.allocator().create(StrPadTermUtf16);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const StrPadTermUtf16) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *StrPadTermUtf16) !void {
        self.str_term = kaitai_struct.KaitaiStream.bytesToStr(kaitai_struct.KaitaiStream.bytesTerminateMulti(try self._io.readBytes(self._allocator(), 10), &[_]u8{ 0, 0 }, false), "UTF-16LE");
        self.str_term_include = kaitai_struct.KaitaiStream.bytesToStr(kaitai_struct.KaitaiStream.bytesTerminateMulti(try self._io.readBytes(self._allocator(), 10), &[_]u8{ 0, 0 }, true), "UTF-16LE");
        self.str_term_and_pad = kaitai_struct.KaitaiStream.bytesToStr(kaitai_struct.KaitaiStream.bytesTerminateMulti(kaitai_struct.KaitaiStream.bytesStripRight(try self._io.readBytes(self._allocator(), 9), 43), &[_]u8{ 0, 0 }, false), "UTF-16LE");
    }
    str_term: []u8 = undefined,
    str_term_include: []u8 = undefined,
    str_term_and_pad: []u8 = undefined,
    _root: ?*StrPadTermUtf16,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
