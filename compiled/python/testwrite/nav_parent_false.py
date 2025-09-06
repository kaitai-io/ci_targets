# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class NavParentFalse(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(NavParentFalse, self).__init__(_io)
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
        super(NavParentFalse, self)._write__seq(io)
        self._io.write_u1(self.child_size)
        self.element_a._write__seq(self._io)
        self.element_b._write__seq(self._io)


    def _check(self):
        if self.element_a._root != self._root:
            raise kaitaistruct.ConsistencyError(u"element_a", self.element_a._root, self._root)
        if self.element_a._parent != self:
            raise kaitaistruct.ConsistencyError(u"element_a", self.element_a._parent, self)
        if self.element_b._root != self._root:
            raise kaitaistruct.ConsistencyError(u"element_b", self.element_b._root, self._root)
        if self.element_b._parent != self:
            raise kaitaistruct.ConsistencyError(u"element_b", self.element_b._parent, self)
        self._dirty = False

    class Child(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super(NavParentFalse.Child, self).__init__(_io)
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
            super(NavParentFalse.Child, self)._write__seq(io)
            self._io.write_u1(self.code)
            if self.code == 73:
                pass
                self._io.write_bytes(self.more)



        def _check(self):
            if self.code == 73:
                pass
                if len(self.more) != self._parent._parent.child_size:
                    raise kaitaistruct.ConsistencyError(u"more", len(self.more), self._parent._parent.child_size)

            self._dirty = False


    class ParentA(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super(NavParentFalse.ParentA, self).__init__(_io)
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
            super(NavParentFalse.ParentA, self)._write__seq(io)
            self.foo._write__seq(self._io)
            self.bar._write__seq(self._io)


        def _check(self):
            if self.foo._root != self._root:
                raise kaitaistruct.ConsistencyError(u"foo", self.foo._root, self._root)
            if self.foo._parent != self:
                raise kaitaistruct.ConsistencyError(u"foo", self.foo._parent, self)
            if self.bar._root != self._root:
                raise kaitaistruct.ConsistencyError(u"bar", self.bar._root, self._root)
            if self.bar._parent != self:
                raise kaitaistruct.ConsistencyError(u"bar", self.bar._parent, self)
            self._dirty = False


    class ParentB(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super(NavParentFalse.ParentB, self).__init__(_io)
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
            super(NavParentFalse.ParentB, self)._write__seq(io)
            self.foo._write__seq(self._io)


        def _check(self):
            if self.foo._root != self._root:
                raise kaitaistruct.ConsistencyError(u"foo", self.foo._root, self._root)
            if self.foo._parent != None:
                raise kaitaistruct.ConsistencyError(u"foo", self.foo._parent, None)
            self._dirty = False



