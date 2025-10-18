// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");
const hello_world = @import("hello_world.zig");

pub const TypeTernaryOpaque = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*TypeTernaryOpaque) !*TypeTernaryOpaque {
        const self = try _arena.allocator().create(TypeTernaryOpaque);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const TypeTernaryOpaque) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *TypeTernaryOpaque) !void {
        if (!((try self.isHack()))) {
            self._raw_dif_wo_hack = try self._io.readBytes(self._allocator(), 1);
            const _io__raw_dif_wo_hack = try self._allocator().create(kaitai_struct.KaitaiStream);
            _io__raw_dif_wo_hack.* = kaitai_struct.KaitaiStream.fromBytes(self._raw_dif_wo_hack);
            self.dif_wo_hack = try hello_world.HelloWorld.create(self._arena, _io__raw_dif_wo_hack, null, null);
        }
        if ((try self.isHack())) {
            self._raw__raw_dif_with_hack = try self._io.readBytes(self._allocator(), 1);
            self._raw_dif_with_hack = kaitai_struct.KaitaiStream.processXor(self._raw__raw_dif_with_hack, @as(i8, 3));
            const _io__raw_dif_with_hack = try self._allocator().create(kaitai_struct.KaitaiStream);
            _io__raw_dif_with_hack.* = kaitai_struct.KaitaiStream.fromBytes(self._raw_dif_with_hack);
            self.dif_with_hack = try hello_world.HelloWorld.create(self._arena, _io__raw_dif_with_hack, null, null);
        }
    }
    pub fn dif(self: *TypeTernaryOpaque) !*hello_world.HelloWorld {
        if (self._m_dif) |_v|
            return _v;
        var _v: *hello_world.HelloWorld = undefined;
        _v = (if (!((try self.isHack()))) self.dif_wo_hack else self.dif_with_hack);
        self._m_dif = _v;
        return _v;
    }
    pub fn isHack(self: *TypeTernaryOpaque) !bool {
        if (self._m_is_hack) |_v|
            return _v;
        var _v: bool = undefined;
        _v = false;
        self._m_is_hack = _v;
        return _v;
    }
    _m_dif: ?*hello_world.HelloWorld = null,
    _m_is_hack: ?bool = null,
    dif_wo_hack: ?*hello_world.HelloWorld = null,
    dif_with_hack: ?*hello_world.HelloWorld = null,
    _root: ?*TypeTernaryOpaque,
    _parent: ?*anyopaque,
    _raw_dif_wo_hack: ?[]u8 = null,
    _raw_dif_with_hack: ?[]u8 = null,
    _raw__raw_dif_with_hack: ?[]u8 = null,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
