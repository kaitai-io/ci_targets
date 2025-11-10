// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const EosExceptionBytes = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*EosExceptionBytes) !*EosExceptionBytes {
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
    fn _allocator(self: *const EosExceptionBytes) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *EosExceptionBytes) !void {
        const _raw_envelope = try self._io.readBytes(self._allocator(), 6);
        const _io__raw_envelope = try self._allocator().create(_imp_kaitai_struct.KaitaiStream);
        _io__raw_envelope.* = _imp_kaitai_struct.KaitaiStream.fromBytes(_raw_envelope);
        self.envelope = try Data.create(self._arena, _io__raw_envelope, self, self._root);
    }
    pub const Data = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*EosExceptionBytes, _root: ?*EosExceptionBytes) !*Data {
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
        fn _allocator(self: *const Data) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *Data) !void {
            self.buf = try self._io.readBytes(self._allocator(), 7);
        }
        buf: []const u8 = undefined,
        _root: ?*EosExceptionBytes,
        _parent: ?*EosExceptionBytes,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    envelope: *Data = undefined,
    _root: ?*EosExceptionBytes,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
