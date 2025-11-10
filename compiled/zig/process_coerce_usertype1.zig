// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const ProcessCoerceUsertype1 = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ProcessCoerceUsertype1) !*ProcessCoerceUsertype1 {
        const self = try _arena.allocator().create(ProcessCoerceUsertype1);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ProcessCoerceUsertype1) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ProcessCoerceUsertype1) !void {
        self.records = try self._allocator().create(_imp_std.ArrayList(*Record));
        self.records.* = .empty;
        for (0..2) |i| {
            {
                const _maybe_unused = i;
                _ = _maybe_unused;
            }
            try self.records.append(self._allocator(), try Record.create(self._arena, self._io, self, self._root));
        }
    }
    pub const Foo = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*ProcessCoerceUsertype1.Record, _root: ?*ProcessCoerceUsertype1) !*Foo {
            const self = try _arena.allocator().create(Foo);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const Foo) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *Foo) !void {
            self.value = try self._io.readU4le();
        }
        value: u32 = undefined,
        _root: ?*ProcessCoerceUsertype1,
        _parent: ?*ProcessCoerceUsertype1.Record,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    pub const Record = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*ProcessCoerceUsertype1, _root: ?*ProcessCoerceUsertype1) !*Record {
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
            self.flag = try self._io.readU1();
            if (self.flag == 0) {
                const _raw_buf_unproc = try self._io.readBytes(self._allocator(), 4);
                const _io__raw_buf_unproc = try self._allocator().create(_imp_kaitai_struct.KaitaiStream);
                _io__raw_buf_unproc.* = _imp_kaitai_struct.KaitaiStream.fromBytes(_raw_buf_unproc);
                self.buf_unproc = try Foo.create(self._arena, _io__raw_buf_unproc, self, self._root);
            }
            if (self.flag != 0) {
                const _raw__raw_buf_proc = try self._io.readBytes(self._allocator(), 4);
                const _raw_buf_proc = try _imp_kaitai_struct.KaitaiStream.processXorOne(self._allocator(), _raw__raw_buf_proc, @as(u8, 170));
                const _io__raw_buf_proc = try self._allocator().create(_imp_kaitai_struct.KaitaiStream);
                _io__raw_buf_proc.* = _imp_kaitai_struct.KaitaiStream.fromBytes(_raw_buf_proc);
                self.buf_proc = try Foo.create(self._arena, _io__raw_buf_proc, self, self._root);
            }
        }
        pub fn buf(self: *Record) !*Foo {
            if (self._m_buf) |_v|
                return _v;
            var _v: *Foo = undefined;
            _v = (if (self.flag == 0) self.buf_unproc else self.buf_proc);
            self._m_buf = _v;
            return _v;
        }
        _m_buf: ?*Foo = null,
        flag: u8 = undefined,
        buf_unproc: ?*Foo = null,
        buf_proc: ?*Foo = null,
        _root: ?*ProcessCoerceUsertype1,
        _parent: ?*ProcessCoerceUsertype1,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    records: *_imp_std.ArrayList(*Record) = undefined,
    _root: ?*ProcessCoerceUsertype1,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
