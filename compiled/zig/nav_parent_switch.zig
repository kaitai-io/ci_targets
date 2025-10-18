// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const NavParentSwitch = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*NavParentSwitch) !*NavParentSwitch {
        const self = try _arena.allocator().create(NavParentSwitch);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const NavParentSwitch) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *NavParentSwitch) !void {
        self.category = try self._io.readU1();
        switch (self.category) {
            1 => {
                self.content = try Element1.create(self._arena, self._io, self, self._root);
            },
            else => {
            },
        }
    }
    pub const Element1 = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*NavParentSwitch, _root: ?*NavParentSwitch) !*Element1 {
            const self = try _arena.allocator().create(Element1);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const Element1) std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *Element1) !void {
            self.foo = try self._io.readU1();
            self.subelement = try Subelement1.create(self._arena, self._io, self, self._root);
        }
        foo: u8 = undefined,
        subelement: *Subelement1 = undefined,
        _root: ?*NavParentSwitch,
        _parent: ?*NavParentSwitch,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    pub const Subelement1 = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*NavParentSwitch.Element1, _root: ?*NavParentSwitch) !*Subelement1 {
            const self = try _arena.allocator().create(Subelement1);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const Subelement1) std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *Subelement1) !void {
            if (self._parent.?.foo == 66) {
                self.bar = try self._io.readU1();
            }
        }
        bar: ?u8 = null,
        _root: ?*NavParentSwitch,
        _parent: ?*NavParentSwitch.Element1,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    category: u8 = undefined,
    content: ?*Element1 = null,
    _root: ?*NavParentSwitch,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
