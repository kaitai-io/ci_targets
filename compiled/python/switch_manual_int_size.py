from pkg_resources import parse_version
from kaitaistruct import __version__ as ks_version, KaitaiStruct, KaitaiStream, BytesIO
# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



if parse_version(ks_version) < parse_version('0.7'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.7 or later is required, but you have %s" % (ks_version))

class SwitchManualIntSize(KaitaiStruct):
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
            _on = self.code
            if _on == 17:
                self._raw_body = self._io.read_bytes(self.size)
                io = KaitaiStream(BytesIO(self._raw_body))
                self.body = self._root.Chunk.ChunkMeta(io, self, self._root)
            elif _on == 34:
                self._raw_body = self._io.read_bytes(self.size)
                io = KaitaiStream(BytesIO(self._raw_body))
                self.body = self._root.Chunk.ChunkDir(io, self, self._root)
            else:
                self.body = self._io.read_bytes(self.size)

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





