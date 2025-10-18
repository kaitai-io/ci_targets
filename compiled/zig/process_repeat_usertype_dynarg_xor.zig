// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const ProcessRepeatUsertypeDynargXor = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ProcessRepeatUsertypeDynargXor) !*ProcessRepeatUsertypeDynargXor {
        const self = try _arena.allocator().create(ProcessRepeatUsertypeDynargXor);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ProcessRepeatUsertypeDynargXor) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ProcessRepeatUsertypeDynargXor) !void {
        self._raw_blocks = try self._allocator().create(std.ArrayList([]u8));
        self._raw_blocks.* = .empty;
        self._raw__raw_blocks = try self._allocator().create(std.ArrayList([]u8));
        self._raw__raw_blocks.* = .empty;
        self.blocks = try self._allocator().create(std.ArrayList(*Block));
        self.blocks.* = .empty;
        for (0..2) |i| {
            {
                const _maybe_unused = i;
                _ = _maybe_unused;
            }
            try self._raw__raw_blocks.append(self._allocator(), try self._io.readBytes(self._allocator(), 5));
            try self._raw_blocks.append(self._allocator(), kaitai_struct.KaitaiStream.processXor(self._raw__raw_blocks.items[i], @as(i8, 155 ^ (i << 4 | self._io.pos()))));
            const _io__raw_blocks = try self._allocator().create(kaitai_struct.KaitaiStream);
            _io__raw_blocks.* = kaitai_struct.KaitaiStream.fromBytes(self._raw_blocks.items[i]);
            try self.blocks.append(self._allocator(), try Block.create(self._arena, _io__raw_blocks, self, self._root));
        }
        self.blocks_b = try BlocksBWrapper.create(self._arena, self._io, self, self._root);
    }
    pub const Block = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*ProcessRepeatUsertypeDynargXor, _root: ?*ProcessRepeatUsertypeDynargXor) !*Block {
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
            self.a = try self._io.readU4le();
        }
        a: u32 = undefined,
        _root: ?*ProcessRepeatUsertypeDynargXor,
        _parent: ?*ProcessRepeatUsertypeDynargXor,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    pub const BlocksBWrapper = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*ProcessRepeatUsertypeDynargXor, _root: ?*ProcessRepeatUsertypeDynargXor) !*BlocksBWrapper {
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
        pub fn blocks0B(self: *BlocksBWrapper) !u8 {
            if (self._m_blocks_0_b) |_v|
                return _v;
            var _v: u8 = undefined;
            const io = self._parent.?.blocks.items[0]._io;
            const _pos = io.pos();
            try io.seek(4);
            _v = try io.readU1();
            try io.seek(_pos);
            self._m_blocks_0_b = _v;
            return _v;
        }
        pub fn blocks1B(self: *BlocksBWrapper) !u8 {
            if (self._m_blocks_1_b) |_v|
                return _v;
            var _v: u8 = undefined;
            const io = self._parent.?.blocks.items[1]._io;
            const _pos = io.pos();
            try io.seek(4);
            _v = try io.readU1();
            try io.seek(_pos);
            self._m_blocks_1_b = _v;
            return _v;
        }
        _m_blocks_0_b: ?u8 = null,
        _m_blocks_1_b: ?u8 = null,
        dummy: u8 = undefined,
        _root: ?*ProcessRepeatUsertypeDynargXor,
        _parent: ?*ProcessRepeatUsertypeDynargXor,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    blocks: *std.ArrayList(*Block) = undefined,
    blocks_b: *BlocksBWrapper = undefined,
    _root: ?*ProcessRepeatUsertypeDynargXor,
    _parent: ?*anyopaque,
    _raw_blocks: *std.ArrayList([]u8) = undefined,
    _raw__raw_blocks: *std.ArrayList([]u8) = undefined,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
