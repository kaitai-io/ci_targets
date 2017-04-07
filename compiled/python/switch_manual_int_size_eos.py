# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import array
import struct
import zlib
from enum import Enum
from pkg_resources import parse_version

from kaitaistruct import __version__ as ks_version, KaitaiStruct, KaitaiStream, BytesIO


if parse_version(ks_version) < parse_version('0.7'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.7 or later is required, but you have %s" % (ks_version))

class SwitchManualIntSizeEos(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self.chunks = []
        while not self._io.is_eof():
            self.chunks.append(self._root.Chunk(self._io, self, self._root))


    class Chunk(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self.code = self._io.read_u1()
            self.size = self._io.read_u4le()
            self._raw_body = self._io.read_bytes(self.size)
            io = KaitaiStream(BytesIO(self._raw_body))
            self.body = self._root.ChunkBody(io, self, self._root)


    class ChunkBody(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            _on = self._parent.code
            if _on == 17:
                self._raw_body = self._io.read_bytes_full()
                io = KaitaiStream(BytesIO(self._raw_body))
                self.body = self._root.ChunkBody.ChunkMeta(io, self, self._root)
            elif _on == 34:
                self._raw_body = self._io.read_bytes_full()
                io = KaitaiStream(BytesIO(self._raw_body))
                self.body = self._root.ChunkBody.ChunkDir(io, self, self._root)
            else:
                self.body = self._io.read_bytes_full()

        class ChunkMeta(KaitaiStruct):
            def __init__(self, _io, _parent=None, _root=None):
                self._io = _io
                self._parent = _parent
                self._root = _root if _root else self
                self.title = (self._io.read_bytes_term(0, False, True, True)).decode(u"UTF-8")
                self.author = (self._io.read_bytes_term(0, False, True, True)).decode(u"UTF-8")


        class ChunkDir(KaitaiStruct):
            def __init__(self, _io, _parent=None, _root=None):
                self._io = _io
                self._parent = _parent
                self._root = _root if _root else self
                self.entries = []
                while not self._io.is_eof():
                    self.entries.append((self._io.read_bytes(4)).decode(u"UTF-8"))





