# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO
from testformats import hello_world


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class TypeTernaryOpaque(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        if (not (self.is_hack)):
            pass
            self._raw_dif_wo_hack = self._io.read_bytes(1)
            _io__raw_dif_wo_hack = KaitaiStream(BytesIO(self._raw_dif_wo_hack))
            self.dif_wo_hack = hello_world.HelloWorld(_io__raw_dif_wo_hack)

        if self.is_hack:
            pass
            self._raw__raw_dif_with_hack = self._io.read_bytes(1)
            self._raw_dif_with_hack = KaitaiStream.process_xor_one(self._raw__raw_dif_with_hack, 3)
            _io__raw_dif_with_hack = KaitaiStream(BytesIO(self._raw_dif_with_hack))
            self.dif_with_hack = hello_world.HelloWorld(_io__raw_dif_with_hack)



    def _fetch_instances(self):
        pass
        if (not (self.is_hack)):
            pass
            self.dif_wo_hack._fetch_instances()

        if self.is_hack:
            pass
            self.dif_with_hack._fetch_instances()


    @property
    def dif(self):
        if hasattr(self, '_m_dif'):
            return self._m_dif

        self._m_dif = (self.dif_wo_hack if (not (self.is_hack)) else self.dif_with_hack)
        return getattr(self, '_m_dif', None)

    @property
    def is_hack(self):
        if hasattr(self, '_m_is_hack'):
            return self._m_is_hack

        self._m_is_hack = False
        return getattr(self, '_m_is_hack', None)


