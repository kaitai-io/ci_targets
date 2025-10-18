// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const ParamsPassBool = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ParamsPassBool) !*ParamsPassBool {
        const self = try _arena.allocator().create(ParamsPassBool);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ParamsPassBool) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ParamsPassBool) !void {
        self.s_false = try self._io.readBitsIntBe(1) != 0;
        self.s_true = try self._io.readBitsIntBe(1) != 0;
        self.seq_b1 = try ParamTypeB1.create(self._arena, self._io, self, self._root, self.s_true);
        self.seq_bool = try ParamTypeBool.create(self._arena, self._io, self, self._root, self.s_false);
        self.literal_b1 = try ParamTypeB1.create(self._arena, self._io, self, self._root, false);
        self.literal_bool = try ParamTypeBool.create(self._arena, self._io, self, self._root, true);
        self.inst_b1 = try ParamTypeB1.create(self._arena, self._io, self, self._root, (try self.vTrue()));
        self.inst_bool = try ParamTypeBool.create(self._arena, self._io, self, self._root, (try self.vFalse()));
    }
    pub const ParamTypeB1 = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*ParamsPassBool, _root: ?*ParamsPassBool, arg: bool) !*ParamTypeB1 {
            const self = try _arena.allocator().create(ParamTypeB1);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            self.arg = arg;
            try self._read();
            return self;
        }
        fn _allocator(self: *const ParamTypeB1) std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *ParamTypeB1) !void {
            self.foo = try self._io.readBytes(self._allocator(), (if (self.arg) 1 else 2));
        }
        foo: []u8 = undefined,
        arg: bool = undefined,
        _root: ?*ParamsPassBool,
        _parent: ?*ParamsPassBool,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    pub const ParamTypeBool = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*ParamsPassBool, _root: ?*ParamsPassBool, arg: bool) !*ParamTypeBool {
            const self = try _arena.allocator().create(ParamTypeBool);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            self.arg = arg;
            try self._read();
            return self;
        }
        fn _allocator(self: *const ParamTypeBool) std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *ParamTypeBool) !void {
            self.foo = try self._io.readBytes(self._allocator(), (if (self.arg) 1 else 2));
        }
        foo: []u8 = undefined,
        arg: bool = undefined,
        _root: ?*ParamsPassBool,
        _parent: ?*ParamsPassBool,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    pub fn vFalse(self: *ParamsPassBool) !bool {
        if (self._m_v_false) |_v|
            return _v;
        var _v: bool = undefined;
        _v = false;
        self._m_v_false = _v;
        return _v;
    }
    pub fn vTrue(self: *ParamsPassBool) !bool {
        if (self._m_v_true) |_v|
            return _v;
        var _v: bool = undefined;
        _v = true;
        self._m_v_true = _v;
        return _v;
    }
    _m_v_false: ?bool = null,
    _m_v_true: ?bool = null,
    s_false: bool = undefined,
    s_true: bool = undefined,
    seq_b1: *ParamTypeB1 = undefined,
    seq_bool: *ParamTypeBool = undefined,
    literal_b1: *ParamTypeB1 = undefined,
    literal_bool: *ParamTypeBool = undefined,
    inst_b1: *ParamTypeB1 = undefined,
    inst_bool: *ParamTypeBool = undefined,
    _root: ?*ParamsPassBool,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
