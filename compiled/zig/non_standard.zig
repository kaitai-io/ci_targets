// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const NonStandard = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*NonStandard) !*NonStandard {
        const self = try _arena.allocator().create(NonStandard);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const NonStandard) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *NonStandard) !void {
        self.foo = try self._io.readU1();
        switch (self.foo) {
            42 => {
                self.bar = try self._io.readU2le();
            },
            43 => {
                self.bar = try self._io.readU4le();
            },
            else => {
            },
        }
    }
    pub fn pi(self: *NonStandard) !u8 {
        if (self._m_pi) |_v|
            return _v;
        var _v: u8 = undefined;
        const _pos = self._io.pos();
        try self._io.seek(0);
        _v = try self._io.readU1();
        try self._io.seek(_pos);
        self._m_pi = _v;
        return _v;
    }
    pub fn vi(self: *NonStandard) !u8 {
        if (self._m_vi) |_v|
            return _v;
        var _v: u8 = undefined;
        _v = self.foo;
        self._m_vi = _v;
        return _v;
    }
    _m_pi: ?u8 = null,
    _m_vi: ?u8 = null,
    foo: u8 = undefined,
    bar: ?u32 = null,
    _root: ?*NonStandard,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
