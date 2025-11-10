// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const TermU1Val = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*TermU1Val) !*TermU1Val {
        const self = try _arena.allocator().create(TermU1Val);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const TermU1Val) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *TermU1Val) !void {
        self.foo = try self._io.readBytesTerm(self._allocator(), 227, false, false, true);
        self.bar = (try _imp_kaitai_struct.KaitaiStream.bytesToStr(self._allocator(), try self._io.readBytesTerm(self._allocator(), 171, true, true, true), "UTF-8"));
    }
    foo: []const u8 = undefined,
    bar: []const u8 = undefined,
    _root: ?*TermU1Val,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
