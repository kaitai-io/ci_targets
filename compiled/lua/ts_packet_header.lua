-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local enum = require("enum")

-- 
-- describes the first 4 header bytes of a TS Packet header
TsPacketHeader = class.class(KaitaiStruct)

TsPacketHeader.AdaptationFieldControlEnum = enum.Enum {
  reserved = 0,
  payload_only = 1,
  adaptation_field_only = 2,
  adaptation_field_and_payload = 3,
}

function TsPacketHeader:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function TsPacketHeader:_read()
  self.sync_byte = self._io:read_u1()
  self.transport_error_indicator = self._io:read_bits_int_be(1) ~= 0
  self.payload_unit_start_indicator = self._io:read_bits_int_be(1) ~= 0
  self.transport_priority = self._io:read_bits_int_be(1) ~= 0
  self.pid = self._io:read_bits_int_be(13)
  self.transport_scrambling_control = self._io:read_bits_int_be(2)
  self.adaptation_field_control = TsPacketHeader.AdaptationFieldControlEnum(self._io:read_bits_int_be(2))
  self.continuity_counter = self._io:read_bits_int_be(4)
  self._io:align_to_byte()
  self.ts_packet_remain = self._io:read_bytes(184)
end


