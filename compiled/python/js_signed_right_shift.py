# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

from pkg_resources import parse_version
import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if parse_version(kaitaistruct.__version__) < parse_version('0.9'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.9 or later is required, but you have %s" % (kaitaistruct.__version__))

class JsSignedRightShift(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        pass

    @property
    def should_be_40000000(self):
        if hasattr(self, '_m_should_be_40000000'):
            return self._m_should_be_40000000 if hasattr(self, '_m_should_be_40000000') else None

        self._m_should_be_40000000 = (2147483648 >> 1)
        return self._m_should_be_40000000 if hasattr(self, '_m_should_be_40000000') else None

    @property
    def should_be_a00000(self):
        if hasattr(self, '_m_should_be_a00000'):
            return self._m_should_be_a00000 if hasattr(self, '_m_should_be_a00000') else None

        self._m_should_be_a00000 = (2684354560 >> 8)
        return self._m_should_be_a00000 if hasattr(self, '_m_should_be_a00000') else None


