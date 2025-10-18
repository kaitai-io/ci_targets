// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const DefaultBitEndianMod = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*DefaultBitEndianMod) !*DefaultBitEndianMod {
        const self = try _arena.allocator().create(DefaultBitEndianMod);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const DefaultBitEndianMod) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *DefaultBitEndianMod) !void {
        self.main = try MainObj.create(self._arena, self._io, self, self._root);
    }
    pub const MainObj = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*DefaultBitEndianMod, _root: ?*DefaultBitEndianMod) !*MainObj {
            const self = try _arena.allocator().create(MainObj);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const MainObj) std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *MainObj) !void {
            self.one = try self._io.readBitsIntLe(9);
            self.two = try self._io.readBitsIntLe(15);
            self.nest = try Subnest.create(self._arena, self._io, self, self._root);
            self.nest_be = try SubnestBe.create(self._arena, self._io, self, self._root);
        }
        pub const Subnest = struct {
            pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*DefaultBitEndianMod.MainObj, _root: ?*DefaultBitEndianMod) !*Subnest {
                const self = try _arena.allocator().create(Subnest);
                self.* = .{
                    ._arena = _arena,
                    ._io = _io,
                    ._parent = _parent,
                    ._root = _root,
                };
                try self._read();
                return self;
            }
            fn _allocator(self: *const Subnest) std.mem.Allocator {
                return self._arena.allocator();
            }
            fn _read(self: *Subnest) !void {
                self.two = try self._io.readBitsIntLe(16);
            }
            two: u64 = undefined,
            _root: ?*DefaultBitEndianMod,
            _parent: ?*DefaultBitEndianMod.MainObj,
            _arena: *std.heap.ArenaAllocator,
            _io: *kaitai_struct.KaitaiStream,
        };
        pub const SubnestBe = struct {
            pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*DefaultBitEndianMod.MainObj, _root: ?*DefaultBitEndianMod) !*SubnestBe {
                const self = try _arena.allocator().create(SubnestBe);
                self.* = .{
                    ._arena = _arena,
                    ._io = _io,
                    ._parent = _parent,
                    ._root = _root,
                };
                try self._read();
                return self;
            }
            fn _allocator(self: *const SubnestBe) std.mem.Allocator {
                return self._arena.allocator();
            }
            fn _read(self: *SubnestBe) !void {
                self.two = try self._io.readBitsIntBe(16);
            }
            two: u64 = undefined,
            _root: ?*DefaultBitEndianMod,
            _parent: ?*DefaultBitEndianMod.MainObj,
            _arena: *std.heap.ArenaAllocator,
            _io: *kaitai_struct.KaitaiStream,
        };
        one: u64 = undefined,
        two: u64 = undefined,
        nest: *Subnest = undefined,
        nest_be: *SubnestBe = undefined,
        _root: ?*DefaultBitEndianMod,
        _parent: ?*DefaultBitEndianMod,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    main: *MainObj = undefined,
    _root: ?*DefaultBitEndianMod,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
