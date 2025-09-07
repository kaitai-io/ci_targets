# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO
from testwrite import vlq_base128_le


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ImportsAbs(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(ImportsAbs, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.len = vlq_base128_le.VlqBase128Le(self._io)
        self.len._read()
        self.body = self._io.read_bytes(self.len.value)
        self._dirty = False


    def _fetch_instances(self):
        pass
        self.len._fetch_instances()


    def _write__seq(self, io=None):
        super(ImportsAbs, self)._write__seq(io)
        self.len._write__seq(self._io)
        self._io.write_bytes(self.body)


    def _check(self):
        if len(self.body) != self.len.value:
            raise kaitaistruct.ConsistencyError(u"body", self.len.value, len(self.body))
        self._dirty = False


