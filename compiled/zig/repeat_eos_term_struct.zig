// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const RepeatEosTermStruct = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*RepeatEosTermStruct) !*RepeatEosTermStruct {
        const self = try _arena.allocator().create(RepeatEosTermStruct);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const RepeatEosTermStruct) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *RepeatEosTermStruct) !void {
        self.records = try self._allocator().create(_imp_std.ArrayList(*BytesWrapper));
        self.records.* = .empty;
        {
            var i: usize = 0;
            while (!try self._io.isEof()) : (i += 1) {
                const _raw_records = try self._io.readBytesTerm(self._allocator(), 178, true, true, true);
                const _io__raw_records = try self._allocator().create(_imp_kaitai_struct.KaitaiStream);
                _io__raw_records.* = _imp_kaitai_struct.KaitaiStream.fromBytes(_raw_records);
                try self.records.append(self._allocator(), try BytesWrapper.create(self._arena, _io__raw_records, self, self._root));
            }
        }
    }
    pub const BytesWrapper = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*RepeatEosTermStruct, _root: ?*RepeatEosTermStruct) !*BytesWrapper {
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
        fn _allocator(self: *const BytesWrapper) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *BytesWrapper) !void {
            self.value = try self._io.readBytesFull(self._allocator());
        }
        value: []const u8 = undefined,
        _root: ?*RepeatEosTermStruct,
        _parent: ?*RepeatEosTermStruct,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    records: *_imp_std.ArrayList(*BytesWrapper) = undefined,
    _root: ?*RepeatEosTermStruct,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
