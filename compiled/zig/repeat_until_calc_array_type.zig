// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const RepeatUntilCalcArrayType = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*RepeatUntilCalcArrayType) !*RepeatUntilCalcArrayType {
        const self = try _arena.allocator().create(RepeatUntilCalcArrayType);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const RepeatUntilCalcArrayType) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *RepeatUntilCalcArrayType) !void {
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
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*RepeatUntilCalcArrayType, _root: ?*RepeatUntilCalcArrayType) !*Record {
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
        _root: ?*RepeatUntilCalcArrayType,
        _parent: ?*RepeatUntilCalcArrayType,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    pub fn firstRec(self: *RepeatUntilCalcArrayType) !*Record {
        if (self._m_first_rec) |_v|
            return _v;
        var _v: *Record = undefined;
        _v = (try self.recsAccessor()).items[0];
        self._m_first_rec = _v;
        return _v;
    }
    pub fn recsAccessor(self: *RepeatUntilCalcArrayType) !*std.ArrayList(*Record) {
        if (self._m_recs_accessor) |_v|
            return _v;
        var _v: *std.ArrayList(*Record) = undefined;
        _v = self.records;
        self._m_recs_accessor = _v;
        return _v;
    }
    _m_first_rec: ?*Record = null,
    _m_recs_accessor: ?*std.ArrayList(*Record) = null,
    records: *std.ArrayList(*Record) = undefined,
    _root: ?*RepeatUntilCalcArrayType,
    _parent: ?*anyopaque,
    _raw_records: *std.ArrayList([]u8) = undefined,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
