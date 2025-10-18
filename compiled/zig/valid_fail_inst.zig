// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const ValidFailInst = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ValidFailInst) !*ValidFailInst {
        const self = try _arena.allocator().create(ValidFailInst);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ValidFailInst) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ValidFailInst) !void {
        if ((try self.inst()) >= 0) {
            self.a = try self._io.readU1();
        }
    }
    pub fn inst(self: *ValidFailInst) !u8 {
        if (self._m_inst) |_v|
            return _v;
        var _v: u8 = undefined;
        const _pos = self._io.pos();
        try self._io.seek(5);
        _v = try self._io.readU1();
        if (!(self._m_inst == 80)) {
            return error.ValidationNotEqualError;
        }
        try self._io.seek(_pos);
        self._m_inst = _v;
        return _v;
    }
    _m_inst: ?u8 = null,
    a: ?u8 = null,
    _root: ?*ValidFailInst,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
