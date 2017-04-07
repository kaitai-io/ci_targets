# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import array
import struct
import zlib
from enum import Enum
from pkg_resources import parse_version

from kaitaistruct import __version__ as ks_version, KaitaiStruct, KaitaiStream, BytesIO


if parse_version(ks_version) < parse_version('0.7'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.7 or later is required, but you have %s" % (ks_version))

class StrLiterals2(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self

    @property
    def dollar1(self):
        if hasattr(self, '_m_dollar1'):
            return self._m_dollar1 if hasattr(self, '_m_dollar1') else None

        self._m_dollar1 = u"$foo"
        return self._m_dollar1 if hasattr(self, '_m_dollar1') else None

    @property
    def dollar2(self):
        if hasattr(self, '_m_dollar2'):
            return self._m_dollar2 if hasattr(self, '_m_dollar2') else None

        self._m_dollar2 = u"${foo}"
        return self._m_dollar2 if hasattr(self, '_m_dollar2') else None

    @property
    def hash(self):
        if hasattr(self, '_m_hash'):
            return self._m_hash if hasattr(self, '_m_hash') else None

        self._m_hash = u"#{foo}"
        return self._m_hash if hasattr(self, '_m_hash') else None

    @property
    def at_sign(self):
        if hasattr(self, '_m_at_sign'):
            return self._m_at_sign if hasattr(self, '_m_at_sign') else None

        self._m_at_sign = u"@foo"
        return self._m_at_sign if hasattr(self, '_m_at_sign') else None


