// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const RepeatUntilSized = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*RepeatUntilSized) !*RepeatUntilSized {
        const self = try _arena.allocator().create(RepeatUntilSized);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const RepeatUntilSized) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *RepeatUntilSized) !void {
        self._raw_records = try self._allocator().create(std.ArrayList([]u8));
        self._raw_records.* = .empty;
        self.records = try self._allocator().create(std.ArrayList(*Record));
        self.records.* = .empty;
        {
            var i: usize = 0;
            while (true) : (i += 1) {
                const _buf = try self._io.readBytes(self._allocator(), 5);
                try self._raw_records.append(self._allocator(), _buf);
                const _io__raw_records = try self._allocator().create(kaitai_struct.KaitaiStream);
                _io__raw_records.* = kaitai_struct.KaitaiStream.fromBytes(_buf);
                const _it = try Record.create(self._arena, _io__raw_records, self, self._root);
                try self.records.append(self._allocator(), _it);
                if (_it.marker == 170) {
                    break;
                }
            }
        }
    }
    pub const Record = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*RepeatUntilSized, _root: ?*RepeatUntilSized) !*Record {
            const self = try _arena.allocator().create(Record);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const Record) std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *Record) !void {
            self.marker = try self._io.readU1();
            self.body = try self._io.readU4le();
        }
        marker: u8 = undefined,
        body: u32 = undefined,
        _root: ?*RepeatUntilSized,
        _parent: ?*RepeatUntilSized,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    records: *std.ArrayList(*Record) = undefined,
    _root: ?*RepeatUntilSized,
    _parent: ?*anyopaque,
    _raw_records: *std.ArrayList([]u8) = undefined,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
