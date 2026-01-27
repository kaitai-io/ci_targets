# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class ValidNotParsedIf(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        if False:
            pass
            self.not_parsed = self._io.read_u1()
            if not self.not_parsed == 42:
                raise kaitaistruct.ValidationNotEqualError(42, self.not_parsed, self._io, "/seq/0")

        if True:
            pass
            self.parsed = self._io.read_u1()
            if not self.parsed == 80:
                raise kaitaistruct.ValidationNotEqualError(80, self.parsed, self._io, "/seq/1")

        self._dirty = False


    def _fetch_instances(self):
        pass
        if False:
            pass

        if True:
            pass



    def _write__seq(self, io=None):
        super()._write__seq(io)
        if False:
            pass
            self._io.write_u1(self.not_parsed)

        if True:
            pass
            self._io.write_u1(self.parsed)



    def _check(self):
        if False:
            pass
            if not self.not_parsed == 42:
                raise kaitaistruct.ValidationNotEqualError(42, self.not_parsed, None, "/seq/0")

        if True:
            pass
            if not self.parsed == 80:
                raise kaitaistruct.ValidationNotEqualError(80, self.parsed, None, "/seq/1")

        self._dirty = False


