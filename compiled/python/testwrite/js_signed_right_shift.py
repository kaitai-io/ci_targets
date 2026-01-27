# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class JsSignedRightShift(ReadWriteKaitaiStruct):
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
    def should_be_40000000(self):
        if hasattr(self, '_m_should_be_40000000'):
            return self._m_should_be_40000000

        self._m_should_be_40000000 = 2147483648 >> 1
        return getattr(self, '_m_should_be_40000000', None)

    def _invalidate_should_be_40000000(self):
        del self._m_should_be_40000000
    @property
    def should_be_a00000(self):
        if hasattr(self, '_m_should_be_a00000'):
            return self._m_should_be_a00000

        self._m_should_be_a00000 = 2684354560 >> 8
        return getattr(self, '_m_should_be_a00000', None)

    def _invalidate_should_be_a00000(self):
        del self._m_should_be_a00000

