from pkg_resources import parse_version
from kaitaistruct import __version__ as ks_version, KaitaiStruct, KaitaiStream, BytesIO
from enum import Enum
# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



if parse_version(ks_version) < parse_version('0.7'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.7 or later is required, but you have %s" % (ks_version))

class TsPacketHeader(KaitaiStruct):

    class AdaptationFieldControlEnum(Enum):
        reserved = 0
        payload_only = 1
        adaptation_field_only = 2
        adaptation_field_and_payload = 3
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.sync_byte = self._io.read_u1()
        self.transport_error_indicator = self._io.read_bits_int(1) != 0
        self.payload_unit_start_indicator = self._io.read_bits_int(1) != 0
        self.transport_priority = self._io.read_bits_int(1) != 0
        self.pid = self._io.read_bits_int(13)
        self.transport_scrambling_control = self._io.read_bits_int(2)
        self.adaptation_field_control = self._root.AdaptationFieldControlEnum(self._io.read_bits_int(2))
        self.continuity_counter = self._io.read_bits_int(4)
        self._io.align_to_byte()
        self.ts_packet_remain = self._io.read_bytes(184)


