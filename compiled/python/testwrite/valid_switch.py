# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class ValidSwitch(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.a = self._io.read_u1()
        if not self.a == 80:
            raise kaitaistruct.ValidationNotEqualError(80, self.a, self._io, "/seq/0")
        _on = self.a
        if _on == 80:
            pass
            self.b = self._io.read_u2le()
        else:
            pass
            self.b = self._io.read_u2be()
        if not self.b == 17217:
            raise kaitaistruct.ValidationNotEqualError(17217, self.b, self._io, "/seq/1")
        self._dirty = False


    def _fetch_instances(self):
        pass
        _on = self.a
        if _on == 80:
            pass
        else:
            pass


    def _write__seq(self, io=None):
        super()._write__seq(io)
        self._io.write_u1(self.a)
        _on = self.a
        if _on == 80:
            pass
            self._io.write_u2le(self.b)
        else:
            pass
            self._io.write_u2be(self.b)


    def _check(self):
        if not self.a == 80:
            raise kaitaistruct.ValidationNotEqualError(80, self.a, None, "/seq/0")
        _on = self.a
        if _on == 80:
            pass
        else:
            pass
        if not self.b == 17217:
            raise kaitaistruct.ValidationNotEqualError(17217, self.b, None, "/seq/1")
        self._dirty = False


