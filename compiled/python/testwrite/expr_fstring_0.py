# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class ExprFstring0(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.seq_str = (self._io.read_bytes(5)).decode("ASCII")
        self.seq_int = self._io.read_u1()
        self._dirty = False


    def _fetch_instances(self):
        pass


    def _write__seq(self, io=None):
        super()._write__seq(io)
        self._io.write_bytes((self.seq_str).encode("ASCII"))
        self._io.write_u1(self.seq_int)


    def _check(self):
        if len((self.seq_str).encode("ASCII")) != 5:
            raise kaitaistruct.ConsistencyError("seq_str", 5, len((self.seq_str).encode("ASCII")))
        self._dirty = False

    @property
    def empty(self):
        if hasattr(self, '_m_empty'):
            return self._m_empty

        self._m_empty = ""
        return getattr(self, '_m_empty', None)

    def _invalidate_empty(self):
        del self._m_empty
    @property
    def head_and_int(self):
        if hasattr(self, '_m_head_and_int'):
            return self._m_head_and_int

        self._m_head_and_int = "abc=" + str(self.seq_int)
        return getattr(self, '_m_head_and_int', None)

    def _invalidate_head_and_int(self):
        del self._m_head_and_int
    @property
    def head_and_int_literal(self):
        if hasattr(self, '_m_head_and_int_literal'):
            return self._m_head_and_int_literal

        self._m_head_and_int_literal = "abc=" + str(123)
        return getattr(self, '_m_head_and_int_literal', None)

    def _invalidate_head_and_int_literal(self):
        del self._m_head_and_int_literal
    @property
    def head_and_str(self):
        if hasattr(self, '_m_head_and_str'):
            return self._m_head_and_str

        self._m_head_and_str = "abc=" + self.seq_str
        return getattr(self, '_m_head_and_str', None)

    def _invalidate_head_and_str(self):
        del self._m_head_and_str
    @property
    def head_and_str_literal(self):
        if hasattr(self, '_m_head_and_str_literal'):
            return self._m_head_and_str_literal

        self._m_head_and_str_literal = "abc=" + "foo"
        return getattr(self, '_m_head_and_str_literal', None)

    def _invalidate_head_and_str_literal(self):
        del self._m_head_and_str_literal
    @property
    def literal(self):
        if hasattr(self, '_m_literal'):
            return self._m_literal

        self._m_literal = "abc"
        return getattr(self, '_m_literal', None)

    def _invalidate_literal(self):
        del self._m_literal
    @property
    def literal_with_escapes(self):
        if hasattr(self, '_m_literal_with_escapes'):
            return self._m_literal_with_escapes

        self._m_literal_with_escapes = "abc\n\tt"
        return getattr(self, '_m_literal_with_escapes', None)

    def _invalidate_literal_with_escapes(self):
        del self._m_literal_with_escapes

