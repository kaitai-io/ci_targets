// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const EofExceptionSwitchUser = struct {
    pub const Data_switch = union(enum) {
        two: *Two,
        one: *One,
    };
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*EofExceptionSwitchUser) !*EofExceptionSwitchUser {
        const self = try _arena.allocator().create(EofExceptionSwitchUser);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const EofExceptionSwitchUser) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *EofExceptionSwitchUser) !void {
        self.code = try self._io.readU2le();
        switch (self.code) {
            2 => {
                self.data = .{ .two = try Two.create(self._arena, self._io, self, self._root) };
            },
            511 => {
                self.data = .{ .one = try One.create(self._arena, self._io, self, self._root) };
            },
            else => {
            },
        }
    }
    pub const One = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*EofExceptionSwitchUser, _root: ?*EofExceptionSwitchUser) !*One {
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
        fn _allocator(self: *const One) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *One) !void {
            self.val = try self._io.readS2le();
        }
        val: i16 = undefined,
        _root: ?*EofExceptionSwitchUser,
        _parent: ?*EofExceptionSwitchUser,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    pub const Two = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*EofExceptionSwitchUser, _root: ?*EofExceptionSwitchUser) !*Two {
            const self = try _arena.allocator().create(Two);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const Two) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *Two) !void {
            self.val = try self._io.readU2le();
        }
        val: u16 = undefined,
        _root: ?*EofExceptionSwitchUser,
        _parent: ?*EofExceptionSwitchUser,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    code: u16 = undefined,
    data: ?Data_switch = null,
    _root: ?*EofExceptionSwitchUser,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
