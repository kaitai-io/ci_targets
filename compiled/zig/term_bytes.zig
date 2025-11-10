// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const TermBytes = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*TermBytes) !*TermBytes {
        const self = try _arena.allocator().create(TermBytes);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const TermBytes) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *TermBytes) !void {
        self.s1 = try self._io.readBytesTerm(self._allocator(), 124, false, true, true);
        self.s2 = try self._io.readBytesTerm(self._allocator(), 124, false, false, true);
        self.s3 = try self._io.readBytesTerm(self._allocator(), 64, true, true, true);
    }
    s1: []const u8 = undefined,
    s2: []const u8 = undefined,
    s3: []const u8 = undefined,
    _root: ?*TermBytes,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
