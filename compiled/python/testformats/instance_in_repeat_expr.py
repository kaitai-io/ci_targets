# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class InstanceInRepeatExpr(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.chunks = []
        for i in range(self.num_chunks):
            self.chunks.append(InstanceInRepeatExpr.Chunk(self._io, self, self._root))



    def _fetch_instances(self):
        pass
        for i in range(len(self.chunks)):
            pass
            self.chunks[i]._fetch_instances()

        _ = self.num_chunks

    class Chunk(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.offset = self._io.read_u4le()
            self.len = self._io.read_u4le()


        def _fetch_instances(self):
            pass


    @property
    def num_chunks(self):
        if hasattr(self, '_m_num_chunks'):
            return self._m_num_chunks

        _pos = self._io.pos()
        self._io.seek(self._io.pos() + 16)
        self._m_num_chunks = self._io.read_u4le()
        self._io.seek(_pos)
        return getattr(self, '_m_num_chunks', None)


