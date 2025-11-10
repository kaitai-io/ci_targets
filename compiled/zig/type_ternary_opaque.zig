// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");
const _imp_hello_world = @import("hello_world.zig");

pub const TypeTernaryOpaque = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*TypeTernaryOpaque) !*TypeTernaryOpaque {
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
    fn _allocator(self: *const TypeTernaryOpaque) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *TypeTernaryOpaque) !void {
        if (!((try self.isHack()))) {
            const _raw_dif_wo_hack = try self._io.readBytes(self._allocator(), 1);
            const _io__raw_dif_wo_hack = try self._allocator().create(_imp_kaitai_struct.KaitaiStream);
            _io__raw_dif_wo_hack.* = _imp_kaitai_struct.KaitaiStream.fromBytes(_raw_dif_wo_hack);
            self.dif_wo_hack = try _imp_hello_world.HelloWorld.create(self._arena, _io__raw_dif_wo_hack, null, null);
        }
        if ((try self.isHack())) {
            const _raw__raw_dif_with_hack = try self._io.readBytes(self._allocator(), 1);
            const _raw_dif_with_hack = try _imp_kaitai_struct.KaitaiStream.processXorOne(self._allocator(), _raw__raw_dif_with_hack, @as(u8, 3));
            const _io__raw_dif_with_hack = try self._allocator().create(_imp_kaitai_struct.KaitaiStream);
            _io__raw_dif_with_hack.* = _imp_kaitai_struct.KaitaiStream.fromBytes(_raw_dif_with_hack);
            self.dif_with_hack = try _imp_hello_world.HelloWorld.create(self._arena, _io__raw_dif_with_hack, null, null);
        }
    }
    pub fn dif(self: *TypeTernaryOpaque) !*_imp_hello_world.HelloWorld {
        if (self._m_dif) |_v|
            return _v;
        var _v: *_imp_hello_world.HelloWorld = undefined;
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
    _m_dif: ?*_imp_hello_world.HelloWorld = null,
    _m_is_hack: ?bool = null,
    dif_wo_hack: ?*_imp_hello_world.HelloWorld = null,
    dif_with_hack: ?*_imp_hello_world.HelloWorld = null,
    _root: ?*TypeTernaryOpaque,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
