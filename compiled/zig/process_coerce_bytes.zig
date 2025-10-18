// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const ProcessCoerceBytes = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ProcessCoerceBytes) !*ProcessCoerceBytes {
        const self = try _arena.allocator().create(ProcessCoerceBytes);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ProcessCoerceBytes) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ProcessCoerceBytes) !void {
        self.records = try self._allocator().create(std.ArrayList(*Record));
        self.records.* = .empty;
        for (0..2) |i| {
            {
                const _maybe_unused = i;
                _ = _maybe_unused;
            }
            try self.records.append(self._allocator(), try Record.create(self._arena, self._io, self, self._root));
        }
    }
    pub const Record = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*ProcessCoerceBytes, _root: ?*ProcessCoerceBytes) !*Record {
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
            self.flag = try self._io.readU1();
            if (self.flag == 0) {
                self.buf_unproc = try self._io.readBytes(self._allocator(), 4);
            }
            if (self.flag != 0) {
                self._raw_buf_proc = try self._io.readBytes(self._allocator(), 4);
                self.buf_proc = kaitai_struct.KaitaiStream.processXor(self._raw_buf_proc, @as(i8, 170));
            }
        }
        pub fn buf(self: *Record) ![]u8 {
            if (self._m_buf) |_v|
                return _v;
            var _v: []u8 = undefined;
            _v = (if (self.flag == 0) self.buf_unproc else self.buf_proc);
            self._m_buf = _v;
            return _v;
        }
        _m_buf: ?[]u8 = null,
        flag: u8 = undefined,
        buf_unproc: ?[]u8 = null,
        buf_proc: ?[]u8 = null,
        _root: ?*ProcessCoerceBytes,
        _parent: ?*ProcessCoerceBytes,
        _raw_buf_proc: ?[]u8 = null,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    records: *std.ArrayList(*Record) = undefined,
    _root: ?*ProcessCoerceBytes,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
