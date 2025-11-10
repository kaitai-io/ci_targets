// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const ExprIoEof = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ExprIoEof) !*ExprIoEof {
        const self = try _arena.allocator().create(ExprIoEof);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ExprIoEof) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ExprIoEof) !void {
        const _raw_substream1 = try self._io.readBytes(self._allocator(), 4);
        const _io__raw_substream1 = try self._allocator().create(_imp_kaitai_struct.KaitaiStream);
        _io__raw_substream1.* = _imp_kaitai_struct.KaitaiStream.fromBytes(_raw_substream1);
        self.substream1 = try OneOrTwo.create(self._arena, _io__raw_substream1, self, self._root);
        const _raw_substream2 = try self._io.readBytes(self._allocator(), 8);
        const _io__raw_substream2 = try self._allocator().create(_imp_kaitai_struct.KaitaiStream);
        _io__raw_substream2.* = _imp_kaitai_struct.KaitaiStream.fromBytes(_raw_substream2);
        self.substream2 = try OneOrTwo.create(self._arena, _io__raw_substream2, self, self._root);
    }
    pub const OneOrTwo = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*ExprIoEof, _root: ?*ExprIoEof) !*OneOrTwo {
            const self = try _arena.allocator().create(OneOrTwo);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const OneOrTwo) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *OneOrTwo) !void {
            self.one = try self._io.readU4le();
            if (!((try self._io.isEof()))) {
                self.two = try self._io.readU4le();
            }
        }
        pub fn reflectEof(self: *OneOrTwo) !bool {
            if (self._m_reflect_eof) |_v|
                return _v;
            var _v: bool = undefined;
            _v = (try self._io.isEof());
            self._m_reflect_eof = _v;
            return _v;
        }
        _m_reflect_eof: ?bool = null,
        one: u32 = undefined,
        two: ?u32 = null,
        _root: ?*ExprIoEof,
        _parent: ?*ExprIoEof,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    substream1: *OneOrTwo = undefined,
    substream2: *OneOrTwo = undefined,
    _root: ?*ExprIoEof,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
