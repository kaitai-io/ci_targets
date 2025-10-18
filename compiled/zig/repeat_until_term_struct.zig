// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const RepeatUntilTermStruct = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*RepeatUntilTermStruct) !*RepeatUntilTermStruct {
        const self = try _arena.allocator().create(RepeatUntilTermStruct);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const RepeatUntilTermStruct) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *RepeatUntilTermStruct) !void {
        self._raw_records1 = try self._allocator().create(std.ArrayList([]u8));
        self._raw_records1.* = .empty;
        self.records1 = try self._allocator().create(std.ArrayList(*BytesWrapper));
        self.records1.* = .empty;
        {
            var i: usize = 0;
            while (true) : (i += 1) {
                const _buf = try self._io.readBytesTerm(self._allocator(), 170, false, true, true);
                try self._raw_records1.append(self._allocator(), _buf);
                const _io__raw_records1 = try self._allocator().create(kaitai_struct.KaitaiStream);
                _io__raw_records1.* = kaitai_struct.KaitaiStream.fromBytes(_buf);
                const _it = try BytesWrapper.create(self._arena, _io__raw_records1, self, self._root);
                try self.records1.append(self._allocator(), _it);
                if (_it.value.len == 0) {
                    break;
                }
            }
        }
        self._raw_records2 = try self._allocator().create(std.ArrayList([]u8));
        self._raw_records2.* = .empty;
        self.records2 = try self._allocator().create(std.ArrayList(*BytesWrapper));
        self.records2.* = .empty;
        {
            var i: usize = 0;
            while (true) : (i += 1) {
                const _buf = try self._io.readBytesTerm(self._allocator(), 170, true, true, true);
                try self._raw_records2.append(self._allocator(), _buf);
                const _io__raw_records2 = try self._allocator().create(kaitai_struct.KaitaiStream);
                _io__raw_records2.* = kaitai_struct.KaitaiStream.fromBytes(_buf);
                const _it = try BytesWrapper.create(self._arena, _io__raw_records2, self, self._root);
                try self.records2.append(self._allocator(), _it);
                if (!std.mem.eql(u8, _it.value, &[_]u8{ 170 })) {
                    break;
                }
            }
        }
        self._raw_records3 = try self._allocator().create(std.ArrayList([]u8));
        self._raw_records3.* = .empty;
        self.records3 = try self._allocator().create(std.ArrayList(*BytesWrapper));
        self.records3.* = .empty;
        {
            var i: usize = 0;
            while (true) : (i += 1) {
                const _buf = try self._io.readBytesTerm(self._allocator(), 85, false, false, true);
                try self._raw_records3.append(self._allocator(), _buf);
                const _io__raw_records3 = try self._allocator().create(kaitai_struct.KaitaiStream);
                _io__raw_records3.* = kaitai_struct.KaitaiStream.fromBytes(_buf);
                const _it = try BytesWrapper.create(self._arena, _io__raw_records3, self, self._root);
                try self.records3.append(self._allocator(), _it);
                if (std.mem.eql(u8, _it.value, self.records1.items[self.records1.items.len - 1].value)) {
                    break;
                }
            }
        }
    }
    pub const BytesWrapper = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*RepeatUntilTermStruct, _root: ?*RepeatUntilTermStruct) !*BytesWrapper {
            const self = try _arena.allocator().create(BytesWrapper);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const BytesWrapper) std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *BytesWrapper) !void {
            self.value = try self._io.readBytesFull(self._allocator());
        }
        value: []u8 = undefined,
        _root: ?*RepeatUntilTermStruct,
        _parent: ?*RepeatUntilTermStruct,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    records1: *std.ArrayList(*BytesWrapper) = undefined,
    records2: *std.ArrayList(*BytesWrapper) = undefined,
    records3: *std.ArrayList(*BytesWrapper) = undefined,
    _root: ?*RepeatUntilTermStruct,
    _parent: ?*anyopaque,
    _raw_records1: *std.ArrayList([]u8) = undefined,
    _raw_records2: *std.ArrayList([]u8) = undefined,
    _raw_records3: *std.ArrayList([]u8) = undefined,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
