# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class SwitchIntegers2(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self

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

        self._dirty = False


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



    def _write__seq(self, io=None):
        super()._write__seq(io)
        self._io.write_u1(self.code)
        _on = self.code
        if _on == 1:
            pass
            self._io.write_u1(self.len)
        elif _on == 2:
            pass
            self._io.write_u2le(self.len)
        elif _on == 4:
            pass
            self._io.write_u4le(self.len)
        elif _on == 8:
            pass
            self._io.write_u8le(self.len)
        self._io.write_bytes(self.ham)
        if self.len > 3:
            pass
            self._io.write_u1(self.padding)



    def _check(self):
        _on = self.code
        if _on == 1:
            pass
        elif _on == 2:
            pass
        elif _on == 4:
            pass
        elif _on == 8:
            pass
        if len(self.ham) != self.len:
            raise kaitaistruct.ConsistencyError("ham", self.len, len(self.ham))
        if self.len > 3:
            pass

        self._dirty = False

    @property
    def len_mod_str(self):
        if hasattr(self, '_m_len_mod_str'):
            return self._m_len_mod_str

        self._m_len_mod_str = str(self.len * 2 - 1)
        return getattr(self, '_m_len_mod_str', None)

    def _invalidate_len_mod_str(self):
        del self._m_len_mod_str

