# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

from pkg_resources import parse_version
from kaitaistruct import __version__ as ks_version, KaitaiStruct, KaitaiStream, BytesIO


if parse_version(ks_version) < parse_version('0.7'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.7 or later is required, but you have %s" % (ks_version))

class ParamsCallShort(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.buf1 = self._root.MyStr1(5, self._io, self, self._root)
        self.buf2 = self._root.MyStr2((2 + 3), True, self._io, self, self._root)

    class MyStr1(KaitaiStruct):
        def __init__(self, len, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self.len = len
            self._read()

        def _read(self):
            self.body = (self._io.read_bytes(self.len)).decode(u"UTF-8")


    class MyStr2(KaitaiStruct):
        def __init__(self, len, has_trailer, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self.len = len
            self.has_trailer = has_trailer
            self._read()

        def _read(self):
            self.body = (self._io.read_bytes(self.len)).decode(u"UTF-8")
            if self.has_trailer:
                self.trailer = self._io.read_u1()




