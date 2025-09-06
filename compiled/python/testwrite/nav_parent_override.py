# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class NavParentOverride(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(NavParentOverride, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.child_size = self._io.read_u1()
        self.child_1 = NavParentOverride.Child(self._io, self, self._root)
        self.child_1._read()
        self.mediator_2 = NavParentOverride.Mediator(self._io, self, self._root)
        self.mediator_2._read()
        self._dirty = False


    def _fetch_instances(self):
        pass
        self.child_1._fetch_instances()
        self.mediator_2._fetch_instances()


    def _write__seq(self, io=None):
        super(NavParentOverride, self)._write__seq(io)
        self._io.write_u1(self.child_size)
        self.child_1._write__seq(self._io)
        self.mediator_2._write__seq(self._io)


    def _check(self):
        if self.child_1._root != self._root:
            raise kaitaistruct.ConsistencyError(u"child_1", self.child_1._root, self._root)
        if self.child_1._parent != self:
            raise kaitaistruct.ConsistencyError(u"child_1", self.child_1._parent, self)
        if self.mediator_2._root != self._root:
            raise kaitaistruct.ConsistencyError(u"mediator_2", self.mediator_2._root, self._root)
        if self.mediator_2._parent != self:
            raise kaitaistruct.ConsistencyError(u"mediator_2", self.mediator_2._parent, self)
        self._dirty = False

    class Child(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super(NavParentOverride.Child, self).__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.data = self._io.read_bytes(self._parent.child_size)
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(NavParentOverride.Child, self)._write__seq(io)
            self._io.write_bytes(self.data)


        def _check(self):
            if len(self.data) != self._parent.child_size:
                raise kaitaistruct.ConsistencyError(u"data", len(self.data), self._parent.child_size)
            self._dirty = False


    class Mediator(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super(NavParentOverride.Mediator, self).__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.child_2 = NavParentOverride.Child(self._io, self._parent, self._root)
            self.child_2._read()
            self._dirty = False


        def _fetch_instances(self):
            pass
            self.child_2._fetch_instances()


        def _write__seq(self, io=None):
            super(NavParentOverride.Mediator, self)._write__seq(io)
            self.child_2._write__seq(self._io)


        def _check(self):
            if self.child_2._root != self._root:
                raise kaitaistruct.ConsistencyError(u"child_2", self.child_2._root, self._root)
            if self.child_2._parent != self._parent:
                raise kaitaistruct.ConsistencyError(u"child_2", self.child_2._parent, self._parent)
            self._dirty = False



