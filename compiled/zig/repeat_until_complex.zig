// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const RepeatUntilComplex = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*RepeatUntilComplex) !*RepeatUntilComplex {
        const self = try _arena.allocator().create(RepeatUntilComplex);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const RepeatUntilComplex) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *RepeatUntilComplex) !void {
        self.first = try self._allocator().create(std.ArrayList(*TypeU1));
        self.first.* = .empty;
        {
            var i: usize = 0;
            while (true) : (i += 1) {
                const _it = try TypeU1.create(self._arena, self._io, self, self._root);
                try self.first.append(self._allocator(), _it);
                if (_it.count == 0) {
                    break;
                }
            }
        }
        self.second = try self._allocator().create(std.ArrayList(*TypeU2));
        self.second.* = .empty;
        {
            var i: usize = 0;
            while (true) : (i += 1) {
                const _it = try TypeU2.create(self._arena, self._io, self, self._root);
                try self.second.append(self._allocator(), _it);
                if (_it.count == 0) {
                    break;
                }
            }
        }
        self.third = try self._allocator().create(std.ArrayList(u8));
        self.third.* = .empty;
        {
            var i: usize = 0;
            while (true) : (i += 1) {
                const _it = try self._io.readU1();
                try self.third.append(self._allocator(), _it);
                if (_it == 0) {
                    break;
                }
            }
        }
    }
    pub const TypeU1 = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*RepeatUntilComplex, _root: ?*RepeatUntilComplex) !*TypeU1 {
            const self = try _arena.allocator().create(TypeU1);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const TypeU1) std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *TypeU1) !void {
            self.count = try self._io.readU1();
            self.values = try self._allocator().create(std.ArrayList(u8));
            self.values.* = .empty;
            for (0..self.count) |i| {
                {
                    const _maybe_unused = i;
                    _ = _maybe_unused;
                }
                try self.values.append(self._allocator(), try self._io.readU1());
            }
        }
        count: u8 = undefined,
        values: *std.ArrayList(u8) = undefined,
        _root: ?*RepeatUntilComplex,
        _parent: ?*RepeatUntilComplex,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    pub const TypeU2 = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*RepeatUntilComplex, _root: ?*RepeatUntilComplex) !*TypeU2 {
            const self = try _arena.allocator().create(TypeU2);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const TypeU2) std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *TypeU2) !void {
            self.count = try self._io.readU2le();
            self.values = try self._allocator().create(std.ArrayList(u16));
            self.values.* = .empty;
            for (0..self.count) |i| {
                {
                    const _maybe_unused = i;
                    _ = _maybe_unused;
                }
                try self.values.append(self._allocator(), try self._io.readU2le());
            }
        }
        count: u16 = undefined,
        values: *std.ArrayList(u16) = undefined,
        _root: ?*RepeatUntilComplex,
        _parent: ?*RepeatUntilComplex,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    first: *std.ArrayList(*TypeU1) = undefined,
    second: *std.ArrayList(*TypeU2) = undefined,
    third: *std.ArrayList(u8) = undefined,
    _root: ?*RepeatUntilComplex,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
