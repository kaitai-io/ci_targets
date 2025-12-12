// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const SwitchRepeatExprInvalid = struct {
    pub const Body_switch = union(enum) {
        one: *One,
        two: *Two,
        bytes: []const u8,
    };
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*SwitchRepeatExprInvalid) !*SwitchRepeatExprInvalid {
        const self = try _arena.allocator().create(SwitchRepeatExprInvalid);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const SwitchRepeatExprInvalid) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *SwitchRepeatExprInvalid) !void {
        self.code = try self._io.readU1();
        self.size = try self._io.readU4le();
        self.body = try self._allocator().create(_imp_std.ArrayList(Body_switch));
        self.body.* = .empty;
        for (0..1) |i| {
            {
                const _maybe_unused = i;
                _ = _maybe_unused;
            }
            switch (self.code) {
                255 => {
                    const _raw_body = try self._io.readBytes(self._allocator(), self.size);
                    const _io__raw_body = try self._allocator().create(_imp_kaitai_struct.KaitaiStream);
                    _io__raw_body.* = _imp_kaitai_struct.KaitaiStream.fromBytes(_raw_body);
                    try self.body.append(self._allocator(), .{ .one = try One.create(self._arena, _io__raw_body, self, self._root) });
                },
                34 => {
                    const _raw_body = try self._io.readBytes(self._allocator(), self.size);
                    const _io__raw_body = try self._allocator().create(_imp_kaitai_struct.KaitaiStream);
                    _io__raw_body.* = _imp_kaitai_struct.KaitaiStream.fromBytes(_raw_body);
                    try self.body.append(self._allocator(), .{ .two = try Two.create(self._arena, _io__raw_body, self, self._root) });
                },
                else => {
                    try self.body.append(self._allocator(), .{ .bytes = try self._io.readBytes(self._allocator(), self.size) });
                },
            }
        }
    }
    pub const One = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*SwitchRepeatExprInvalid, _root: ?*SwitchRepeatExprInvalid) !*One {
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
            self.first = try self._io.readBytesFull(self._allocator());
        }
        first: []const u8 = undefined,
        _root: ?*SwitchRepeatExprInvalid,
        _parent: ?*SwitchRepeatExprInvalid,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    pub const Two = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*SwitchRepeatExprInvalid, _root: ?*SwitchRepeatExprInvalid) !*Two {
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
            self.second = try self._io.readBytesFull(self._allocator());
        }
        second: []const u8 = undefined,
        _root: ?*SwitchRepeatExprInvalid,
        _parent: ?*SwitchRepeatExprInvalid,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    code: u8 = undefined,
    size: u32 = undefined,
    body: *_imp_std.ArrayList(Body_switch) = undefined,
    _root: ?*SwitchRepeatExprInvalid,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
