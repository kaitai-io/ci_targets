// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const ProcessToUser = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ProcessToUser) !*ProcessToUser {
        const self = try _arena.allocator().create(ProcessToUser);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ProcessToUser) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ProcessToUser) !void {
        const _raw__raw_buf1 = try self._io.readBytes(self._allocator(), 5);
        const _raw_buf1 = try _imp_kaitai_struct.KaitaiStream.processRotateLeft(self._allocator(), _raw__raw_buf1, 3);
        const _io__raw_buf1 = try self._allocator().create(_imp_kaitai_struct.KaitaiStream);
        _io__raw_buf1.* = _imp_kaitai_struct.KaitaiStream.fromBytes(_raw_buf1);
        self.buf1 = try JustStr.create(self._arena, _io__raw_buf1, self, self._root);
    }
    pub const JustStr = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*ProcessToUser, _root: ?*ProcessToUser) !*JustStr {
            const self = try _arena.allocator().create(JustStr);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const JustStr) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *JustStr) !void {
            self.str = (try _imp_kaitai_struct.KaitaiStream.bytesToStr(self._allocator(), try self._io.readBytesFull(self._allocator()), "UTF-8"));
        }
        str: []const u8 = undefined,
        _root: ?*ProcessToUser,
        _parent: ?*ProcessToUser,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    buf1: *JustStr = undefined,
    _root: ?*ProcessToUser,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
