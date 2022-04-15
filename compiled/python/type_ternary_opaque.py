# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 9):
    raise Exception("Incompatible Kaitai Struct Python API: 0.9 or later is required, but you have %s" % (kaitaistruct.__version__))

import term_strz
class TypeTernaryOpaque(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        if not (self.is_hack):
            self._raw_dif_wo_hack = self._io.read_bytes(12)
            _io__raw_dif_wo_hack = KaitaiStream(BytesIO(self._raw_dif_wo_hack))
            self.dif_wo_hack = term_strz.TermStrz(_io__raw_dif_wo_hack)

        if self.is_hack:
            self._raw__raw_dif_with_hack = self._io.read_bytes(12)
            self._raw_dif_with_hack = KaitaiStream.process_xor_one(self._raw__raw_dif_with_hack, 3)
            _io__raw_dif_with_hack = KaitaiStream(BytesIO(self._raw_dif_with_hack))
            self.dif_with_hack = term_strz.TermStrz(_io__raw_dif_with_hack)


    @property
    def is_hack(self):
        if hasattr(self, '_m_is_hack'):
            return self._m_is_hack

        self._m_is_hack = False
        return getattr(self, '_m_is_hack', None)

    @property
    def dif(self):
        if hasattr(self, '_m_dif'):
            return self._m_dif

        self._m_dif = (self.dif_wo_hack if not (self.is_hack) else self.dif_with_hack)
        return getattr(self, '_m_dif', None)


