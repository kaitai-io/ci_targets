# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class NavParentFalse2(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.parentless = NavParentFalse2.Child(self._io, None, self._root)
        self.parentless._read()
        self._dirty = False


    def _fetch_instances(self):
        pass
        self.parentless._fetch_instances()


    def _write__seq(self, io=None):
        super()._write__seq(io)
        self.parentless._write__seq(self._io)


    def _check(self):
        if self.parentless._root != self._root:
            raise kaitaistruct.ConsistencyError("parentless", self._root, self.parentless._root)
        if self.parentless._parent != None:
            raise kaitaistruct.ConsistencyError("parentless", None, self.parentless._parent)
        self._dirty = False

    class Child(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.foo = self._io.read_u1()
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super()._write__seq(io)
            self._io.write_u1(self.foo)


        def _check(self):
            self._dirty = False



