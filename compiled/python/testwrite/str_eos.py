# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class StrEos(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(StrEos, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.str = (self._io.read_bytes_full()).decode(u"UTF-8")
        self._dirty = False


    def _fetch_instances(self):
        pass


    def _write__seq(self, io=None):
        super(StrEos, self)._write__seq(io)
        self._io.write_bytes((self.str).encode(u"UTF-8"))
        if not self._io.is_eof():
            raise kaitaistruct.ConsistencyError(u"str", 0, self._io.size() - self._io.pos())


    def _check(self):
        self._dirty = False


