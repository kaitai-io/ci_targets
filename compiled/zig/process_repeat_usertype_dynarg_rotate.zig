// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const ProcessRepeatUsertypeDynargRotate = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ProcessRepeatUsertypeDynargRotate) !*ProcessRepeatUsertypeDynargRotate {
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
    fn _allocator(self: *const ProcessRepeatUsertypeDynargRotate) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ProcessRepeatUsertypeDynargRotate) !void {
        self._raw_blocks_rol = try self._allocator().create(std.ArrayList([]u8));
        self._raw_blocks_rol.* = .empty;
        self._raw__raw_blocks_rol = try self._allocator().create(std.ArrayList([]u8));
        self._raw__raw_blocks_rol.* = .empty;
        self.blocks_rol = try self._allocator().create(std.ArrayList(*Block));
        self.blocks_rol.* = .empty;
        for (0..2) |i| {
            {
                const _maybe_unused = i;
                _ = _maybe_unused;
            }
            try self._raw__raw_blocks_rol.append(self._allocator(), try self._io.readBytes(self._allocator(), 3));
            try self._raw_blocks_rol.append(self._allocator(), kaitai_struct.KaitaiStream.processRotateLeft(self._raw__raw_blocks_rol.items[i], self._io.pos() - 4 * i, 1));
            const _io__raw_blocks_rol = try self._allocator().create(kaitai_struct.KaitaiStream);
            _io__raw_blocks_rol.* = kaitai_struct.KaitaiStream.fromBytes(self._raw_blocks_rol.items[i]);
            try self.blocks_rol.append(self._allocator(), try Block.create(self._arena, _io__raw_blocks_rol, self, self._root));
        }
        self._raw_blocks_ror = try self._allocator().create(std.ArrayList([]u8));
        self._raw_blocks_ror.* = .empty;
        self._raw__raw_blocks_ror = try self._allocator().create(std.ArrayList([]u8));
        self._raw__raw_blocks_ror.* = .empty;
        self.blocks_ror = try self._allocator().create(std.ArrayList(*Block));
        self.blocks_ror.* = .empty;
        for (0..3) |i| {
            {
                const _maybe_unused = i;
                _ = _maybe_unused;
            }
            try self._raw__raw_blocks_ror.append(self._allocator(), try self._io.readBytes(self._allocator(), 3));
            try self._raw_blocks_ror.append(self._allocator(), kaitai_struct.KaitaiStream.processRotateLeft(self._raw__raw_blocks_ror.items[i], 8 - ((self._io.pos() - 6) - 4 * i), 1));
            const _io__raw_blocks_ror = try self._allocator().create(kaitai_struct.KaitaiStream);
            _io__raw_blocks_ror.* = kaitai_struct.KaitaiStream.fromBytes(self._raw_blocks_ror.items[i]);
            try self.blocks_ror.append(self._allocator(), try Block.create(self._arena, _io__raw_blocks_ror, self, self._root));
        }
        self.blocks_b = try BlocksBWrapper.create(self._arena, self._io, self, self._root);
    }
    pub const Block = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*ProcessRepeatUsertypeDynargRotate, _root: ?*ProcessRepeatUsertypeDynargRotate) !*Block {
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
        fn _allocator(self: *const Block) std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *Block) !void {
            self.a = try self._io.readU2le();
        }
        a: u16 = undefined,
        _root: ?*ProcessRepeatUsertypeDynargRotate,
        _parent: ?*ProcessRepeatUsertypeDynargRotate,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    pub const BlocksBWrapper = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*ProcessRepeatUsertypeDynargRotate, _root: ?*ProcessRepeatUsertypeDynargRotate) !*BlocksBWrapper {
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
        fn _allocator(self: *const BlocksBWrapper) std.mem.Allocator {
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
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    blocks_rol: *std.ArrayList(*Block) = undefined,
    blocks_ror: *std.ArrayList(*Block) = undefined,
    blocks_b: *BlocksBWrapper = undefined,
    _root: ?*ProcessRepeatUsertypeDynargRotate,
    _parent: ?*anyopaque,
    _raw_blocks_rol: *std.ArrayList([]u8) = undefined,
    _raw__raw_blocks_rol: *std.ArrayList([]u8) = undefined,
    _raw_blocks_ror: *std.ArrayList([]u8) = undefined,
    _raw__raw_blocks_ror: *std.ArrayList([]u8) = undefined,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
