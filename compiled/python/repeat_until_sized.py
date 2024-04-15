# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class RepeatUntilSized(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self._raw_records = []
        self.records = []
        i = 0
        while True:
            _buf = self._io.read_bytes(5)
            self._raw_records.append(_buf)
            _io__raw_records = KaitaiStream(BytesIO(self._raw_records[-1]))
            _ = RepeatUntilSized.Record(_io__raw_records, self, self._root)
            self.records.append(_)
            if _.marker == 170:
                break
            i += 1

    class Record(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.marker = self._io.read_u1()
            self.body = self._io.read_u4le()



