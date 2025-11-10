// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const NestedTypeParam = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*NestedTypeParam) !*NestedTypeParam {
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
    fn _allocator(self: *const NestedTypeParam) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *NestedTypeParam) !void {
        self.main_seq = try Nested.MyType.create(self._arena, self._io, self, self._root, 5);
    }
    pub const Nested = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*NestedTypeParam) !*Nested {
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
        fn _allocator(self: *const Nested) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *Nested) !void {
            _ = self;
        }
        pub const MyType = struct {
            pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*NestedTypeParam, _root: ?*NestedTypeParam, my_len: u32) !*MyType {
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
            fn _allocator(self: *const MyType) _imp_std.mem.Allocator {
                return self._arena.allocator();
            }
            fn _read(self: *MyType) !void {
                self.body = (try _imp_kaitai_struct.KaitaiStream.bytesToStr(self._allocator(), try self._io.readBytes(self._allocator(), self.my_len), "ASCII"));
            }
            body: []const u8 = undefined,
            my_len: u32 = undefined,
            _root: ?*NestedTypeParam,
            _parent: ?*NestedTypeParam,
            _arena: *_imp_std.heap.ArenaAllocator,
            _io: *_imp_kaitai_struct.KaitaiStream,
        };
        _root: ?*NestedTypeParam,
        _parent: ?*anyopaque,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    main_seq: *Nested.MyType = undefined,
    _root: ?*NestedTypeParam,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
