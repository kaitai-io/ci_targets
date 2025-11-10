// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const ProcessCustomNoArgs = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ProcessCustomNoArgs) !*ProcessCustomNoArgs {
        const self = try _arena.allocator().create(ProcessCustomNoArgs);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ProcessCustomNoArgs) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ProcessCustomNoArgs) !void {
        const _raw_buf = try self._io.readBytes(self._allocator(), 5);
        CustomFxNoArgs _process__raw_buf = new CustomFxNoArgs();
        self.buf = _process__raw_buf.decode(self._allocator(), _raw_buf);
    }
    buf: []const u8 = undefined,
    _root: ?*ProcessCustomNoArgs,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
