# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class JsSignedRightShift(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super(JsSignedRightShift, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        pass


    def _fetch_instances(self):
        pass

    @property
    def should_be_40000000(self):
        if hasattr(self, '_m_should_be_40000000'):
            return self._m_should_be_40000000

        self._m_should_be_40000000 = 2147483648 >> 1
        return getattr(self, '_m_should_be_40000000', None)

    @property
    def should_be_a00000(self):
        if hasattr(self, '_m_should_be_a00000'):
            return self._m_should_be_a00000

        self._m_should_be_a00000 = 2684354560 >> 8
        return getattr(self, '_m_should_be_a00000', None)


