// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const IfValues = struct {
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*IfValues) !*IfValues {
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
    fn _allocator(self: *const IfValues) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *IfValues) !void {
        self.codes = try self._allocator().create(std.ArrayList(*Code));
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
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*IfValues, _root: ?*IfValues) !*Code {
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
        fn _allocator(self: *const Code) std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *Code) !void {
            self.opcode = try self._io.readU1();
        }
        pub fn halfOpcode(self: *Code) !?i32 {
            if (self._m_half_opcode) |_v|
                return _v;
            var _v: ?i32 = null;
            if (kaitai_struct.KaitaiStream.mod(self.opcode, 2) == 0) {
                _v = self.opcode / 2;
            }
            self._m_half_opcode = _v;
            return _v;
        }
        _m_half_opcode: ??i32 = null,
        opcode: u8 = undefined,
        _root: ?*IfValues,
        _parent: ?*IfValues,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    codes: *std.ArrayList(*Code) = undefined,
    _root: ?*IfValues,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
