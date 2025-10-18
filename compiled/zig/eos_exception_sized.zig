// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const EosExceptionSized = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*EosExceptionSized) !*EosExceptionSized {
        const self = try _arena.allocator().create(EosExceptionSized);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const EosExceptionSized) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *EosExceptionSized) !void {
        self._raw_envelope = try self._io.readBytes(self._allocator(), 6);
        const _io__raw_envelope = try self._allocator().create(kaitai_struct.KaitaiStream);
        _io__raw_envelope.* = kaitai_struct.KaitaiStream.fromBytes(self._raw_envelope);
        self.envelope = try Data.create(self._arena, _io__raw_envelope, self, self._root);
    }
    pub const Data = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*EosExceptionSized, _root: ?*EosExceptionSized) !*Data {
            const self = try _arena.allocator().create(Data);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const Data) std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *Data) !void {
            self._raw_buf = try self._io.readBytes(self._allocator(), 7);
            const _io__raw_buf = try self._allocator().create(kaitai_struct.KaitaiStream);
            _io__raw_buf.* = kaitai_struct.KaitaiStream.fromBytes(self._raw_buf);
            self.buf = try Foo.create(self._arena, _io__raw_buf, self, self._root);
        }
        buf: *Foo = undefined,
        _root: ?*EosExceptionSized,
        _parent: ?*EosExceptionSized,
        _raw_buf: []u8 = undefined,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    pub const Foo = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*EosExceptionSized.Data, _root: ?*EosExceptionSized) !*Foo {
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
        _root: ?*EosExceptionSized,
        _parent: ?*EosExceptionSized.Data,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    envelope: *Data = undefined,
    _root: ?*EosExceptionSized,
    _parent: ?*anyopaque,
    _raw_envelope: []u8 = undefined,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
