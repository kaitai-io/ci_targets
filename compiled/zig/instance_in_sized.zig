// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const InstanceInSized = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*InstanceInSized) !*InstanceInSized {
        const self = try _arena.allocator().create(InstanceInSized);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const InstanceInSized) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *InstanceInSized) !void {
        self._raw_cont = try self._io.readBytes(self._allocator(), 16);
        const _io__raw_cont = try self._allocator().create(kaitai_struct.KaitaiStream);
        _io__raw_cont.* = kaitai_struct.KaitaiStream.fromBytes(self._raw_cont);
        self.cont = try Wrapper.create(self._arena, _io__raw_cont, self, self._root);
    }
    pub const Bar = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*InstanceInSized.Wrapper, _root: ?*InstanceInSized) !*Bar {
            const self = try _arena.allocator().create(Bar);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const Bar) std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *Bar) !void {
            self.seq_f = try self._io.readU1();
        }
        pub fn inst(self: *Bar) ![]u8 {
            if (self._m_inst) |_v|
                return _v;
            var _v: []u8 = undefined;
            const _pos = self._io.pos();
            try self._io.seek(4 + 1);
            _v = try self._io.readBytes(self._allocator(), 3);
            try self._io.seek(_pos);
            self._m_inst = _v;
            return _v;
        }
        _m_inst: ?[]u8 = null,
        seq_f: u8 = undefined,
        _root: ?*InstanceInSized,
        _parent: ?*InstanceInSized.Wrapper,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    pub const Baz = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*InstanceInSized.Wrapper, _root: ?*InstanceInSized) !*Baz {
            const self = try _arena.allocator().create(Baz);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const Baz) std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *Baz) !void {
            self.seq_f = try self._io.readU1();
        }
        pub fn inst(self: *Baz) ![]u8 {
            if (self._m_inst) |_v|
                return _v;
            var _v: []u8 = undefined;
            const _pos = self._io.pos();
            try self._io.seek(8 + 1);
            _v = try self._io.readBytes(self._allocator(), 3);
            try self._io.seek(_pos);
            self._m_inst = _v;
            return _v;
        }
        _m_inst: ?[]u8 = null,
        seq_f: u8 = undefined,
        _root: ?*InstanceInSized,
        _parent: ?*InstanceInSized.Wrapper,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    pub const Qux = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*InstanceInSized.Wrapper, _root: ?*InstanceInSized) !*Qux {
            const self = try _arena.allocator().create(Qux);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const Qux) std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *Qux) !void {
            if ((try self.instInvoked()) > 0) {
                self.seq_f = try self._io.readU1();
            }
        }
        pub fn instInvoked(self: *Qux) !u8 {
            if (self._m_inst_invoked) |_v|
                return _v;
            var _v: u8 = undefined;
            const _pos = self._io.pos();
            try self._io.seek(self._io.pos() + 1);
            _v = try self._io.readU1();
            try self._io.seek(_pos);
            self._m_inst_invoked = _v;
            return _v;
        }
        pub fn instUnusedBySeq(self: *Qux) ![]u8 {
            if (self._m_inst_unused_by_seq) |_v|
                return _v;
            var _v: []u8 = undefined;
            const _pos = self._io.pos();
            try self._io.seek(self._io.pos() + 1);
            _v = try self._io.readBytes(self._allocator(), 2);
            try self._io.seek(_pos);
            self._m_inst_unused_by_seq = _v;
            return _v;
        }
        _m_inst_invoked: ?u8 = null,
        _m_inst_unused_by_seq: ?[]u8 = null,
        seq_f: ?u8 = null,
        _root: ?*InstanceInSized,
        _parent: ?*InstanceInSized.Wrapper,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    pub const Wrapper = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*InstanceInSized, _root: ?*InstanceInSized) !*Wrapper {
            const self = try _arena.allocator().create(Wrapper);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const Wrapper) std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *Wrapper) !void {
            self._raw_seq_sized = try self._io.readBytes(self._allocator(), 4);
            const _io__raw_seq_sized = try self._allocator().create(kaitai_struct.KaitaiStream);
            _io__raw_seq_sized.* = kaitai_struct.KaitaiStream.fromBytes(self._raw_seq_sized);
            self.seq_sized = try Qux.create(self._arena, _io__raw_seq_sized, self, self._root);
            self.seq_in_stream = try Bar.create(self._arena, self._io, self, self._root);
        }
        pub fn instInStream(self: *Wrapper) !*Baz {
            if (self._m_inst_in_stream) |_v|
                return _v;
            var _v: *Baz = undefined;
            const _pos = self._io.pos();
            try self._io.seek(self._io.pos() + 3);
            _v = try Baz.create(self._arena, self._io, self, self._root);
            try self._io.seek(_pos);
            self._m_inst_in_stream = _v;
            return _v;
        }
        pub fn instSized(self: *Wrapper) !*Qux {
            if (self._m_inst_sized) |_v|
                return _v;
            var _v: *Qux = undefined;
            const _pos = self._io.pos();
            try self._io.seek(self._io.pos() + 7);
            self._raw__m_inst_sized = try self._io.readBytes(self._allocator(), 4);
            const _io__raw__m_inst_sized = try self._allocator().create(kaitai_struct.KaitaiStream);
            _io__raw__m_inst_sized.* = kaitai_struct.KaitaiStream.fromBytes(self._raw__m_inst_sized);
            _v = try Qux.create(self._arena, _io__raw__m_inst_sized, self, self._root);
            try self._io.seek(_pos);
            self._m_inst_sized = _v;
            return _v;
        }
        _m_inst_in_stream: ?*Baz = null,
        _m_inst_sized: ?*Qux = null,
        seq_sized: *Qux = undefined,
        seq_in_stream: *Bar = undefined,
        _root: ?*InstanceInSized,
        _parent: ?*InstanceInSized,
        _raw_seq_sized: []u8 = undefined,
        _raw__m_inst_sized: []u8 = undefined,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    cont: *Wrapper = undefined,
    _root: ?*InstanceInSized,
    _parent: ?*anyopaque,
    _raw_cont: []u8 = undefined,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
