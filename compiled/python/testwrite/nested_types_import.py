# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO
from testwrite import nested_types3


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class NestedTypesImport(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.a_cc = nested_types3.NestedTypes3.SubtypeA.SubtypeCc(self._io)
        self.a_cc._read()
        self.a_c_d = nested_types3.NestedTypes3.SubtypeA.SubtypeC.SubtypeD(self._io)
        self.a_c_d._read()
        self.b = nested_types3.NestedTypes3.SubtypeB(self._io)
        self.b._read()


    def _fetch_instances(self):
        pass
        self.a_cc._fetch_instances()
        self.a_c_d._fetch_instances()
        self.b._fetch_instances()


    def _write__seq(self, io=None):
        super(NestedTypesImport, self)._write__seq(io)
        self.a_cc._write__seq(self._io)
        self.a_c_d._write__seq(self._io)
        self.b._write__seq(self._io)


    def _check(self):
        pass


