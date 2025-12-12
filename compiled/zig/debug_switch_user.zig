// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const DebugSwitchUser = struct {
    pub const Data_switch = union(enum) {
        one: *One,
        two: *Two,
    };
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*DebugSwitchUser) !*DebugSwitchUser {
        const self = try _arena.allocator().create(DebugSwitchUser);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        return self;
    }
    fn _allocator(self: *const DebugSwitchUser) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    pub fn _read(self: *DebugSwitchUser) !void {
        self.code = try self._io.readU1();
        switch (self.code) {
            1 => {
                self.data = .{ .one = try One.create(self._arena, self._io, self, self._root) };
                self.data.one._read();
            },
            2 => {
                self.data = .{ .two = try Two.create(self._arena, self._io, self, self._root) };
                self.data.two._read();
            },
            else => {
            },
        }
    }
    pub const One = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*DebugSwitchUser, _root: ?*DebugSwitchUser) !*One {
            const self = try _arena.allocator().create(One);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            return self;
        }
        fn _allocator(self: *const One) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        pub fn _read(self: *One) !void {
            self.val = try self._io.readS2le();
        }
        val: i16 = undefined,
        _root: ?*DebugSwitchUser,
        _parent: ?*DebugSwitchUser,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    pub const Two = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*DebugSwitchUser, _root: ?*DebugSwitchUser) !*Two {
            const self = try _arena.allocator().create(Two);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            return self;
        }
        fn _allocator(self: *const Two) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        pub fn _read(self: *Two) !void {
            self.val = try self._io.readU2le();
        }
        val: u16 = undefined,
        _root: ?*DebugSwitchUser,
        _parent: ?*DebugSwitchUser,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    code: u8 = undefined,
    data: ?Data_switch = null,
    _root: ?*DebugSwitchUser,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
