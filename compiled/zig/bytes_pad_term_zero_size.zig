// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const BytesPadTermZeroSize = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*BytesPadTermZeroSize) !*BytesPadTermZeroSize {
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
    fn _allocator(self: *const BytesPadTermZeroSize) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *BytesPadTermZeroSize) !void {
        self.str_pad = _imp_kaitai_struct.KaitaiStream.bytesStripRight(try self._io.readBytes(self._allocator(), 0), 64);
        self.str_term = _imp_kaitai_struct.KaitaiStream.bytesTerminate(try self._io.readBytes(self._allocator(), 0), 64, false);
        self.str_term_and_pad = _imp_kaitai_struct.KaitaiStream.bytesTerminate(_imp_kaitai_struct.KaitaiStream.bytesStripRight(try self._io.readBytes(self._allocator(), 0), 43), 64, false);
        self.str_term_include = _imp_kaitai_struct.KaitaiStream.bytesTerminate(try self._io.readBytes(self._allocator(), 0), 64, true);
    }
    str_pad: []const u8 = undefined,
    str_term: []const u8 = undefined,
    str_term_and_pad: []const u8 = undefined,
    str_term_include: []const u8 = undefined,
    _root: ?*BytesPadTermZeroSize,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
