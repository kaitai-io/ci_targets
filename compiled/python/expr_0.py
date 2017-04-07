# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import array
import struct
import zlib
from enum import Enum
from pkg_resources import parse_version

from kaitaistruct import __version__ as ks_version, KaitaiStruct, KaitaiStream, BytesIO


if parse_version(ks_version) < parse_version('0.7'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.7 or later is required, but you have %s" % (ks_version))

class Expr0(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self.len_of_1 = self._io.read_u2le()

    @property
    def must_be_f7(self):
        if hasattr(self, '_m_must_be_f7'):
            return self._m_must_be_f7 if hasattr(self, '_m_must_be_f7') else None

        self._m_must_be_f7 = (7 + 240)
        return self._m_must_be_f7 if hasattr(self, '_m_must_be_f7') else None

    @property
    def must_be_abc123(self):
        if hasattr(self, '_m_must_be_abc123'):
            return self._m_must_be_abc123 if hasattr(self, '_m_must_be_abc123') else None

        self._m_must_be_abc123 = u"abc" + u"123"
        return self._m_must_be_abc123 if hasattr(self, '_m_must_be_abc123') else None


