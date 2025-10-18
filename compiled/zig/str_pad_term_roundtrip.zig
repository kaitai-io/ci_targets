// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const StrPadTermRoundtrip = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*StrPadTermRoundtrip) !*StrPadTermRoundtrip {
        const self = try _arena.allocator().create(StrPadTermRoundtrip);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const StrPadTermRoundtrip) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *StrPadTermRoundtrip) !void {
        self.str_pad = kaitai_struct.KaitaiStream.bytesToStr(kaitai_struct.KaitaiStream.bytesStripRight(try self._io.readBytes(self._allocator(), 20), 64), "UTF-8");
        self.str_term = kaitai_struct.KaitaiStream.bytesToStr(kaitai_struct.KaitaiStream.bytesTerminate(kaitai_struct.KaitaiStream.bytesStripRight(try self._io.readBytes(self._allocator(), 20), 43), 64, false), "UTF-8");
        self.str_term_and_pad = kaitai_struct.KaitaiStream.bytesToStr(kaitai_struct.KaitaiStream.bytesTerminate(kaitai_struct.KaitaiStream.bytesStripRight(try self._io.readBytes(self._allocator(), 20), 43), 64, false), "UTF-8");
        self.str_term_include = kaitai_struct.KaitaiStream.bytesToStr(kaitai_struct.KaitaiStream.bytesTerminate(kaitai_struct.KaitaiStream.bytesStripRight(try self._io.readBytes(self._allocator(), 20), 46), 64, true), "UTF-8");
    }
    str_pad: []u8 = undefined,
    str_term: []u8 = undefined,
    str_term_and_pad: []u8 = undefined,
    str_term_include: []u8 = undefined,
    _root: ?*StrPadTermRoundtrip,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
