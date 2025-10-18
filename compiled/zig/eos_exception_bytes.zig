// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const EosExceptionBytes = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*EosExceptionBytes) !*EosExceptionBytes {
        const self = try _arena.allocator().create(EosExceptionBytes);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const EosExceptionBytes) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *EosExceptionBytes) !void {
        self._raw_envelope = try self._io.readBytes(self._allocator(), 6);
        const _io__raw_envelope = try self._allocator().create(kaitai_struct.KaitaiStream);
        _io__raw_envelope.* = kaitai_struct.KaitaiStream.fromBytes(self._raw_envelope);
        self.envelope = try Data.create(self._arena, _io__raw_envelope, self, self._root);
    }
    pub const Data = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*EosExceptionBytes, _root: ?*EosExceptionBytes) !*Data {
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
            self.buf = try self._io.readBytes(self._allocator(), 7);
        }
        buf: []u8 = undefined,
        _root: ?*EosExceptionBytes,
        _parent: ?*EosExceptionBytes,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    envelope: *Data = undefined,
    _root: ?*EosExceptionBytes,
    _parent: ?*anyopaque,
    _raw_envelope: []u8 = undefined,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
