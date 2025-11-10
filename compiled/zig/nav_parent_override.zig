// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const NavParentOverride = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*NavParentOverride) !*NavParentOverride {
        const self = try _arena.allocator().create(NavParentOverride);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const NavParentOverride) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *NavParentOverride) !void {
        self.child_size = try self._io.readU1();
        self.child_1 = try Child.create(self._arena, self._io, self, self._root);
        self.mediator_2 = try Mediator.create(self._arena, self._io, self, self._root);
    }
    pub const Child = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*NavParentOverride, _root: ?*NavParentOverride) !*Child {
            const self = try _arena.allocator().create(Child);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const Child) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *Child) !void {
            self.data = try self._io.readBytes(self._allocator(), self._parent.?.child_size);
        }
        data: []const u8 = undefined,
        _root: ?*NavParentOverride,
        _parent: ?*NavParentOverride,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    pub const Mediator = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*NavParentOverride, _root: ?*NavParentOverride) !*Mediator {
            const self = try _arena.allocator().create(Mediator);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const Mediator) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *Mediator) !void {
            self.child_2 = try Child.create(self._arena, self._io, self._parent.?, self._root);
        }
        child_2: *Child = undefined,
        _root: ?*NavParentOverride,
        _parent: ?*NavParentOverride,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    child_size: u8 = undefined,
    child_1: *Child = undefined,
    mediator_2: *Mediator = undefined,
    _root: ?*NavParentOverride,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
