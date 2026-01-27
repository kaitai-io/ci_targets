# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO
from testwrite import imports_circular_a


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class ImportsCircularB(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.initial = self._io.read_u1()
        if self.initial == 65:
            pass
            self.back_ref = imports_circular_a.ImportsCircularA(self._io)
            self.back_ref._read()

        self._dirty = False


    def _fetch_instances(self):
        pass
        if self.initial == 65:
            pass
            self.back_ref._fetch_instances()



    def _write__seq(self, io=None):
        super()._write__seq(io)
        self._io.write_u1(self.initial)
        if self.initial == 65:
            pass
            self.back_ref._write__seq(self._io)



    def _check(self):
        if self.initial == 65:
            pass

        self._dirty = False


