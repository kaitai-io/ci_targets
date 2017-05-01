from pkg_resources import parse_version
from kaitaistruct import __version__ as ks_version, KaitaiStruct, KaitaiStream, BytesIO
# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



if parse_version(ks_version) < parse_version('0.7'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.7 or later is required, but you have %s" % (ks_version))

class StrLiterals(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self

    @property
    def octal_eatup2(self):
        if hasattr(self, '_m_octal_eatup2'):
            return self._m_octal_eatup2 if hasattr(self, '_m_octal_eatup2') else None

        self._m_octal_eatup2 = u"\0022"
        return self._m_octal_eatup2 if hasattr(self, '_m_octal_eatup2') else None

    @property
    def backslashes(self):
        if hasattr(self, '_m_backslashes'):
            return self._m_backslashes if hasattr(self, '_m_backslashes') else None

        self._m_backslashes = u"\\\\\\"
        return self._m_backslashes if hasattr(self, '_m_backslashes') else None

    @property
    def octal_eatup(self):
        if hasattr(self, '_m_octal_eatup'):
            return self._m_octal_eatup if hasattr(self, '_m_octal_eatup') else None

        self._m_octal_eatup = u"\00022"
        return self._m_octal_eatup if hasattr(self, '_m_octal_eatup') else None

    @property
    def double_quotes(self):
        if hasattr(self, '_m_double_quotes'):
            return self._m_double_quotes if hasattr(self, '_m_double_quotes') else None

        self._m_double_quotes = u"\"\"\""
        return self._m_double_quotes if hasattr(self, '_m_double_quotes') else None

    @property
    def complex_str(self):
        if hasattr(self, '_m_complex_str'):
            return self._m_complex_str if hasattr(self, '_m_complex_str') else None

        self._m_complex_str = u"\000\001\002\a\b\n\r\t\v\f\033=\a\n$\u263b"
        return self._m_complex_str if hasattr(self, '_m_complex_str') else None


