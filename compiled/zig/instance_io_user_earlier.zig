// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const InstanceIoUserEarlier = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*InstanceIoUserEarlier) !*InstanceIoUserEarlier {
        const self = try _arena.allocator().create(InstanceIoUserEarlier);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const InstanceIoUserEarlier) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *InstanceIoUserEarlier) !void {
        const _raw_sized_a = try self._io.readBytes(self._allocator(), 6);
        const _io__raw_sized_a = try self._allocator().create(_imp_kaitai_struct.KaitaiStream);
        _io__raw_sized_a.* = _imp_kaitai_struct.KaitaiStream.fromBytes(_raw_sized_a);
        self.sized_a = try Slot.create(self._arena, _io__raw_sized_a, self, self._root);
        const _raw_sized_b = try self._io.readBytes(self._allocator(), 6);
        const _io__raw_sized_b = try self._allocator().create(_imp_kaitai_struct.KaitaiStream);
        _io__raw_sized_b.* = _imp_kaitai_struct.KaitaiStream.fromBytes(_raw_sized_b);
        self.sized_b = try Slot.create(self._arena, _io__raw_sized_b, self, self._root);
        self.into_b = try Foo.create(self._arena, self._io, self, self._root);
        self.into_a_skipped = try Foo.create(self._arena, self._io, self, self._root);
        self.into_a = try Foo.create(self._arena, self._io, self, self._root);
        self.last_accessor = try Baz.create(self._arena, self._io, self, self._root);
    }
    pub const Baz = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*InstanceIoUserEarlier, _root: ?*InstanceIoUserEarlier) !*Baz {
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
        fn _allocator(self: *const Baz) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *Baz) !void {
            if ((try (try self._parent.?.into_b.inst()).last()) == 89) {
                self.v = try self._io.readU1();
            }
        }
        v: ?u8 = null,
        _root: ?*InstanceIoUserEarlier,
        _parent: ?*InstanceIoUserEarlier,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    pub const Foo = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*InstanceIoUserEarlier, _root: ?*InstanceIoUserEarlier) !*Foo {
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
            self.indicator = try self._io.readU1();
            if ( (((try (try self.inst())._io.size()) != 0) and ((try self.inst()).content == 102)) ) {
                self.bar = try self._io.readU1();
            }
        }
        pub fn inst(self: *Foo) !*Slot {
            if (self._m_inst) |_v|
                return _v;
            var _v: *Slot = undefined;
            const io = (if (self.indicator == 202) self._parent.?.sized_b._io else self._parent.?.sized_a._io);
            const _pos = io.pos();
            try io.seek(1);
            const _raw__m_inst = try io.readBytes(self._allocator(), (if (self._io.pos() != 14) 4 else 0));
            const _io__raw__m_inst = try self._allocator().create(_imp_kaitai_struct.KaitaiStream);
            _io__raw__m_inst.* = _imp_kaitai_struct.KaitaiStream.fromBytes(_raw__m_inst);
            _v = try Slot.create(self._arena, _io__raw__m_inst, self, self._root);
            try io.seek(_pos);
            self._m_inst = _v;
            return _v;
        }
        _m_inst: ?*Slot = null,
        indicator: u8 = undefined,
        bar: ?u8 = null,
        _root: ?*InstanceIoUserEarlier,
        _parent: ?*InstanceIoUserEarlier,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    pub const Slot = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*InstanceIoUserEarlier) !*Slot {
            const self = try _arena.allocator().create(Slot);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const Slot) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *Slot) !void {
            if ((try self._io.size()) != 0) {
                self.content = try self._io.readU1();
            }
        }
        pub fn last(self: *Slot) !?u8 {
            if (self._m_last) |_v|
                return _v;
            var _v: u8 = undefined;
            var _n = true;
            if ((try self._io.size()) != 0) {
                _n = false;
                const _pos = self._io.pos();
                try self._io.seek((try self._io.size()) - 1);
                _v = try self._io.readU1();
                try self._io.seek(_pos);
            }
            if (_n) {
                self._m_last = @as(?u8, null);
                return null;
            } else {
                self._m_last = _v;
                return _v;
            }
        }
        _m_last: ??u8 = null,
        content: ?u8 = null,
        _root: ?*InstanceIoUserEarlier,
        _parent: ?*anyopaque,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    pub fn aMid(self: *InstanceIoUserEarlier) !u16 {
        if (self._m_a_mid) |_v|
            return _v;
        var _v: u16 = undefined;
        const io = (try self.into_a.inst())._io;
        const _pos = io.pos();
        try io.seek(1);
        _v = try io.readU2le();
        try io.seek(_pos);
        self._m_a_mid = _v;
        return _v;
    }
    pub fn bMid(self: *InstanceIoUserEarlier) !u16 {
        if (self._m_b_mid) |_v|
            return _v;
        var _v: u16 = undefined;
        const io = (try self.into_b.inst())._io;
        const _pos = io.pos();
        try io.seek(1);
        _v = try io.readU2le();
        try io.seek(_pos);
        self._m_b_mid = _v;
        return _v;
    }
    _m_a_mid: ?u16 = null,
    _m_b_mid: ?u16 = null,
    sized_a: *Slot = undefined,
    sized_b: *Slot = undefined,
    into_b: *Foo = undefined,
    into_a_skipped: *Foo = undefined,
    into_a: *Foo = undefined,
    last_accessor: *Baz = undefined,
    _root: ?*InstanceIoUserEarlier,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
