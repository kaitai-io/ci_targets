// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const BytesPadTermEqual = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*BytesPadTermEqual) !*BytesPadTermEqual {
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
    fn _allocator(self: *const BytesPadTermEqual) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *BytesPadTermEqual) !void {
        self.s1 = _imp_kaitai_struct.KaitaiStream.bytesTerminate(try self._io.readBytes(self._allocator(), 20), 64, false);
        self.s2 = _imp_kaitai_struct.KaitaiStream.bytesTerminate(_imp_kaitai_struct.KaitaiStream.bytesStripRight(try self._io.readBytes(self._allocator(), 20), 43), 64, true);
        self.s3 = _imp_kaitai_struct.KaitaiStream.bytesTerminate(try self._io.readBytes(self._allocator(), 20), 43, false);
        self.s4 = _imp_kaitai_struct.KaitaiStream.bytesTerminate(try self._io.readBytes(self._allocator(), 20), 46, true);
    }
    s1: []const u8 = undefined,
    s2: []const u8 = undefined,
    s3: []const u8 = undefined,
    s4: []const u8 = undefined,
    _root: ?*BytesPadTermEqual,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
