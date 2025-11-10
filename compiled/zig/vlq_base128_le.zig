// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");


/// A variable-length unsigned/signed integer using base128 encoding. 1-byte groups
/// consist of 1-bit flag of continuation and 7-bit value chunk, and are ordered
/// "least significant group first", i.e. in "little-endian" manner.
/// 
/// This particular encoding is specified and used in:
/// 
/// * DWARF debug file format, where it's dubbed "unsigned LEB128" or "ULEB128".
///   <https://dwarfstd.org/doc/dwarf-2.0.0.pdf> - page 139
/// * Google Protocol Buffers, where it's called "Base 128 Varints".
///   <https://protobuf.dev/programming-guides/encoding/#varints>
/// * Apache Lucene, where it's called "VInt"
///   <https://lucene.apache.org/core/3_5_0/fileformats.html#VInt>
/// * Apache Avro uses this as a basis for integer encoding, adding ZigZag on
///   top of it for signed ints
///   <https://avro.apache.org/docs/1.12.0/specification/#primitive-types-1>
/// 
/// More information on this encoding is available at <https://en.wikipedia.org/wiki/LEB128>
/// 
/// This particular implementation supports integer values up to 64 bits (i.e. the
/// maximum unsigned value supported is `2**64 - 1`), which implies that serialized
/// values can be up to 10 bytes in length.
/// 
/// If the most significant 10th byte (`groups[9]`) is present, its `has_next`
/// must be `false` (otherwise we would have 11 or more bytes, which is not
/// supported) and its `value` can be only `0` or `1` (because a 9-byte VLQ can
/// represent `9 * 7 = 63` bits already, so the 10th byte can only add 1 bit,
/// since only integers up to 64 bits are supported). These restrictions are
/// enforced by this implementation. They were inspired by the Protoscope tool,
/// see <https://github.com/protocolbuffers/protoscope/blob/8e7a6aafa2c9958527b1e0747e66e1bfff045819/writer.go#L644-L648>.
pub const VlqBase128Le = struct {
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*VlqBase128Le) !*VlqBase128Le {
        const self = try _arena.allocator().create(VlqBase128Le);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const VlqBase128Le) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *VlqBase128Le) !void {
        self.groups = try self._allocator().create(_imp_std.ArrayList(*Group));
        self.groups.* = .empty;
        {
            var i: usize = 0;
            while (true) : (i += 1) {
                const _it = try Group.create(self._arena, self._io, self, self._root, i, (if (i != 0) (try self.groups.items[i - 1].intermValue()) else 0), (if (i != 0) (if (i == 9) 9223372036854775808 else self.groups.items[i - 1].multiplier * 128) else 1));
                try self.groups.append(self._allocator(), _it);
                if (!(_it.has_next)) {
                    break;
                }
            }
        }
    }

    /// One byte group, clearly divided into 7-bit "value" chunk and 1-bit "continuation" flag.
    pub const Group = struct {
        pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*VlqBase128Le, _root: ?*VlqBase128Le, idx: i32, prev_interm_value: u64, multiplier: u64) !*Group {
            const self = try _arena.allocator().create(Group);
            self.* = .{
                ._arena = _arena,
                ._io = _io,
                ._parent = _parent,
                ._root = _root,
            };
            self.idx = idx;
            self.prev_interm_value = prev_interm_value;
            self.multiplier = multiplier;
            try self._read();
            return self;
        }
        fn _allocator(self: *const Group) _imp_std.mem.Allocator {
            return self._arena.allocator();
        }
        fn _read(self: *Group) !void {
            self.has_next = try self._io.readBitsIntBe(1) != 0;
            if (!(self.has_next == (if (self.idx == 9) false else self.has_next))) {
                return error.ValidationNotEqualError;
            }
            self.value = try self._io.readBitsIntBe(7);
            if (!(self.value <= @as(u64, (if (self.idx == 9) 1 else 127)))) {
                return error.ValidationGreaterThanError;
            }
        }
        pub fn intermValue(self: *Group) !u64 {
            if (self._m_interm_value) |_v|
                return _v;
            var _v: u64 = undefined;
            _v = @as(u64, self.prev_interm_value + self.value * self.multiplier);
            self._m_interm_value = _v;
            return _v;
        }

        /// If `true`, then we have more bytes to read.
        /// 
        /// Since this implementation only supports serialized values up to 10
        /// bytes, this must be `false` in the 10th group (`groups[9]`).

        /// The 7-bit (base128) numeric value chunk of this group
        /// 
        /// Since this implementation only supports integer values up to 64 bits,
        /// the `value` in the 10th group (`groups[9]`) can only be `0` or `1`
        /// (otherwise the width of the represented value would be 65 bits or
        /// more, which is not supported).
        _m_interm_value: ?u64 = null,
        has_next: bool = undefined,
        value: u64 = undefined,
        idx: i32 = undefined,
        prev_interm_value: u64 = undefined,
        multiplier: u64 = undefined,
        _root: ?*VlqBase128Le,
        _parent: ?*VlqBase128Le,
        _arena: *_imp_std.heap.ArenaAllocator,
        _io: *_imp_kaitai_struct.KaitaiStream,
    };
    pub fn len(self: *VlqBase128Le) !i32 {
        if (self._m_len) |_v|
            return _v;
        var _v: i32 = undefined;
        _v = self.groups.items.len;
        self._m_len = _v;
        return _v;
    }
    pub fn signBit(self: *VlqBase128Le) !u64 {
        if (self._m_sign_bit) |_v|
            return _v;
        var _v: u64 = undefined;
        _v = @as(u64, (if ((try self.len()) == 10) 9223372036854775808 else self.groups.items[self.groups.items.len - 1].multiplier * 64));
        self._m_sign_bit = _v;
        return _v;
    }

    /// Resulting unsigned value as normal integer
    pub fn value(self: *VlqBase128Le) !u64 {
        if (self._m_value) |_v|
            return _v;
        var _v: u64 = undefined;
        _v = (try self.groups.items[self.groups.items.len - 1].intermValue());
        self._m_value = _v;
        return _v;
    }
    pub fn valueSigned(self: *VlqBase128Le) !i64 {
        if (self._m_value_signed) |_v|
            return _v;
        var _v: i64 = undefined;
        _v = (if ( (((try self.signBit()) > 0) and ((try self.value()) >= (try self.signBit()))) ) -(@as(i64, (try self.signBit()) - ((try self.value()) - (try self.signBit())))) else @as(i64, (try self.value())));
        self._m_value_signed = _v;
        return _v;
    }
    _m_len: ?i32 = null,
    _m_sign_bit: ?u64 = null,
    _m_value: ?u64 = null,
    _m_value_signed: ?i64 = null,
    groups: *_imp_std.ArrayList(*Group) = undefined,
    _root: ?*VlqBase128Le,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
