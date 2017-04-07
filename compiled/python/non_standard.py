# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import array
import struct
import zlib
from enum import Enum
from pkg_resources import parse_version

from kaitaistruct import __version__ as ks_version, KaitaiStruct, KaitaiStream, BytesIO


if parse_version(ks_version) < parse_version('0.7'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.7 or later is required, but you have %s" % (ks_version))

class NonStandard(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self.foo = self._io.read_u1()
        _on = self.foo
        if _on == 42:
            self.bar = self._io.read_u2le()
        elif _on == 43:
            self.bar = self._io.read_u4le()

    @property
    def vi(self):
        if hasattr(self, '_m_vi'):
            return self._m_vi if hasattr(self, '_m_vi') else None

        self._m_vi = self.foo
        return self._m_vi if hasattr(self, '_m_vi') else None

    @property
    def pi(self):
        if hasattr(self, '_m_pi'):
            return self._m_pi if hasattr(self, '_m_pi') else None

        _pos = self._io.pos()
        self._io.seek(0)
        self._m_pi = self._io.read_u1()
        self._io.seek(_pos)
        return self._m_pi if hasattr(self, '_m_pi') else None


