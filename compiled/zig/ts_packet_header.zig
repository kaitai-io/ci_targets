// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

const _imp_std = @import("std");
const _imp_kaitai_struct = @import("kaitai_struct");


/// describes the first 4 header bytes of a TS Packet header
pub const TsPacketHeader = struct {
    pub const AdaptationFieldControlEnum = enum(i32) {
        reserved = 0,
        payload_only = 1,
        adaptation_field_only = 2,
        adaptation_field_and_payload = 3,
        _,
    };
    pub fn create(_arena: *_imp_std.heap.ArenaAllocator, _io: *_imp_kaitai_struct.KaitaiStream, _parent: ?*anyopaque, _root: ?*TsPacketHeader) !*TsPacketHeader {
        const self = try _arena.allocator().create(TsPacketHeader);
        self.* = .{
            ._arena = _arena,
            ._io = _io,
            ._parent = _parent,
            ._root = _root orelse self,
        };
        try self._read();
        return self;
    }
    fn _allocator(self: *const TsPacketHeader) _imp_std.mem.Allocator {
        return self._arena.allocator();
    }
    fn _read(self: *TsPacketHeader) !void {
        self.sync_byte = try self._io.readU1();
        self.transport_error_indicator = try self._io.readBitsIntBe(1) != 0;
        self.payload_unit_start_indicator = try self._io.readBitsIntBe(1) != 0;
        self.transport_priority = try self._io.readBitsIntBe(1) != 0;
        self.pid = try self._io.readBitsIntBe(13);
        self.transport_scrambling_control = try self._io.readBitsIntBe(2);
        self.adaptation_field_control = @as(TsPacketHeader.AdaptationFieldControlEnum, @enumFromInt(try self._io.readBitsIntBe(2)));
        self.continuity_counter = try self._io.readBitsIntBe(4);
        self.ts_packet_remain = try self._io.readBytes(self._allocator(), 184);
    }
    sync_byte: u8 = undefined,
    transport_error_indicator: bool = undefined,
    payload_unit_start_indicator: bool = undefined,
    transport_priority: bool = undefined,
    pid: u64 = undefined,
    transport_scrambling_control: u64 = undefined,
    adaptation_field_control: AdaptationFieldControlEnum = undefined,
    continuity_counter: u64 = undefined,
    ts_packet_remain: []const u8 = undefined,
    _root: ?*TsPacketHeader,
    _parent: ?*anyopaque,
    _arena: *_imp_std.heap.ArenaAllocator,
    _io: *_imp_kaitai_struct.KaitaiStream,
};
