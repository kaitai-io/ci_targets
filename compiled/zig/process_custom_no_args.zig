// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const ProcessCustomNoArgs = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ProcessCustomNoArgs) !*ProcessCustomNoArgs {
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
    fn _allocator(self: *const ProcessCustomNoArgs) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ProcessCustomNoArgs) !void {
        self._raw_buf = try self._io.readBytes(self._allocator(), 5);
        CustomFxNoArgs _process__raw_buf = new CustomFxNoArgs();
        self.buf = _process__raw_buf.decode(self._raw_buf);
    }
    buf: []u8 = undefined,
    _root: ?*ProcessCustomNoArgs,
    _parent: ?*anyopaque,
    _raw_buf: []u8 = undefined,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
