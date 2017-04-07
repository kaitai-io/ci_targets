# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import array
import struct
import zlib
from enum import Enum
from pkg_resources import parse_version

from kaitaistruct import __version__ as ks_version, KaitaiStruct, KaitaiStream, BytesIO


if parse_version(ks_version) < parse_version('0.7'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.7 or later is required, but you have %s" % (ks_version))

class RepeatUntilSized(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._raw_records = []
        self.records = []
        while True:
            _buf = self._io.read_bytes(5)
            self._raw_records.append(_buf)
            io = KaitaiStream(BytesIO(self._raw_records[-1]))
            _ = self._root.Record(io, self, self._root)
            self.records.append(_)
            if _.marker == 170:
                break

    class Record(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self.marker = self._io.read_u1()
            self.body = self._io.read_u4le()



