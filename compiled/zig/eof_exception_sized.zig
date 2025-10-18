// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const EofExceptionSized = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*EofExceptionSized) !*EofExceptionSized {
        const self = try _arena.allocator().create(EofExceptionSized);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const EofExceptionSized) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *EofExceptionSized) !void {
        self._raw_buf = try self._io.readBytes(self._allocator(), 13);
        const _io__raw_buf = try self._allocator().create(kaitai_struct.KaitaiStream);
        _io__raw_buf.* = kaitai_struct.KaitaiStream.fromBytes(self._raw_buf);
        self.buf = try Foo.create(self._arena, _io__raw_buf, self, self._root);
    }
    pub const Foo = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*EofExceptionSized, _root: ?*EofExceptionSized) !*Foo {
            const self = try _arena.allocator().create(Foo);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const Foo) std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *Foo) !void {
            _ = self;
        }
        _root: ?*EofExceptionSized,
        _parent: ?*EofExceptionSized,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    buf: *Foo = undefined,
    _root: ?*EofExceptionSized,
    _parent: ?*anyopaque,
    _raw_buf: []u8 = undefined,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
