# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class BufferedStruct(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super(BufferedStruct, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.len1 = self._io.read_u4le()
        self._raw_block1 = self._io.read_bytes(self.len1)
        _io__raw_block1 = KaitaiStream(BytesIO(self._raw_block1))
        self.block1 = BufferedStruct.Block(_io__raw_block1, self, self._root)
        self.len2 = self._io.read_u4le()
        self._raw_block2 = self._io.read_bytes(self.len2)
        _io__raw_block2 = KaitaiStream(BytesIO(self._raw_block2))
        self.block2 = BufferedStruct.Block(_io__raw_block2, self, self._root)
        self.finisher = self._io.read_u4le()


    def _fetch_instances(self):
        pass
        self.block1._fetch_instances()
        self.block2._fetch_instances()

    class Block(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(BufferedStruct.Block, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.number1 = self._io.read_u4le()
            self.number2 = self._io.read_u4le()


        def _fetch_instances(self):
            pass



