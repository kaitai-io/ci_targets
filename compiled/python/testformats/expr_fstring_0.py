# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ExprFstring0(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super(ExprFstring0, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.seq_str = (self._io.read_bytes(5)).decode(u"ASCII")
        self.seq_int = self._io.read_u1()


    def _fetch_instances(self):
        pass

    @property
    def empty(self):
        if hasattr(self, '_m_empty'):
            return self._m_empty

        self._m_empty = u""
        return getattr(self, '_m_empty', None)

    @property
    def head_and_int(self):
        if hasattr(self, '_m_head_and_int'):
            return self._m_head_and_int

        self._m_head_and_int = u"abc=" + str(self.seq_int)
        return getattr(self, '_m_head_and_int', None)

    @property
    def head_and_int_literal(self):
        if hasattr(self, '_m_head_and_int_literal'):
            return self._m_head_and_int_literal

        self._m_head_and_int_literal = u"abc=" + str(123)
        return getattr(self, '_m_head_and_int_literal', None)

    @property
    def head_and_str(self):
        if hasattr(self, '_m_head_and_str'):
            return self._m_head_and_str

        self._m_head_and_str = u"abc=" + self.seq_str
        return getattr(self, '_m_head_and_str', None)

    @property
    def head_and_str_literal(self):
        if hasattr(self, '_m_head_and_str_literal'):
            return self._m_head_and_str_literal

        self._m_head_and_str_literal = u"abc=" + u"foo"
        return getattr(self, '_m_head_and_str_literal', None)

    @property
    def literal(self):
        if hasattr(self, '_m_literal'):
            return self._m_literal

        self._m_literal = u"abc"
        return getattr(self, '_m_literal', None)

    @property
    def literal_with_escapes(self):
        if hasattr(self, '_m_literal_with_escapes'):
            return self._m_literal_with_escapes

        self._m_literal_with_escapes = u"abc\n\tt"
        return getattr(self, '_m_literal_with_escapes', None)


