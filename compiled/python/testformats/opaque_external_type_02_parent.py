# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO
from testformats import opaque_external_type_02_child


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class OpaqueExternalType02Parent(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super(OpaqueExternalType02Parent, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.parent = OpaqueExternalType02Parent.ParentObj(self._io, self, self._root)


    def _fetch_instances(self):
        pass
        self.parent._fetch_instances()

    class ParentObj(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(OpaqueExternalType02Parent.ParentObj, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.child = opaque_external_type_02_child.OpaqueExternalType02Child(self._io)


        def _fetch_instances(self):
            pass
            self.child._fetch_instances()



