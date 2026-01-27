# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO
from testwrite import opaque_external_type_02_child


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class OpaqueExternalType02Parent(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.parent = OpaqueExternalType02Parent.ParentObj(self._io, self, self._root)
        self.parent._read()
        self._dirty = False


    def _fetch_instances(self):
        pass
        self.parent._fetch_instances()


    def _write__seq(self, io=None):
        super()._write__seq(io)
        self.parent._write__seq(self._io)


    def _check(self):
        if self.parent._root != self._root:
            raise kaitaistruct.ConsistencyError("parent", self._root, self.parent._root)
        if self.parent._parent != self:
            raise kaitaistruct.ConsistencyError("parent", self, self.parent._parent)
        self._dirty = False

    class ParentObj(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.child = opaque_external_type_02_child.OpaqueExternalType02Child(self._io)
            self.child._read()
            self._dirty = False


        def _fetch_instances(self):
            pass
            self.child._fetch_instances()


        def _write__seq(self, io=None):
            super()._write__seq(io)
            self.child._write__seq(self._io)


        def _check(self):
            self._dirty = False



