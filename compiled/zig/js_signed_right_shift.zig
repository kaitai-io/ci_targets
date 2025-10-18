// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const JsSignedRightShift = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*JsSignedRightShift) !*JsSignedRightShift {
        const self = try _arena.allocator().create(JsSignedRightShift);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const JsSignedRightShift) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *JsSignedRightShift) !void {
        _ = self;
    }
    pub fn shouldBe40000000(self: *JsSignedRightShift) !i32 {
        if (self._m_should_be_40000000) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = 2147483648 >> 1;
        self._m_should_be_40000000 = _v;
        return _v;
    }
    pub fn shouldBeA00000(self: *JsSignedRightShift) !i32 {
        if (self._m_should_be_a00000) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = 2684354560 >> 8;
        self._m_should_be_a00000 = _v;
        return _v;
    }
    _m_should_be_40000000: ?i32 = null,
    _m_should_be_a00000: ?i32 = null,
    _root: ?*JsSignedRightShift,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
