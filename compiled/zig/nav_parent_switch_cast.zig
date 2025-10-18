// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const NavParentSwitchCast = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*NavParentSwitchCast) !*NavParentSwitchCast {
        const self = try _arena.allocator().create(NavParentSwitchCast);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const NavParentSwitchCast) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *NavParentSwitchCast) !void {
        self.main = try Foo.create(self._arena, self._io, self, self._root);
    }
    pub const Foo = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*NavParentSwitchCast, _root: ?*NavParentSwitchCast) !*Foo {
            const self = try _arena.allocator().create(Foo);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const Foo) std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *Foo) !void {
            self.buf_type = try self._io.readU1();
            self.flag = try self._io.readU1();
            switch (self.buf_type) {
                0 => {
                    self._raw_buf = try self._io.readBytes(self._allocator(), 4);
                    const _io__raw_buf = try self._allocator().create(kaitai_struct.KaitaiStream);
                    _io__raw_buf.* = kaitai_struct.KaitaiStream.fromBytes(self._raw_buf);
                    self.buf = try Zero.create(self._arena, _io__raw_buf, self, self._root);
                },
                1 => {
                    self._raw_buf = try self._io.readBytes(self._allocator(), 4);
                    const _io__raw_buf = try self._allocator().create(kaitai_struct.KaitaiStream);
                    _io__raw_buf.* = kaitai_struct.KaitaiStream.fromBytes(self._raw_buf);
                    self.buf = try One.create(self._arena, _io__raw_buf, self, self._root);
                },
                else => {
                    self.buf = try self._io.readBytes(self._allocator(), 4);
                },
            }
        }
        pub const Common = struct {
            pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*NavParentSwitchCast) !*Common {
                const self = try _arena.allocator().create(Common);
                self.* = .{
                    ._arena = _arena,
                    ._io = _io,
                    ._parent = _parent,
                    ._root = _root,
                };
                try self._read();
                return self;
            }
            fn _allocator(self: *const Common) std.mem.Allocator {
                return self._arena.allocator();
            }
            fn _read(self: *Common) !void {
                _ = self;
            }
            pub fn flag(self: *Common) !u8 {
                if (self._m_flag) |_v|
                    return _v;
                var _v: u8 = undefined;
                _v = @as(*NavParentSwitchCast.Foo, self._parent.?._parent).flag;
                self._m_flag = _v;
                return _v;
            }
            _m_flag: ?u8 = null,
            _root: ?*NavParentSwitchCast,
            _parent: ?*anyopaque,
            _arena: *std.heap.ArenaAllocator,
            _io: *kaitai_struct.KaitaiStream,
        };
        pub const One = struct {
            pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*NavParentSwitchCast.Foo, _root: ?*NavParentSwitchCast) !*One {
                const self = try _arena.allocator().create(One);
                self.* = .{
                    ._arena = _arena,
                    ._io = _io,
                    ._parent = _parent,
                    ._root = _root,
                };
                try self._read();
                return self;
            }
            fn _allocator(self: *const One) std.mem.Allocator {
                return self._arena.allocator();
            }
            fn _read(self: *One) !void {
                self.branch = try Common.create(self._arena, self._io, self, self._root);
            }
            branch: *Common = undefined,
            _root: ?*NavParentSwitchCast,
            _parent: ?*NavParentSwitchCast.Foo,
            _arena: *std.heap.ArenaAllocator,
            _io: *kaitai_struct.KaitaiStream,
        };
        pub const Zero = struct {
            pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*NavParentSwitchCast.Foo, _root: ?*NavParentSwitchCast) !*Zero {
                const self = try _arena.allocator().create(Zero);
                self.* = .{
                    ._arena = _arena,
                    ._io = _io,
                    ._parent = _parent,
                    ._root = _root,
                };
                try self._read();
                return self;
            }
            fn _allocator(self: *const Zero) std.mem.Allocator {
                return self._arena.allocator();
            }
            fn _read(self: *Zero) !void {
                self.branch = try Common.create(self._arena, self._io, self, self._root);
            }
            branch: *Common = undefined,
            _root: ?*NavParentSwitchCast,
            _parent: ?*NavParentSwitchCast.Foo,
            _arena: *std.heap.ArenaAllocator,
            _io: *kaitai_struct.KaitaiStream,
        };
        buf_type: u8 = undefined,
        flag: u8 = undefined,
        buf: *anyopaque = undefined,
        _root: ?*NavParentSwitchCast,
        _parent: ?*NavParentSwitchCast,
        _raw_buf: []u8 = undefined,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    main: *Foo = undefined,
    _root: ?*NavParentSwitchCast,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
