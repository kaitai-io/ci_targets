// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const Enum1 = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*Enum1) !*Enum1 {
        const self = try _arena.allocator().create(Enum1);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const Enum1) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *Enum1) !void {
        self.main = try MainObj.create(self._arena, self._io, self, self._root);
    }
    pub const MainObj = struct {
        pub const Animal = enum(i32) {
            dog = 4,
            cat = 7,
            chicken = 12,
            _,
        };
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*Enum1, _root: ?*Enum1) !*MainObj {
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
            self.submain = try SubmainObj.create(self._arena, self._io, self, self._root);
        }
        pub const SubmainObj = struct {
            pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*Enum1.MainObj, _root: ?*Enum1) !*SubmainObj {
                const self = try _arena.allocator().create(SubmainObj);
                self.* = .{
                    ._arena = _arena,
                    ._io = _io,
                    ._parent = _parent,
                    ._root = _root,
                };
                try self._read();
                return self;
            }
            fn _allocator(self: *const SubmainObj) _imp_std.mem.Allocator {
                return self._arena.allocator();
            }
            fn _read(self: *SubmainObj) !void {
                self.pet_1 = @as(Enum1.MainObj.Animal, @enumFromInt(try self._io.readU4le()));
                self.pet_2 = @as(Enum1.MainObj.Animal, @enumFromInt(try self._io.readU4le()));
            }
            pet_1: Animal = undefined,
            pet_2: Animal = undefined,
            _root: ?*Enum1,
            _parent: ?*Enum1.MainObj,
            _arena: *_imp_std.heap.ArenaAllocator,
            _io: *_imp_kaitai_struct.KaitaiStream,
        };
        submain: *SubmainObj = undefined,
        _root: ?*Enum1,
        _parent: ?*Enum1,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    main: *MainObj = undefined,
    _root: ?*Enum1,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
