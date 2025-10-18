// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const BytesPadTermEqual = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*BytesPadTermEqual) !*BytesPadTermEqual {
        const self = try _arena.allocator().create(BytesPadTermEqual);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const BytesPadTermEqual) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *BytesPadTermEqual) !void {
        self.s1 = kaitai_struct.KaitaiStream.bytesTerminate(try self._io.readBytes(self._allocator(), 20), 64, false);
        self.s2 = kaitai_struct.KaitaiStream.bytesTerminate(kaitai_struct.KaitaiStream.bytesStripRight(try self._io.readBytes(self._allocator(), 20), 43), 64, true);
        self.s3 = kaitai_struct.KaitaiStream.bytesTerminate(try self._io.readBytes(self._allocator(), 20), 43, false);
        self.s4 = kaitai_struct.KaitaiStream.bytesTerminate(try self._io.readBytes(self._allocator(), 20), 46, true);
    }
    s1: []u8 = undefined,
    s2: []u8 = undefined,
    s3: []u8 = undefined,
    s4: []u8 = undefined,
    _root: ?*BytesPadTermEqual,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
