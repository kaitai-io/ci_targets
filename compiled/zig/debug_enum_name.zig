// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");

pub const DebugEnumName = struct {
    pub const TestEnum1 = enum(i32) {
        enum_value_80 = 80,
        _,
    };
    pub const TestEnum2 = enum(i32) {
        enum_value_65 = 65,
        _,
    };
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*DebugEnumName) !*DebugEnumName {
        const self = try _arena.allocator().create(DebugEnumName);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        return self;
    }
    fn _allocator(self: *const DebugEnumName) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    pub fn _read(self: *DebugEnumName) !void {
        self.one = @as(DebugEnumName.TestEnum1, @enumFromInt(try self._io.readU1()));
        self.array_of_ints = try self._allocator().create(_imp_std.ArrayList(TestEnum2));
        self.array_of_ints.* = .empty;
        for (0..1) |i| {
            {
                const _maybe_unused = i;
                _ = _maybe_unused;
            }
            try self.array_of_ints.append(self._allocator(), @as(DebugEnumName.TestEnum2, @enumFromInt(try self._io.readU1())));
        }
        self.test_type = try TestSubtype.create(self._arena, self._io, self, self._root);
        self.test_type._read();
    }
    pub const TestSubtype = struct {
        pub const InnerEnum1 = enum(i32) {
            enum_value_67 = 67,
            _,
        };
        pub const InnerEnum2 = enum(i32) {
            enum_value_11 = 11,
            _,
        };
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*DebugEnumName, _root: ?*DebugEnumName) !*TestSubtype {
            const self = try _arena.allocator().create(TestSubtype);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            return self;
        }
        fn _allocator(self: *const TestSubtype) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        pub fn _read(self: *TestSubtype) !void {
            self.field1 = @as(DebugEnumName.TestSubtype.InnerEnum1, @enumFromInt(try self._io.readU1()));
            self.field2 = try self._io.readU1();
        }
        pub fn instanceField(self: *TestSubtype) !InnerEnum2 {
            if (self._m_instance_field) |_v|
                return _v;
            var _v: InnerEnum2 = undefined;
            _v = @as(DebugEnumName.TestSubtype.InnerEnum2, @enumFromInt(self.field2 & 15));
            self._m_instance_field = _v;
            return _v;
        }
        _m_instance_field: ?InnerEnum2 = null,
        field1: InnerEnum1 = undefined,
        field2: u8 = undefined,
        _root: ?*DebugEnumName,
        _parent: ?*DebugEnumName,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    one: TestEnum1 = undefined,
    array_of_ints: *_imp_std.ArrayList(TestEnum2) = undefined,
    test_type: *TestSubtype = undefined,
    _root: ?*DebugEnumName,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
