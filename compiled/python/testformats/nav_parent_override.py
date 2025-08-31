# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class NavParentOverride(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.child_size = self._io.read_u1()
        self.child_1 = NavParentOverride.Child(self._io, self, self._root)
        self.mediator_2 = NavParentOverride.Mediator(self._io, self, self._root)


    def _fetch_instances(self):
        pass
        self.child_1._fetch_instances()
        self.mediator_2._fetch_instances()

    class Child(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.data = self._io.read_bytes(self._parent.child_size)


        def _fetch_instances(self):
            pass


    class Mediator(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.child_2 = NavParentOverride.Child(self._io, self._parent, self._root)


        def _fetch_instances(self):
            pass
            self.child_2._fetch_instances()



