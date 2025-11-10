// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const EosExceptionU4 = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*EosExceptionU4) !*EosExceptionU4 {
        const self = try _arena.allocator().create(EosExceptionU4);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const EosExceptionU4) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *EosExceptionU4) !void {
        const _raw_envelope = try self._io.readBytes(self._allocator(), 6);
        const _io__raw_envelope = try self._allocator().create(_imp_kaitai_struct.KaitaiStream);
        _io__raw_envelope.* = _imp_kaitai_struct.KaitaiStream.fromBytes(_raw_envelope);
        self.envelope = try Data.create(self._arena, _io__raw_envelope, self, self._root);
    }
    pub const Data = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*EosExceptionU4, _root: ?*EosExceptionU4) !*Data {
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
            self.prebuf = try self._io.readBytes(self._allocator(), 3);
            self.fail_int = try self._io.readU4le();
        }
        prebuf: []const u8 = undefined,
        fail_int: u32 = undefined,
        _root: ?*EosExceptionU4,
        _parent: ?*EosExceptionU4,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    envelope: *Data = undefined,
    _root: ?*EosExceptionU4,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
