# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 9):
    raise Exception("Incompatible Kaitai Struct Python API: 0.9 or later is required, but you have %s" % (kaitaistruct.__version__))

class YamlInts(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        pass

    @property
    def test_u4_dec(self):
        if hasattr(self, '_m_test_u4_dec'):
            return self._m_test_u4_dec

        self._m_test_u4_dec = 4294967295
        return getattr(self, '_m_test_u4_dec', None)

    @property
    def test_u4_hex(self):
        if hasattr(self, '_m_test_u4_hex'):
            return self._m_test_u4_hex

        self._m_test_u4_hex = 4294967295
        return getattr(self, '_m_test_u4_hex', None)

    @property
    def test_u8_dec(self):
        if hasattr(self, '_m_test_u8_dec'):
            return self._m_test_u8_dec

        self._m_test_u8_dec = 18446744073709551615
        return getattr(self, '_m_test_u8_dec', None)

    @property
    def test_u8_hex(self):
        if hasattr(self, '_m_test_u8_hex'):
            return self._m_test_u8_hex

        self._m_test_u8_hex = 18446744073709551615
        return getattr(self, '_m_test_u8_hex', None)


