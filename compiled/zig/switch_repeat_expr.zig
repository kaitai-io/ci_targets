// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const SwitchRepeatExpr = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*SwitchRepeatExpr) !*SwitchRepeatExpr {
        const self = try _arena.allocator().create(SwitchRepeatExpr);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const SwitchRepeatExpr) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *SwitchRepeatExpr) !void {
        self.code = try self._io.readU1();
        self.size = try self._io.readU4le();
        self.body = try self._allocator().create(_imp_std.ArrayList(*anyopaque));
        self.body.* = .empty;
        for (0..1) |i| {
            {
                const _maybe_unused = i;
                _ = _maybe_unused;
            }
            switch (self.code) {
                17 => {
                    const _raw_body = try self._io.readBytes(self._allocator(), self.size);
                    const _io__raw_body = try self._allocator().create(_imp_kaitai_struct.KaitaiStream);
                    _io__raw_body.* = _imp_kaitai_struct.KaitaiStream.fromBytes(_raw_body);
                    try self.body.append(self._allocator(), try One.create(self._arena, _io__raw_body, self, self._root));
                },
                34 => {
                    const _raw_body = try self._io.readBytes(self._allocator(), self.size);
                    const _io__raw_body = try self._allocator().create(_imp_kaitai_struct.KaitaiStream);
                    _io__raw_body.* = _imp_kaitai_struct.KaitaiStream.fromBytes(_raw_body);
                    try self.body.append(self._allocator(), try Two.create(self._arena, _io__raw_body, self, self._root));
                },
                else => {
                    try self.body.append(self._allocator(), try self._io.readBytes(self._allocator(), self.size));
                },
            }
        }
    }
    pub const One = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*SwitchRepeatExpr, _root: ?*SwitchRepeatExpr) !*One {
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
        _root: ?*SwitchRepeatExpr,
        _parent: ?*SwitchRepeatExpr,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    pub const Two = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*SwitchRepeatExpr, _root: ?*SwitchRepeatExpr) !*Two {
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
        _root: ?*SwitchRepeatExpr,
        _parent: ?*SwitchRepeatExpr,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    code: u8 = undefined,
    size: u32 = undefined,
    body: *_imp_std.ArrayList(*anyopaque) = undefined,
    _root: ?*SwitchRepeatExpr,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
