# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 9):
    raise Exception("Incompatible Kaitai Struct Python API: 0.9 or later is required, but you have %s" % (kaitaistruct.__version__))

class ProcessRepeatUsertype(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self._raw_blocks = []
        self._raw__raw_blocks = []
        self.blocks = []
        for i in range(2):
            self._raw__raw_blocks.append(self._io.read_bytes(5))
            self._raw_blocks.append(KaitaiStream.process_xor_one(self._raw__raw_blocks[i], 158))
            _io__raw_blocks = KaitaiStream(BytesIO(self._raw_blocks[i]))
            self.blocks.append(ProcessRepeatUsertype.Block(_io__raw_blocks, self, self._root))


    class Block(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self._read()

        def _read(self):
            self.a = self._io.read_s4le()
            self.b = self._io.read_s1()



