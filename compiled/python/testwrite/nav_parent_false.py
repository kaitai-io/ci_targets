# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class NavParentFalse(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.child_size = self._io.read_u1()
        self.element_a = NavParentFalse.ParentA(self._io, self, self._root)
        self.element_a._read()
        self.element_b = NavParentFalse.ParentB(self._io, self, self._root)
        self.element_b._read()
        self._dirty = False


    def _fetch_instances(self):
        pass
        self.element_a._fetch_instances()
        self.element_b._fetch_instances()


    def _write__seq(self, io=None):
        super()._write__seq(io)
        self._io.write_u1(self.child_size)
        self.element_a._write__seq(self._io)
        self.element_b._write__seq(self._io)


    def _check(self):
        if self.element_a._root != self._root:
            raise kaitaistruct.ConsistencyError("element_a", self._root, self.element_a._root)
        if self.element_a._parent != self:
            raise kaitaistruct.ConsistencyError("element_a", self, self.element_a._parent)
        if self.element_b._root != self._root:
            raise kaitaistruct.ConsistencyError("element_b", self._root, self.element_b._root)
        if self.element_b._parent != self:
            raise kaitaistruct.ConsistencyError("element_b", self, self.element_b._parent)
        self._dirty = False

    class Child(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.code = self._io.read_u1()
            if self.code == 73:
                pass
                self.more = self._io.read_bytes(self._parent._parent.child_size)

            self._dirty = False


        def _fetch_instances(self):
            pass
            if self.code == 73:
                pass



        def _write__seq(self, io=None):
            super()._write__seq(io)
            self._io.write_u1(self.code)
            if self.code == 73:
                pass
                self._io.write_bytes(self.more)



        def _check(self):
            if self.code == 73:
                pass
                if len(self.more) != self._parent._parent.child_size:
                    raise kaitaistruct.ConsistencyError("more", self._parent._parent.child_size, len(self.more))

            self._dirty = False


    class ParentA(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.foo = NavParentFalse.Child(self._io, self, self._root)
            self.foo._read()
            self.bar = NavParentFalse.ParentB(self._io, self, self._root)
            self.bar._read()
            self._dirty = False


        def _fetch_instances(self):
            pass
            self.foo._fetch_instances()
            self.bar._fetch_instances()


        def _write__seq(self, io=None):
            super()._write__seq(io)
            self.foo._write__seq(self._io)
            self.bar._write__seq(self._io)


        def _check(self):
            if self.foo._root != self._root:
                raise kaitaistruct.ConsistencyError("foo", self._root, self.foo._root)
            if self.foo._parent != self:
                raise kaitaistruct.ConsistencyError("foo", self, self.foo._parent)
            if self.bar._root != self._root:
                raise kaitaistruct.ConsistencyError("bar", self._root, self.bar._root)
            if self.bar._parent != self:
                raise kaitaistruct.ConsistencyError("bar", self, self.bar._parent)
            self._dirty = False


    class ParentB(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.foo = NavParentFalse.Child(self._io, None, self._root)
            self.foo._read()
            self._dirty = False


        def _fetch_instances(self):
            pass
            self.foo._fetch_instances()


        def _write__seq(self, io=None):
            super()._write__seq(io)
            self.foo._write__seq(self._io)


        def _check(self):
            if self.foo._root != self._root:
                raise kaitaistruct.ConsistencyError("foo", self._root, self.foo._root)
            if self.foo._parent != None:
                raise kaitaistruct.ConsistencyError("foo", None, self.foo._parent)
            self._dirty = False



