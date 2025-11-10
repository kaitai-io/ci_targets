// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const ExprIoPos = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ExprIoPos) !*ExprIoPos {
        const self = try _arena.allocator().create(ExprIoPos);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ExprIoPos) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ExprIoPos) !void {
        const _raw_substream1 = try self._io.readBytes(self._allocator(), 16);
        const _io__raw_substream1 = try self._allocator().create(_imp_kaitai_struct.KaitaiStream);
        _io__raw_substream1.* = _imp_kaitai_struct.KaitaiStream.fromBytes(_raw_substream1);
        self.substream1 = try AllPlusNumber.create(self._arena, _io__raw_substream1, self, self._root);
        const _raw_substream2 = try self._io.readBytes(self._allocator(), 14);
        const _io__raw_substream2 = try self._allocator().create(_imp_kaitai_struct.KaitaiStream);
        _io__raw_substream2.* = _imp_kaitai_struct.KaitaiStream.fromBytes(_raw_substream2);
        self.substream2 = try AllPlusNumber.create(self._arena, _io__raw_substream2, self, self._root);
    }
    pub const AllPlusNumber = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*ExprIoPos, _root: ?*ExprIoPos) !*AllPlusNumber {
            const self = try _arena.allocator().create(AllPlusNumber);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const AllPlusNumber) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *AllPlusNumber) !void {
            self.my_str = (try _imp_kaitai_struct.KaitaiStream.bytesToStr(self._allocator(), try self._io.readBytesTerm(self._allocator(), 0, false, true, true), "UTF-8"));
            self.body = try self._io.readBytes(self._allocator(), ((try self._io.size()) - self._io.pos()) - 2);
            self.number = try self._io.readU2le();
        }
        my_str: []const u8 = undefined,
        body: []const u8 = undefined,
        number: u16 = undefined,
        _root: ?*ExprIoPos,
        _parent: ?*ExprIoPos,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    substream1: *AllPlusNumber = undefined,
    substream2: *AllPlusNumber = undefined,
    _root: ?*ExprIoPos,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
