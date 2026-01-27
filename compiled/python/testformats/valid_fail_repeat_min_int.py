# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class ValidFailRepeatMinInt(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.foo = []
        i = 0
        while not self._io.is_eof():
            self.foo.append(self._io.read_s1())
            if not self.foo[i] >= 0:
                raise kaitaistruct.ValidationLessThanError(0, self.foo[i], self._io, "/seq/0")
            i += 1



    def _fetch_instances(self):
        pass
        for i in range(len(self.foo)):
            pass



