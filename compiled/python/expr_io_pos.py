# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import array
import struct
import zlib
from enum import Enum
from pkg_resources import parse_version

from kaitaistruct import __version__ as ks_version, KaitaiStruct, KaitaiStream, BytesIO


if parse_version(ks_version) < parse_version('0.7'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.7 or later is required, but you have %s" % (ks_version))

class ExprIoPos(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._raw_substream1 = self._io.read_bytes(16)
        io = KaitaiStream(BytesIO(self._raw_substream1))
        self.substream1 = self._root.AllPlusNumber(io, self, self._root)
        self._raw_substream2 = self._io.read_bytes(14)
        io = KaitaiStream(BytesIO(self._raw_substream2))
        self.substream2 = self._root.AllPlusNumber(io, self, self._root)

    class AllPlusNumber(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self.my_str = (self._io.read_bytes_term(0, False, True, True)).decode(u"UTF-8")
            self.body = self._io.read_bytes(((self._io.size() - self._io.pos()) - 2))
            self.number = self._io.read_u2le()



