# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class NavParentFalse(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super(NavParentFalse, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.child_size = self._io.read_u1()
        self.element_a = NavParentFalse.ParentA(self._io, self, self._root)
        self.element_b = NavParentFalse.ParentB(self._io, self, self._root)


    def _fetch_instances(self):
        pass
        self.element_a._fetch_instances()
        self.element_b._fetch_instances()

    class Child(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(NavParentFalse.Child, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.code = self._io.read_u1()
            if self.code == 73:
                pass
                self.more = self._io.read_bytes(self._parent._parent.child_size)



        def _fetch_instances(self):
            pass
            if self.code == 73:
                pass



    class ParentA(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(NavParentFalse.ParentA, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.foo = NavParentFalse.Child(self._io, self, self._root)
            self.bar = NavParentFalse.ParentB(self._io, self, self._root)


        def _fetch_instances(self):
            pass
            self.foo._fetch_instances()
            self.bar._fetch_instances()


    class ParentB(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(NavParentFalse.ParentB, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.foo = NavParentFalse.Child(self._io, None, self._root)


        def _fetch_instances(self):
            pass
            self.foo._fetch_instances()



