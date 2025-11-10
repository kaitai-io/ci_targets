// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");
const _imp_imported_1 = @import("imported_1.zig");

pub const ImportsRel1 = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ImportsRel1) !*ImportsRel1 {
        const self = try _arena.allocator().create(ImportsRel1);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ImportsRel1) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ImportsRel1) !void {
        self.one = try self._io.readU1();
        self.two = try _imp_imported_1.Imported1.create(self._arena, self._io, null, null);
    }
    one: u8 = undefined,
    two: *_imp_imported_1.Imported1 = undefined,
    _root: ?*ImportsRel1,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
