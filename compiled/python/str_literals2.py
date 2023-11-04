# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class StrLiterals2(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        pass

    @property
    def dollar1(self):
        if hasattr(self, '_m_dollar1'):
            return self._m_dollar1

        self._m_dollar1 = u"$foo"
        return getattr(self, '_m_dollar1', None)

    @property
    def dollar2(self):
        if hasattr(self, '_m_dollar2'):
            return self._m_dollar2

        self._m_dollar2 = u"${foo}"
        return getattr(self, '_m_dollar2', None)

    @property
    def hash(self):
        if hasattr(self, '_m_hash'):
            return self._m_hash

        self._m_hash = u"#{foo}"
        return getattr(self, '_m_hash', None)

    @property
    def at_sign(self):
        if hasattr(self, '_m_at_sign'):
            return self._m_at_sign

        self._m_at_sign = u"@foo"
        return getattr(self, '_m_at_sign', None)


