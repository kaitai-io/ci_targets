# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ParamsPassArrayIo(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self._raw_first = self._io.read_bytes(1)
        _io__raw_first = KaitaiStream(BytesIO(self._raw_first))
        self.first = ParamsPassArrayIo.Block(_io__raw_first, self, self._root)
        self.one = ParamsPassArrayIo.ParamType([self.first._io, self._root._io], self._io, self, self._root)


    def _fetch_instances(self):
        pass
        self.first._fetch_instances()
        self.one._fetch_instances()

    class Block(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.foo = self._io.read_u1()


        def _fetch_instances(self):
            pass


    class ParamType(KaitaiStruct):
        def __init__(self, arg_streams, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root
            self.arg_streams = arg_streams
            self._read()

        def _read(self):
            self.buf = self._io.read_bytes(self.arg_streams[0].size())


        def _fetch_instances(self):
            pass



