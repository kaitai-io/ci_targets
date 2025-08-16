# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class SwitchManualIntSize(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.chunks = []
        i = 0
        while not self._io.is_eof():
            self.chunks.append(SwitchManualIntSize.Chunk(self._io, self, self._root))
            i += 1


    class Chunk(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.code = self._io.read_u1()
            self.size = self._io.read_u4le()
            _on = self.code
            if _on == 17:
                self._raw_body = self._io.read_bytes(self.size)
                _io__raw_body = KaitaiStream(BytesIO(self._raw_body))
                self.body = SwitchManualIntSize.Chunk.ChunkMeta(_io__raw_body, self, self._root)
            elif _on == 34:
                self._raw_body = self._io.read_bytes(self.size)
                _io__raw_body = KaitaiStream(BytesIO(self._raw_body))
                self.body = SwitchManualIntSize.Chunk.ChunkDir(_io__raw_body, self, self._root)
            else:
                self.body = self._io.read_bytes(self.size)

        class ChunkDir(KaitaiStruct):
            def __init__(self, _io, _parent=None, _root=None):
                self._io = _io
                self._parent = _parent
                self._root = _root
                self._read()

            def _read(self):
                self.entries = []
                i = 0
                while not self._io.is_eof():
                    self.entries.append((self._io.read_bytes(4)).decode(u"UTF-8"))
                    i += 1



        class ChunkMeta(KaitaiStruct):
            def __init__(self, _io, _parent=None, _root=None):
                self._io = _io
                self._parent = _parent
                self._root = _root
                self._read()

            def _read(self):
                self.title = (self._io.read_bytes_term(0, False, True, True)).decode(u"UTF-8")
                self.author = (self._io.read_bytes_term(0, False, True, True)).decode(u"UTF-8")




