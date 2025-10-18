// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const StrPadTermEmpty = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*StrPadTermEmpty) !*StrPadTermEmpty {
        const self = try _arena.allocator().create(StrPadTermEmpty);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const StrPadTermEmpty) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *StrPadTermEmpty) !void {
        self.str_pad = kaitai_struct.KaitaiStream.bytesToStr(kaitai_struct.KaitaiStream.bytesStripRight(try self._io.readBytes(self._allocator(), 20), 64), "UTF-8");
        self.str_term = kaitai_struct.KaitaiStream.bytesToStr(kaitai_struct.KaitaiStream.bytesTerminate(try self._io.readBytes(self._allocator(), 20), 64, false), "UTF-8");
        self.str_term_and_pad = kaitai_struct.KaitaiStream.bytesToStr(kaitai_struct.KaitaiStream.bytesTerminate(kaitai_struct.KaitaiStream.bytesStripRight(try self._io.readBytes(self._allocator(), 20), 43), 64, false), "UTF-8");
        self.str_term_include = kaitai_struct.KaitaiStream.bytesToStr(kaitai_struct.KaitaiStream.bytesTerminate(try self._io.readBytes(self._allocator(), 20), 64, true), "UTF-8");
    }
    str_pad: []u8 = undefined,
    str_term: []u8 = undefined,
    str_term_and_pad: []u8 = undefined,
    str_term_include: []u8 = undefined,
    _root: ?*StrPadTermEmpty,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
