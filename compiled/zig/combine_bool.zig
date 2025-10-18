// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const CombineBool = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*CombineBool) !*CombineBool {
        const self = try _arena.allocator().create(CombineBool);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const CombineBool) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *CombineBool) !void {
        self.bool_bit = try self._io.readBitsIntBe(1) != 0;
    }
    pub fn boolCalc(self: *CombineBool) !bool {
        if (self._m_bool_calc) |_v|
            return _v;
        var _v: bool = undefined;
        _v = false;
        self._m_bool_calc = _v;
        return _v;
    }
    pub fn boolCalcBit(self: *CombineBool) !bool {
        if (self._m_bool_calc_bit) |_v|
            return _v;
        var _v: bool = undefined;
        _v = (if (true) (try self.boolCalc()) else self.bool_bit);
        self._m_bool_calc_bit = _v;
        return _v;
    }
    _m_bool_calc: ?bool = null,
    _m_bool_calc_bit: ?bool = null,
    bool_bit: bool = undefined,
    _root: ?*CombineBool,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
