// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const RepeatUntilCalcArrayType = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*RepeatUntilCalcArrayType) !*RepeatUntilCalcArrayType {
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
    fn _allocator(self: *const RepeatUntilCalcArrayType) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *RepeatUntilCalcArrayType) !void {
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
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*RepeatUntilCalcArrayType, _root: ?*RepeatUntilCalcArrayType) !*Record {
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
        _root: ?*RepeatUntilCalcArrayType,
        _parent: ?*RepeatUntilCalcArrayType,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    pub fn firstRec(self: *RepeatUntilCalcArrayType) !*Record {
        if (self._m_first_rec) |_v|
            return _v;
        var _v: *Record = undefined;
        _v = (try self.recsAccessor()).items[0];
        self._m_first_rec = _v;
        return _v;
    }
    pub fn recsAccessor(self: *RepeatUntilCalcArrayType) !*_imp_std.ArrayList(*Record) {
        if (self._m_recs_accessor) |_v|
            return _v;
        var _v: *_imp_std.ArrayList(*Record) = undefined;
        _v = self.records;
        self._m_recs_accessor = _v;
        return _v;
    }
    _m_first_rec: ?*Record = null,
    _m_recs_accessor: ?*_imp_std.ArrayList(*Record) = null,
    records: *_imp_std.ArrayList(*Record) = undefined,
    _root: ?*RepeatUntilCalcArrayType,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
