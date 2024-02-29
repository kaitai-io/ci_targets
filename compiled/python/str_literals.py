# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class StrLiterals(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        pass

    @property
    def backslashes(self):
        if hasattr(self, '_m_backslashes'):
            return self._m_backslashes

        self._m_backslashes = u"\\\\\\"
        return getattr(self, '_m_backslashes', None)

    @property
    def complex_str(self):
        if hasattr(self, '_m_complex_str'):
            return self._m_complex_str

        self._m_complex_str = u"\000\001\002\a\b\n\r\t\v\f\033=\a\n$\u263b"
        return getattr(self, '_m_complex_str', None)

    @property
    def double_quotes(self):
        if hasattr(self, '_m_double_quotes'):
            return self._m_double_quotes

        self._m_double_quotes = u"\"\"\""
        return getattr(self, '_m_double_quotes', None)

    @property
    def octal_eatup(self):
        if hasattr(self, '_m_octal_eatup'):
            return self._m_octal_eatup

        self._m_octal_eatup = u"\00022"
        return getattr(self, '_m_octal_eatup', None)

    @property
    def octal_eatup2(self):
        if hasattr(self, '_m_octal_eatup2'):
            return self._m_octal_eatup2

        self._m_octal_eatup2 = u"\0022"
        return getattr(self, '_m_octal_eatup2', None)


