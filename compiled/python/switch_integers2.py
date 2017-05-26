# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

from pkg_resources import parse_version
from kaitaistruct import __version__ as ks_version, KaitaiStruct, KaitaiStream, BytesIO


if parse_version(ks_version) < parse_version('0.7'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.7 or later is required, but you have %s" % (ks_version))

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
            return self._m_len_mod_str if hasattr(self, '_m_len_mod_str') else None

        self._m_len_mod_str = str(((self.len * 2) - 1))
        return self._m_len_mod_str if hasattr(self, '_m_len_mod_str') else None


