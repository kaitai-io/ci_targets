// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const ProcessCustom = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ProcessCustom) !*ProcessCustom {
        const self = try _arena.allocator().create(ProcessCustom);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ProcessCustom) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ProcessCustom) !void {
        const _raw_buf1 = try self._io.readBytes(self._allocator(), 5);
        MyCustomFx _process__raw_buf1 = new MyCustomFx(7, true, &[_]u8{ 32, 48, 64 });
        self.buf1 = _process__raw_buf1.decode(self._allocator(), _raw_buf1);
        const _raw_buf2 = try self._io.readBytes(self._allocator(), 5);
        nested.deeply.CustomFx _process__raw_buf2 = new nested.deeply.CustomFx(7);
        self.buf2 = _process__raw_buf2.decode(self._allocator(), _raw_buf2);
        self.key = try self._io.readU1();
        const _raw_buf3 = try self._io.readBytes(self._allocator(), 5);
        MyCustomFx _process__raw_buf3 = new MyCustomFx(self.key, false, &[_]u8{ 0 });
        self.buf3 = _process__raw_buf3.decode(self._allocator(), _raw_buf3);
    }
    buf1: []const u8 = undefined,
    buf2: []const u8 = undefined,
    key: u8 = undefined,
    buf3: []const u8 = undefined,
    _root: ?*ProcessCustom,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
