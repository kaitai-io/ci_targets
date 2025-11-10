// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const BufferedStruct = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*BufferedStruct) !*BufferedStruct {
        const self = try _arena.allocator().create(BufferedStruct);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const BufferedStruct) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *BufferedStruct) !void {
        self.len1 = try self._io.readU4le();
        const _raw_block1 = try self._io.readBytes(self._allocator(), self.len1);
        const _io__raw_block1 = try self._allocator().create(_imp_kaitai_struct.KaitaiStream);
        _io__raw_block1.* = _imp_kaitai_struct.KaitaiStream.fromBytes(_raw_block1);
        self.block1 = try Block.create(self._arena, _io__raw_block1, self, self._root);
        self.len2 = try self._io.readU4le();
        const _raw_block2 = try self._io.readBytes(self._allocator(), self.len2);
        const _io__raw_block2 = try self._allocator().create(_imp_kaitai_struct.KaitaiStream);
        _io__raw_block2.* = _imp_kaitai_struct.KaitaiStream.fromBytes(_raw_block2);
        self.block2 = try Block.create(self._arena, _io__raw_block2, self, self._root);
        self.finisher = try self._io.readU4le();
    }
    pub const Block = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*BufferedStruct, _root: ?*BufferedStruct) !*Block {
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
            self.number1 = try self._io.readU4le();
            self.number2 = try self._io.readU4le();
        }
        number1: u32 = undefined,
        number2: u32 = undefined,
        _root: ?*BufferedStruct,
        _parent: ?*BufferedStruct,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    len1: u32 = undefined,
    block1: *Block = undefined,
    len2: u32 = undefined,
    block2: *Block = undefined,
    finisher: u32 = undefined,
    _root: ?*BufferedStruct,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
