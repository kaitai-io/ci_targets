# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class SwitchIntegers2(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.code = self._io.read_u1()
        _on = self.code
        if _on == 1:
            pass
            self.len = self._io.read_u1()
        elif _on == 2:
            pass
            self.len = self._io.read_u2le()
        elif _on == 4:
            pass
            self.len = self._io.read_u4le()
        elif _on == 8:
            pass
            self.len = self._io.read_u8le()
        self.ham = self._io.read_bytes(self.len)
        if self.len > 3:
            pass
            self.padding = self._io.read_u1()



    def _fetch_instances(self):
        pass
        _on = self.code
        if _on == 1:
            pass
        elif _on == 2:
            pass
        elif _on == 4:
            pass
        elif _on == 8:
            pass
        if self.len > 3:
            pass


    @property
    def len_mod_str(self):
        if hasattr(self, '_m_len_mod_str'):
            return self._m_len_mod_str

        self._m_len_mod_str = str(self.len * 2 - 1)
        return getattr(self, '_m_len_mod_str', None)


