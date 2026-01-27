# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO
from enum import IntEnum


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class TsPacketHeader(ReadWriteKaitaiStruct):
    """describes the first 4 header bytes of a TS Packet header
    """

    class AdaptationFieldControlEnum(IntEnum):
        reserved = 0
        payload_only = 1
        adaptation_field_only = 2
        adaptation_field_and_payload = 3
    def __init__(self, _io=None, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.sync_byte = self._io.read_u1()
        self.transport_error_indicator = self._io.read_bits_int_be(1) != 0
        self.payload_unit_start_indicator = self._io.read_bits_int_be(1) != 0
        self.transport_priority = self._io.read_bits_int_be(1) != 0
        self.pid = self._io.read_bits_int_be(13)
        self.transport_scrambling_control = self._io.read_bits_int_be(2)
        self.adaptation_field_control = KaitaiStream.resolve_enum(TsPacketHeader.AdaptationFieldControlEnum, self._io.read_bits_int_be(2))
        self.continuity_counter = self._io.read_bits_int_be(4)
        self.ts_packet_remain = self._io.read_bytes(184)
        self._dirty = False


    def _fetch_instances(self):
        pass


    def _write__seq(self, io=None):
        super()._write__seq(io)
        self._io.write_u1(self.sync_byte)
        self._io.write_bits_int_be(1, int(self.transport_error_indicator))
        self._io.write_bits_int_be(1, int(self.payload_unit_start_indicator))
        self._io.write_bits_int_be(1, int(self.transport_priority))
        self._io.write_bits_int_be(13, self.pid)
        self._io.write_bits_int_be(2, self.transport_scrambling_control)
        self._io.write_bits_int_be(2, int(self.adaptation_field_control))
        self._io.write_bits_int_be(4, self.continuity_counter)
        self._io.write_bytes(self.ts_packet_remain)


    def _check(self):
        if len(self.ts_packet_remain) != 184:
            raise kaitaistruct.ConsistencyError("ts_packet_remain", 184, len(self.ts_packet_remain))
        self._dirty = False


