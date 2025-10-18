// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const ProcessCoerceSwitch = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ProcessCoerceSwitch) !*ProcessCoerceSwitch {
        const self = try _arena.allocator().create(ProcessCoerceSwitch);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ProcessCoerceSwitch) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ProcessCoerceSwitch) !void {
        self.buf_type = try self._io.readU1();
        self.flag = try self._io.readU1();
        if (self.flag == 0) {
            switch (self.buf_type) {
                0 => {
                    self._raw_buf_unproc = try self._io.readBytes(self._allocator(), 4);
                    const _io__raw_buf_unproc = try self._allocator().create(kaitai_struct.KaitaiStream);
                    _io__raw_buf_unproc.* = kaitai_struct.KaitaiStream.fromBytes(self._raw_buf_unproc);
                    self.buf_unproc = try Foo.create(self._arena, _io__raw_buf_unproc, self, self._root);
                },
                else => {
                    self.buf_unproc = try self._io.readBytes(self._allocator(), 4);
                },
            }
        }
        if (self.flag != 0) {
            switch (self.buf_type) {
                0 => {
                    self._raw__raw_buf_proc = try self._io.readBytes(self._allocator(), 4);
                    self._raw_buf_proc = kaitai_struct.KaitaiStream.processXor(self._raw__raw_buf_proc, @as(i8, 170));
                    const _io__raw_buf_proc = try self._allocator().create(kaitai_struct.KaitaiStream);
                    _io__raw_buf_proc.* = kaitai_struct.KaitaiStream.fromBytes(self._raw_buf_proc);
                    self.buf_proc = try Foo.create(self._arena, _io__raw_buf_proc, self, self._root);
                },
                else => {
                    self._raw_buf_proc = try self._io.readBytes(self._allocator(), 4);
                    self.buf_proc = kaitai_struct.KaitaiStream.processXor(self._raw_buf_proc, @as(i8, 170));
                },
            }
        }
    }
    pub const Foo = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*ProcessCoerceSwitch, _root: ?*ProcessCoerceSwitch) !*Foo {
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
        fn _allocator(self: *const Foo) std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *Foo) !void {
            self.bar = try self._io.readBytes(self._allocator(), 4);
        }
        bar: []u8 = undefined,
        _root: ?*ProcessCoerceSwitch,
        _parent: ?*ProcessCoerceSwitch,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    pub fn buf(self: *ProcessCoerceSwitch) !*anyopaque {
        if (self._m_buf) |_v|
            return _v;
        var _v: *anyopaque = undefined;
        _v = (if (self.flag == 0) self.buf_unproc else self.buf_proc);
        self._m_buf = _v;
        return _v;
    }
    _m_buf: ?*anyopaque = null,
    buf_type: u8 = undefined,
    flag: u8 = undefined,
    buf_unproc: ?*anyopaque = null,
    buf_proc: ?*anyopaque = null,
    _root: ?*ProcessCoerceSwitch,
    _parent: ?*anyopaque,
    _raw_buf_unproc: ?[]u8 = null,
    _raw_buf_proc: ?[]u8 = null,
    _raw__raw_buf_proc: ?[]u8 = null,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
