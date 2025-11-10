// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const ProcessRepeatUsertypeDynargRotate = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ProcessRepeatUsertypeDynargRotate) !*ProcessRepeatUsertypeDynargRotate {
        const self = try _arena.allocator().create(ProcessRepeatUsertypeDynargRotate);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ProcessRepeatUsertypeDynargRotate) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ProcessRepeatUsertypeDynargRotate) !void {
        self.blocks_rol = try self._allocator().create(_imp_std.ArrayList(*Block));
        self.blocks_rol.* = .empty;
        for (0..2) |i| {
            {
                const _maybe_unused = i;
                _ = _maybe_unused;
            }
            const _raw__raw_blocks_rol = try self._io.readBytes(self._allocator(), 3);
            const _raw_blocks_rol = try _imp_kaitai_struct.KaitaiStream.processRotateLeft(self._allocator(), _raw__raw_blocks_rol, self._io.pos() - 4 * i);
            const _io__raw_blocks_rol = try self._allocator().create(_imp_kaitai_struct.KaitaiStream);
            _io__raw_blocks_rol.* = _imp_kaitai_struct.KaitaiStream.fromBytes(_raw_blocks_rol);
            try self.blocks_rol.append(self._allocator(), try Block.create(self._arena, _io__raw_blocks_rol, self, self._root));
        }
        self.blocks_ror = try self._allocator().create(_imp_std.ArrayList(*Block));
        self.blocks_ror.* = .empty;
        for (0..3) |i| {
            {
                const _maybe_unused = i;
                _ = _maybe_unused;
            }
            const _raw__raw_blocks_ror = try self._io.readBytes(self._allocator(), 3);
            const _raw_blocks_ror = try _imp_kaitai_struct.KaitaiStream.processRotateLeft(self._allocator(), _raw__raw_blocks_ror, 8 - ((self._io.pos() - 6) - 4 * i));
            const _io__raw_blocks_ror = try self._allocator().create(_imp_kaitai_struct.KaitaiStream);
            _io__raw_blocks_ror.* = _imp_kaitai_struct.KaitaiStream.fromBytes(_raw_blocks_ror);
            try self.blocks_ror.append(self._allocator(), try Block.create(self._arena, _io__raw_blocks_ror, self, self._root));
        }
        self.blocks_b = try BlocksBWrapper.create(self._arena, self._io, self, self._root);
    }
    pub const Block = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*ProcessRepeatUsertypeDynargRotate, _root: ?*ProcessRepeatUsertypeDynargRotate) !*Block {
            const self = try _arena.allocator().create(Block);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const Block) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *Block) !void {
            self.a = try self._io.readU2le();
        }
        a: u16 = undefined,
        _root: ?*ProcessRepeatUsertypeDynargRotate,
        _parent: ?*ProcessRepeatUsertypeDynargRotate,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    pub const BlocksBWrapper = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*ProcessRepeatUsertypeDynargRotate, _root: ?*ProcessRepeatUsertypeDynargRotate) !*BlocksBWrapper {
            const self = try _arena.allocator().create(BlocksBWrapper);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const BlocksBWrapper) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *BlocksBWrapper) !void {
            self.dummy = try self._io.readU1();
        }
        pub fn blocksRol0B(self: *BlocksBWrapper) !u8 {
            if (self._m_blocks_rol_0_b) |_v|
                return _v;
            var _v: u8 = undefined;
            const io = self._parent.?.blocks_rol.items[0]._io;
            const _pos = io.pos();
            try io.seek(2);
            _v = try io.readU1();
            try io.seek(_pos);
            self._m_blocks_rol_0_b = _v;
            return _v;
        }
        pub fn blocksRol1B(self: *BlocksBWrapper) !u8 {
            if (self._m_blocks_rol_1_b) |_v|
                return _v;
            var _v: u8 = undefined;
            const io = self._parent.?.blocks_rol.items[1]._io;
            const _pos = io.pos();
            try io.seek(2);
            _v = try io.readU1();
            try io.seek(_pos);
            self._m_blocks_rol_1_b = _v;
            return _v;
        }
        pub fn blocksRor0B(self: *BlocksBWrapper) !u8 {
            if (self._m_blocks_ror_0_b) |_v|
                return _v;
            var _v: u8 = undefined;
            const io = self._parent.?.blocks_ror.items[0]._io;
            const _pos = io.pos();
            try io.seek(2);
            _v = try io.readU1();
            try io.seek(_pos);
            self._m_blocks_ror_0_b = _v;
            return _v;
        }
        pub fn blocksRor1B(self: *BlocksBWrapper) !u8 {
            if (self._m_blocks_ror_1_b) |_v|
                return _v;
            var _v: u8 = undefined;
            const io = self._parent.?.blocks_ror.items[1]._io;
            const _pos = io.pos();
            try io.seek(2);
            _v = try io.readU1();
            try io.seek(_pos);
            self._m_blocks_ror_1_b = _v;
            return _v;
        }
        pub fn blocksRor2B(self: *BlocksBWrapper) !u8 {
            if (self._m_blocks_ror_2_b) |_v|
                return _v;
            var _v: u8 = undefined;
            const io = self._parent.?.blocks_ror.items[2]._io;
            const _pos = io.pos();
            try io.seek(2);
            _v = try io.readU1();
            try io.seek(_pos);
            self._m_blocks_ror_2_b = _v;
            return _v;
        }
        _m_blocks_rol_0_b: ?u8 = null,
        _m_blocks_rol_1_b: ?u8 = null,
        _m_blocks_ror_0_b: ?u8 = null,
        _m_blocks_ror_1_b: ?u8 = null,
        _m_blocks_ror_2_b: ?u8 = null,
        dummy: u8 = undefined,
        _root: ?*ProcessRepeatUsertypeDynargRotate,
        _parent: ?*ProcessRepeatUsertypeDynargRotate,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    blocks_rol: *_imp_std.ArrayList(*Block) = undefined,
    blocks_ror: *_imp_std.ArrayList(*Block) = undefined,
    blocks_b: *BlocksBWrapper = undefined,
    _root: ?*ProcessRepeatUsertypeDynargRotate,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
