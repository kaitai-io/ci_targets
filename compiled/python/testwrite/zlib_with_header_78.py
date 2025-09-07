# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO
import zlib


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ZlibWithHeader78(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(ZlibWithHeader78, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self._raw_data = self._io.read_bytes_full()
        self.data = zlib.decompress(self._raw_data)
        self._dirty = False


    def _fetch_instances(self):
        pass


    def _write__seq(self, io=None):
        super(ZlibWithHeader78, self)._write__seq(io)
        self._raw_data = zlib.compress(self.data)
        self._io.write_bytes(self._raw_data)
        if not self._io.is_eof():
            raise kaitaistruct.ConsistencyError(u"data", 0, self._io.size() - self._io.pos())


    def _check(self):
        self._dirty = False


