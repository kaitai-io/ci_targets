// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const EnumDeepLiterals = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*EnumDeepLiterals) !*EnumDeepLiterals {
        const self = try _arena.allocator().create(EnumDeepLiterals);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const EnumDeepLiterals) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *EnumDeepLiterals) !void {
        self.pet_1 = @as(EnumDeepLiterals.Container1.Animal, @enumFromInt(try self._io.readU4le()));
        self.pet_2 = @as(EnumDeepLiterals.Container1.Container2.Animal, @enumFromInt(try self._io.readU4le()));
    }
    pub const Container1 = struct {
        pub const Animal = enum(i32) {
            dog = 4,
            cat = 7,
            chicken = 12,
            _,
        };
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*EnumDeepLiterals) !*Container1 {
            const self = try _arena.allocator().create(Container1);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const Container1) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *Container1) !void {
            _ = self;
        }
        pub const Container2 = struct {
            pub const Animal = enum(i32) {
                canary = 4,
                turtle = 7,
                hare = 12,
                _,
            };
            pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*EnumDeepLiterals) !*Container2 {
                const self = try _arena.allocator().create(Container2);
                self.* = .{
                    ._arena = _arena,
                    ._io = _io,
                    ._parent = _parent,
                    ._root = _root,
                };
                try self._read();
                return self;
            }
            fn _allocator(self: *const Container2) _imp_std.mem.Allocator {
                return self._arena.allocator();
            }
            fn _read(self: *Container2) !void {
                _ = self;
            }
            _root: ?*EnumDeepLiterals,
            _parent: ?*anyopaque,
            _arena: *_imp_std.heap.ArenaAllocator,
            _io: *_imp_kaitai_struct.KaitaiStream,
        };
        _root: ?*EnumDeepLiterals,
        _parent: ?*anyopaque,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    pub fn isPet1Ok(self: *EnumDeepLiterals) !bool {
        if (self._m_is_pet_1_ok) |_v|
            return _v;
        var _v: bool = undefined;
        _v = self.pet_1 == EnumDeepLiterals.Container1.Animal.cat;
        self._m_is_pet_1_ok = _v;
        return _v;
    }
    pub fn isPet2Ok(self: *EnumDeepLiterals) !bool {
        if (self._m_is_pet_2_ok) |_v|
            return _v;
        var _v: bool = undefined;
        _v = self.pet_2 == EnumDeepLiterals.Container1.Container2.Animal.hare;
        self._m_is_pet_2_ok = _v;
        return _v;
    }
    _m_is_pet_1_ok: ?bool = null,
    _m_is_pet_2_ok: ?bool = null,
    pet_1: Container1.Animal = undefined,
    pet_2: Container1.Container2.Animal = undefined,
    _root: ?*EnumDeepLiterals,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
