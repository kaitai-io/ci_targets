# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class NavParentSwitch(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.category = self._io.read_u1()
        _on = self.category
        if _on == 1:
            pass
            self.content = NavParentSwitch.Element1(self._io, self, self._root)


    def _fetch_instances(self):
        pass
        _on = self.category
        if _on == 1:
            pass
            self.content._fetch_instances()

    class Element1(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.foo = self._io.read_u1()
            self.subelement = NavParentSwitch.Subelement1(self._io, self, self._root)


        def _fetch_instances(self):
            pass
            self.subelement._fetch_instances()


    class Subelement1(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            if self._parent.foo == 66:
                pass
                self.bar = self._io.read_u1()



        def _fetch_instances(self):
            pass
            if self._parent.foo == 66:
                pass




