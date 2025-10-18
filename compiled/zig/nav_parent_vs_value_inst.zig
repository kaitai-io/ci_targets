// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const NavParentVsValueInst = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*NavParentVsValueInst) !*NavParentVsValueInst {
        const self = try _arena.allocator().create(NavParentVsValueInst);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const NavParentVsValueInst) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *NavParentVsValueInst) !void {
        self.s1 = kaitai_struct.KaitaiStream.bytesToStr(try self._io.readBytesTerm(self._allocator(), 124, false, true, true), "UTF-8");
        self.child = try ChildObj.create(self._arena, self._io, self, self._root);
    }
    pub const ChildObj = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*NavParentVsValueInst, _root: ?*NavParentVsValueInst) !*ChildObj {
            const self = try _arena.allocator().create(ChildObj);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const ChildObj) std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *ChildObj) !void {
            _ = self;
        }
        pub fn doSomething(self: *ChildObj) !bool {
            if (self._m_do_something) |_v|
                return _v;
            var _v: bool = undefined;
            _v = (if (std.mem.eql(u8, self._parent.?.s1, "foo")) true else false);
            self._m_do_something = _v;
            return _v;
        }
        _m_do_something: ?bool = null,
        _root: ?*NavParentVsValueInst,
        _parent: ?*NavParentVsValueInst,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    s1: []u8 = undefined,
    child: *ChildObj = undefined,
    _root: ?*NavParentVsValueInst,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
