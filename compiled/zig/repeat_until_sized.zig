// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const RepeatUntilSized = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*RepeatUntilSized) !*RepeatUntilSized {
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
    fn _allocator(self: *const RepeatUntilSized) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *RepeatUntilSized) !void {
        self.records = try self._allocator().create(_imp_std.ArrayList(*Record));
        self.records.* = .empty;
        {
            var i: usize = 0;
            while (true) : (i += 1) {
                const _raw_records = try self._io.readBytes(self._allocator(), 5);
                const _io__raw_records = try self._allocator().create(_imp_kaitai_struct.KaitaiStream);
                _io__raw_records.* = _imp_kaitai_struct.KaitaiStream.fromBytes(_raw_records);
                const _it = try Record.create(self._arena, _io__raw_records, self, self._root);
                try self.records.append(self._allocator(), _it);
                if (_it.marker == 170) {
                    break;
                }
            }
        }
    }
    pub const Record = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*RepeatUntilSized, _root: ?*RepeatUntilSized) !*Record {
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
        fn _allocator(self: *const Record) _imp_std.mem.Allocator {
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
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    records: *_imp_std.ArrayList(*Record) = undefined,
    _root: ?*RepeatUntilSized,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
