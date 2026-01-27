# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class ExprToITrailing(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        pass
        self._dirty = False


    def _fetch_instances(self):
        pass


    def _write__seq(self, io=None):
        super()._write__seq(io)


    def _check(self):
        self._dirty = False

    @property
    def to_i_garbage(self):
        if hasattr(self, '_m_to_i_garbage'):
            return self._m_to_i_garbage

        self._m_to_i_garbage = int("123_.^")
        return getattr(self, '_m_to_i_garbage', None)

    def _invalidate_to_i_garbage(self):
        del self._m_to_i_garbage
    @property
    def to_i_r10(self):
        if hasattr(self, '_m_to_i_r10'):
            return self._m_to_i_r10

        self._m_to_i_r10 = int("9173abc")
        return getattr(self, '_m_to_i_r10', None)

    def _invalidate_to_i_r10(self):
        del self._m_to_i_r10
    @property
    def to_i_r16(self):
        if hasattr(self, '_m_to_i_r16'):
            return self._m_to_i_r16

        self._m_to_i_r16 = int("9173abc", 16)
        return getattr(self, '_m_to_i_r16', None)

    def _invalidate_to_i_r16(self):
        del self._m_to_i_r16

