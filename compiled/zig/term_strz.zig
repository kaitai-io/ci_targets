// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const TermStrz = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*TermStrz) !*TermStrz {
        const self = try _arena.allocator().create(TermStrz);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const TermStrz) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *TermStrz) !void {
        self.s1 = (try _imp_kaitai_struct.KaitaiStream.bytesToStr(self._allocator(), try self._io.readBytesTerm(self._allocator(), 124, false, true, true), "UTF-8"));
        self.s2 = (try _imp_kaitai_struct.KaitaiStream.bytesToStr(self._allocator(), try self._io.readBytesTerm(self._allocator(), 124, false, false, true), "UTF-8"));
        self.s3 = (try _imp_kaitai_struct.KaitaiStream.bytesToStr(self._allocator(), try self._io.readBytesTerm(self._allocator(), 64, true, true, true), "UTF-8"));
    }
    s1: []const u8 = undefined,
    s2: []const u8 = undefined,
    s3: []const u8 = undefined,
    _root: ?*TermStrz,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
