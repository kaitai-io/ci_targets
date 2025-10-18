// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const ProcessRepeatUsertype = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ProcessRepeatUsertype) !*ProcessRepeatUsertype {
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
    fn _allocator(self: *const ProcessRepeatUsertype) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ProcessRepeatUsertype) !void {
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
            try self._raw_blocks.append(self._allocator(), kaitai_struct.KaitaiStream.processXor(self._raw__raw_blocks.items[i], @as(i8, 158)));
            const _io__raw_blocks = try self._allocator().create(kaitai_struct.KaitaiStream);
            _io__raw_blocks.* = kaitai_struct.KaitaiStream.fromBytes(self._raw_blocks.items[i]);
            try self.blocks.append(self._allocator(), try Block.create(self._arena, _io__raw_blocks, self, self._root));
        }
    }
    pub const Block = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*ProcessRepeatUsertype, _root: ?*ProcessRepeatUsertype) !*Block {
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
            self.a = try self._io.readS4le();
            self.b = try self._io.readS1();
        }
        a: i32 = undefined,
        b: i8 = undefined,
        _root: ?*ProcessRepeatUsertype,
        _parent: ?*ProcessRepeatUsertype,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    blocks: *std.ArrayList(*Block) = undefined,
    _root: ?*ProcessRepeatUsertype,
    _parent: ?*anyopaque,
    _raw_blocks: *std.ArrayList([]u8) = undefined,
    _raw__raw_blocks: *std.ArrayList([]u8) = undefined,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
