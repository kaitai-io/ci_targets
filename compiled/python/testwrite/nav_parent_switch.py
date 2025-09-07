# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class NavParentSwitch(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(NavParentSwitch, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.category = self._io.read_u1()
        _on = self.category
        if _on == 1:
            pass
            self.content = NavParentSwitch.Element1(self._io, self, self._root)
            self.content._read()
        self._dirty = False


    def _fetch_instances(self):
        pass
        _on = self.category
        if _on == 1:
            pass
            self.content._fetch_instances()


    def _write__seq(self, io=None):
        super(NavParentSwitch, self)._write__seq(io)
        self._io.write_u1(self.category)
        _on = self.category
        if _on == 1:
            pass
            self.content._write__seq(self._io)


    def _check(self):
        _on = self.category
        if _on == 1:
            pass
            if self.content._root != self._root:
                raise kaitaistruct.ConsistencyError(u"content", self._root, self.content._root)
            if self.content._parent != self:
                raise kaitaistruct.ConsistencyError(u"content", self, self.content._parent)
        self._dirty = False

    class Element1(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super(NavParentSwitch.Element1, self).__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.foo = self._io.read_u1()
            self.subelement = NavParentSwitch.Subelement1(self._io, self, self._root)
            self.subelement._read()
            self._dirty = False


        def _fetch_instances(self):
            pass
            self.subelement._fetch_instances()


        def _write__seq(self, io=None):
            super(NavParentSwitch.Element1, self)._write__seq(io)
            self._io.write_u1(self.foo)
            self.subelement._write__seq(self._io)


        def _check(self):
            if self.subelement._root != self._root:
                raise kaitaistruct.ConsistencyError(u"subelement", self._root, self.subelement._root)
            if self.subelement._parent != self:
                raise kaitaistruct.ConsistencyError(u"subelement", self, self.subelement._parent)
            self._dirty = False


    class Subelement1(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super(NavParentSwitch.Subelement1, self).__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            if self._parent.foo == 66:
                pass
                self.bar = self._io.read_u1()

            self._dirty = False


        def _fetch_instances(self):
            pass
            if self._parent.foo == 66:
                pass



        def _write__seq(self, io=None):
            super(NavParentSwitch.Subelement1, self)._write__seq(io)
            if self._parent.foo == 66:
                pass
                self._io.write_u1(self.bar)



        def _check(self):
            if self._parent.foo == 66:
                pass

            self._dirty = False



