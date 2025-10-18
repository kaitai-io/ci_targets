// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const ProcessCustom = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ProcessCustom) !*ProcessCustom {
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
    fn _allocator(self: *const ProcessCustom) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ProcessCustom) !void {
        self._raw_buf1 = try self._io.readBytes(self._allocator(), 5);
        MyCustomFx _process__raw_buf1 = new MyCustomFx(7, true, &[_]u8{ 32, 48, 64 });
        self.buf1 = _process__raw_buf1.decode(self._raw_buf1);
        self._raw_buf2 = try self._io.readBytes(self._allocator(), 5);
        nested.deeply.CustomFx _process__raw_buf2 = new nested.deeply.CustomFx(7);
        self.buf2 = _process__raw_buf2.decode(self._raw_buf2);
        self.key = try self._io.readU1();
        self._raw_buf3 = try self._io.readBytes(self._allocator(), 5);
        MyCustomFx _process__raw_buf3 = new MyCustomFx(self.key, false, &[_]u8{ 0 });
        self.buf3 = _process__raw_buf3.decode(self._raw_buf3);
    }
    buf1: []u8 = undefined,
    buf2: []u8 = undefined,
    key: u8 = undefined,
    buf3: []u8 = undefined,
    _root: ?*ProcessCustom,
    _parent: ?*anyopaque,
    _raw_buf1: []u8 = undefined,
    _raw_buf2: []u8 = undefined,
    _raw_buf3: []u8 = undefined,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
