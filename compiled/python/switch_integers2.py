# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 9):
    raise Exception("Incompatible Kaitai Struct Python API: 0.9 or later is required, but you have %s" % (kaitaistruct.__version__))

class SwitchIntegers2(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.code = self._io.read_u1()
        _on = self.code
        if _on == 1:
            self.len = self._io.read_u1()
        elif _on == 2:
            self.len = self._io.read_u2le()
        elif _on == 4:
            self.len = self._io.read_u4le()
        elif _on == 8:
            self.len = self._io.read_u8le()
        self.ham = self._io.read_bytes(self.len)
        if self.len > 3:
            self.padding = self._io.read_u1()


    @property
    def len_mod_str(self):
        if hasattr(self, '_m_len_mod_str'):
            return self._m_len_mod_str

        self._m_len_mod_str = str(((self.len * 2) - 1))
        return getattr(self, '_m_len_mod_str', None)


