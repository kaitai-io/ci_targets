// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");
const _imp_vlq_base128_le = @import("vlq_base128_le.zig");

pub const ImportsAbs = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ImportsAbs) !*ImportsAbs {
        const self = try _arena.allocator().create(ImportsAbs);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ImportsAbs) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ImportsAbs) !void {
        self.len = try _imp_vlq_base128_le.VlqBase128Le.create(self._arena, self._io, null, null);
        self.body = try self._io.readBytes(self._allocator(), (try self.len.value()));
    }
    len: *_imp_vlq_base128_le.VlqBase128Le = undefined,
    body: []const u8 = undefined,
    _root: ?*ImportsAbs,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
