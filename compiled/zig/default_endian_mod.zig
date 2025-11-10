// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const DefaultEndianMod = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*DefaultEndianMod) !*DefaultEndianMod {
        const self = try _arena.allocator().create(DefaultEndianMod);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const DefaultEndianMod) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *DefaultEndianMod) !void {
        self.main = try MainObj.create(self._arena, self._io, self, self._root);
    }
    pub const MainObj = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*DefaultEndianMod, _root: ?*DefaultEndianMod) !*MainObj {
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
        fn _allocator(self: *const MainObj) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *MainObj) !void {
            self.one = try self._io.readS4le();
            self.nest = try Subnest.create(self._arena, self._io, self, self._root);
            self.nest_be = try SubnestBe.create(self._arena, self._io, self, self._root);
        }
        pub const Subnest = struct {
            pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*DefaultEndianMod.MainObj, _root: ?*DefaultEndianMod) !*Subnest {
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
            fn _allocator(self: *const Subnest) _imp_std.mem.Allocator {
                return self._arena.allocator();
            }
            fn _read(self: *Subnest) !void {
                self.two = try self._io.readS4le();
            }
            two: i32 = undefined,
            _root: ?*DefaultEndianMod,
            _parent: ?*DefaultEndianMod.MainObj,
            _arena: *_imp_std.heap.ArenaAllocator,
            _io: *_imp_kaitai_struct.KaitaiStream,
        };
        pub const SubnestBe = struct {
            pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*DefaultEndianMod.MainObj, _root: ?*DefaultEndianMod) !*SubnestBe {
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
            fn _allocator(self: *const SubnestBe) _imp_std.mem.Allocator {
                return self._arena.allocator();
            }
            fn _read(self: *SubnestBe) !void {
                self.two = try self._io.readS4be();
            }
            two: i32 = undefined,
            _root: ?*DefaultEndianMod,
            _parent: ?*DefaultEndianMod.MainObj,
            _arena: *_imp_std.heap.ArenaAllocator,
            _io: *_imp_kaitai_struct.KaitaiStream,
        };
        one: i32 = undefined,
        nest: *Subnest = undefined,
        nest_be: *SubnestBe = undefined,
        _root: ?*DefaultEndianMod,
        _parent: ?*DefaultEndianMod,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    main: *MainObj = undefined,
    _root: ?*DefaultEndianMod,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
