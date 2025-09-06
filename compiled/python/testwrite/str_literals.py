# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class StrLiterals(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(StrLiterals, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        pass
        self._dirty = False


    def _fetch_instances(self):
        pass


    def _write__seq(self, io=None):
        super(StrLiterals, self)._write__seq(io)


    def _check(self):
        self._dirty = False

    @property
    def backslashes(self):
        if hasattr(self, '_m_backslashes'):
            return self._m_backslashes

        self._m_backslashes = u"\\\\\\"
        return getattr(self, '_m_backslashes', None)

    def _invalidate_backslashes(self):
        del self._m_backslashes
    @property
    def complex_str(self):
        if hasattr(self, '_m_complex_str'):
            return self._m_complex_str

        self._m_complex_str = u"\000\001\002\a\b\n\r\t\v\f\033=\a\n$\u263b"
        return getattr(self, '_m_complex_str', None)

    def _invalidate_complex_str(self):
        del self._m_complex_str
    @property
    def double_quotes(self):
        if hasattr(self, '_m_double_quotes'):
            return self._m_double_quotes

        self._m_double_quotes = u"\"\"\""
        return getattr(self, '_m_double_quotes', None)

    def _invalidate_double_quotes(self):
        del self._m_double_quotes
    @property
    def octal_eatup(self):
        if hasattr(self, '_m_octal_eatup'):
            return self._m_octal_eatup

        self._m_octal_eatup = u"\00022"
        return getattr(self, '_m_octal_eatup', None)

    def _invalidate_octal_eatup(self):
        del self._m_octal_eatup
    @property
    def octal_eatup2(self):
        if hasattr(self, '_m_octal_eatup2'):
            return self._m_octal_eatup2

        self._m_octal_eatup2 = u"\0022"
        return getattr(self, '_m_octal_eatup2', None)

    def _invalidate_octal_eatup2(self):
        del self._m_octal_eatup2

