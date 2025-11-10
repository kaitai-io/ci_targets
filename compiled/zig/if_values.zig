// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const IfValues = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*IfValues) !*IfValues {
        const self = try _arena.allocator().create(IfValues);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const IfValues) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *IfValues) !void {
        self.codes = try self._allocator().create(_imp_std.ArrayList(*Code));
        self.codes.* = .empty;
        for (0..3) |i| {
            {
                const _maybe_unused = i;
                _ = _maybe_unused;
            }
            try self.codes.append(self._allocator(), try Code.create(self._arena, self._io, self, self._root));
        }
    }
    pub const Code = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*IfValues, _root: ?*IfValues) !*Code {
            const self = try _arena.allocator().create(Code);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            try self._read();
            return self;
        }
        fn _allocator(self: *const Code) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *Code) !void {
            self.opcode = try self._io.readU1();
        }
        pub fn halfOpcode(self: *Code) !?i32 {
            if (self._m_half_opcode) |_v|
                return _v;
            var _v: i32 = undefined;
            var _n = true;
            if (@mod(self.opcode, 2) == 0) {
                _n = false;
                _v = self.opcode / 2;
            }
            if (_n) {
                self._m_half_opcode = @as(?i32, null);
                return null;
            } else {
                self._m_half_opcode = _v;
                return _v;
            }
        }
        _m_half_opcode: ??i32 = null,
        opcode: u8 = undefined,
        _root: ?*IfValues,
        _parent: ?*IfValues,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    codes: *_imp_std.ArrayList(*Code) = undefined,
    _root: ?*IfValues,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
