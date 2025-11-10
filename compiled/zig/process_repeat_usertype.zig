// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const ProcessRepeatUsertype = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ProcessRepeatUsertype) !*ProcessRepeatUsertype {
        const self = try _arena.allocator().create(ProcessRepeatUsertype);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ProcessRepeatUsertype) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ProcessRepeatUsertype) !void {
        self.blocks = try self._allocator().create(_imp_std.ArrayList(*Block));
        self.blocks.* = .empty;
        for (0..2) |i| {
            {
                const _maybe_unused = i;
                _ = _maybe_unused;
            }
            const _raw__raw_blocks = try self._io.readBytes(self._allocator(), 5);
            const _raw_blocks = try _imp_kaitai_struct.KaitaiStream.processXorOne(self._allocator(), _raw__raw_blocks, @as(u8, 158));
            const _io__raw_blocks = try self._allocator().create(_imp_kaitai_struct.KaitaiStream);
            _io__raw_blocks.* = _imp_kaitai_struct.KaitaiStream.fromBytes(_raw_blocks);
            try self.blocks.append(self._allocator(), try Block.create(self._arena, _io__raw_blocks, self, self._root));
        }
    }
    pub const Block = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*ProcessRepeatUsertype, _root: ?*ProcessRepeatUsertype) !*Block {
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
            self.a = try self._io.readS4le();
            self.b = try self._io.readS1();
        }
        a: i32 = undefined,
        b: i8 = undefined,
        _root: ?*ProcessRepeatUsertype,
        _parent: ?*ProcessRepeatUsertype,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    blocks: *_imp_std.ArrayList(*Block) = undefined,
    _root: ?*ProcessRepeatUsertype,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
