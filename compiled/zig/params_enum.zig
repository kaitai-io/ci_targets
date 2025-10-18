// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const std = @import("std");
const kaitai_struct = @import("kaitai_struct");

pub const ParamsEnum = struct {
    pub const Animal = enum(i32) {
        dog = 4,
        cat = 7,
        chicken = 12,
        _,
    };
    pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*ParamsEnum) !*ParamsEnum {
        const self = try _arena.allocator().create(ParamsEnum);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const ParamsEnum) std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *ParamsEnum) !void {
        self.one = @as(ParamsEnum.Animal, @enumFromInt(try self._io.readU1()));
        self.invoke_with_param = try WithParam.create(self._arena, self._io, self, self._root, self.one);
    }
    pub const WithParam = struct {
        pub fn create(_arena: *std.heap.ArenaAllocator, _io: *kaitai_struct.KaitaiStream, _parent: ?*ParamsEnum, _root: ?*ParamsEnum, enumerated_one: Animal) !*WithParam {
            const self = try _arena.allocator().create(WithParam);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            self.enumerated_one = enumerated_one;
            try self._read();
            return self;
        }
        fn _allocator(self: *const WithParam) std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *WithParam) !void {
            _ = self;
        }
        pub fn isCat(self: *WithParam) !bool {
            if (self._m_is_cat) |_v|
                return _v;
            var _v: bool = undefined;
            _v = self.enumerated_one == ParamsEnum.Animal.cat;
            self._m_is_cat = _v;
            return _v;
        }
        _m_is_cat: ?bool = null,
        enumerated_one: Animal = undefined,
        _root: ?*ParamsEnum,
        _parent: ?*ParamsEnum,
        _arena: *std.heap.ArenaAllocator,
        _io: *kaitai_struct.KaitaiStream,
    };
    one: Animal = undefined,
    invoke_with_param: *WithParam = undefined,
    _root: ?*ParamsEnum,
    _parent: ?*anyopaque,
    _arena: *std.heap.ArenaAllocator,
    _io: *kaitai_struct.KaitaiStream,
};
