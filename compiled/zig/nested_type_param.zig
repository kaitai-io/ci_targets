// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const NestedTypeParam = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*NestedTypeParam) !*NestedTypeParam {
        const self = try _arena.allocator().create(NestedTypeParam);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const NestedTypeParam) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *NestedTypeParam) !void {
        self.main_seq = try Nested.MyType.create(self._arena, self._io, self, self._root, 5);
    }
    pub const Nested = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*NestedTypeParam) !*Nested {
            const self = try _arena.allocator().create(Nested);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const Nested) std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *Nested) !void {
            _ = self;
        }
        pub const MyType = struct {
            pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*NestedTypeParam, _root: ?*NestedTypeParam, my_len: u32) !*MyType {
                const self = try _arena.allocator().create(MyType);
                self.* = .{
                    ._arena = _arena,
                    ._io = _io,
                    ._parent = _parent,
                    ._root = _root,
                };
                self.my_len = my_len;
                try self._read();
                return self;
            }
            fn _allocator(self: *const MyType) std.mem.Allocator {
                return self._arena.allocator();
            }
            fn _read(self: *MyType) !void {
                self.body = kaitai_struct.KaitaiStream.bytesToStr(try self._io.readBytes(self._allocator(), self.my_len), "ASCII");
            }
            body: []u8 = undefined,
            my_len: u32 = undefined,
            _root: ?*NestedTypeParam,
            _parent: ?*NestedTypeParam,
            _arena: *std.heap.ArenaAllocator,
            _io: *kaitai_struct.KaitaiStream,
        };
        _root: ?*NestedTypeParam,
        _parent: ?*anyopaque,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    main_seq: *Nested.MyType = undefined,
    _root: ?*NestedTypeParam,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
