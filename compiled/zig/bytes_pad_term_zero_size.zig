// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const BytesPadTermZeroSize = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*BytesPadTermZeroSize) !*BytesPadTermZeroSize {
        const self = try _arena.allocator().create(BytesPadTermZeroSize);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const BytesPadTermZeroSize) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *BytesPadTermZeroSize) !void {
        self.str_pad = kaitai_struct.KaitaiStream.bytesStripRight(try self._io.readBytes(self._allocator(), 0), 64);
        self.str_term = kaitai_struct.KaitaiStream.bytesTerminate(try self._io.readBytes(self._allocator(), 0), 64, false);
        self.str_term_and_pad = kaitai_struct.KaitaiStream.bytesTerminate(kaitai_struct.KaitaiStream.bytesStripRight(try self._io.readBytes(self._allocator(), 0), 43), 64, false);
        self.str_term_include = kaitai_struct.KaitaiStream.bytesTerminate(try self._io.readBytes(self._allocator(), 0), 64, true);
    }
    str_pad: []u8 = undefined,
    str_term: []u8 = undefined,
    str_term_and_pad: []u8 = undefined,
    str_term_include: []u8 = undefined,
    _root: ?*BytesPadTermZeroSize,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
