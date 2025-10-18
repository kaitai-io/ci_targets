// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const TypeTernary = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*TypeTernary) !*TypeTernary {
        const self = try _arena.allocator().create(TypeTernary);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const TypeTernary) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *TypeTernary) !void {
        if (!((try self.isHack()))) {
            self._raw_dif_wo_hack = try self._io.readBytes(self._allocator(), 1);
            const _io__raw_dif_wo_hack = try self._allocator().create(kaitai_struct.KaitaiStream);
            _io__raw_dif_wo_hack.* = kaitai_struct.KaitaiStream.fromBytes(self._raw_dif_wo_hack);
            self.dif_wo_hack = try Dummy.create(self._arena, _io__raw_dif_wo_hack, self, self._root);
        }
        self._raw__raw_dif_with_hack = try self._io.readBytes(self._allocator(), 1);
        self._raw_dif_with_hack = kaitai_struct.KaitaiStream.processXor(self._raw__raw_dif_with_hack, @as(i8, 3));
        const _io__raw_dif_with_hack = try self._allocator().create(kaitai_struct.KaitaiStream);
        _io__raw_dif_with_hack.* = kaitai_struct.KaitaiStream.fromBytes(self._raw_dif_with_hack);
        self.dif_with_hack = try Dummy.create(self._arena, _io__raw_dif_with_hack, self, self._root);
    }
    pub const Dummy = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*TypeTernary, _root: ?*TypeTernary) !*Dummy {
            const self = try _arena.allocator().create(Dummy);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const Dummy) std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *Dummy) !void {
            self.value = try self._io.readU1();
        }
        value: u8 = undefined,
        _root: ?*TypeTernary,
        _parent: ?*TypeTernary,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    pub fn dif(self: *TypeTernary) !*Dummy {
        if (self._m_dif) |_v|
            return _v;
        var _v: *Dummy = undefined;
        _v = (if (!((try self.isHack()))) self.dif_wo_hack else self.dif_with_hack);
        self._m_dif = _v;
        return _v;
    }
    pub fn difValue(self: *TypeTernary) !u8 {
        if (self._m_dif_value) |_v|
            return _v;
        var _v: u8 = undefined;
        _v = (try self.dif()).value;
        self._m_dif_value = _v;
        return _v;
    }
    pub fn isHack(self: *TypeTernary) !bool {
        if (self._m_is_hack) |_v|
            return _v;
        var _v: bool = undefined;
        _v = true;
        self._m_is_hack = _v;
        return _v;
    }
    _m_dif: ?*Dummy = null,
    _m_dif_value: ?u8 = null,
    _m_is_hack: ?bool = null,
    dif_wo_hack: ?*Dummy = null,
    dif_with_hack: *Dummy = undefined,
    _root: ?*TypeTernary,
    _parent: ?*anyopaque,
    _raw_dif_wo_hack: ?[]u8 = null,
    _raw_dif_with_hack: []u8 = undefined,
    _raw__raw_dif_with_hack: []u8 = undefined,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
