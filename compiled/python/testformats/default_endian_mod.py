# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class DefaultEndianMod(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.main = DefaultEndianMod.MainObj(self._io, self, self._root)


    def _fetch_instances(self):
        pass
        self.main._fetch_instances()

    class MainObj(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.one = self._io.read_s4le()
            self.nest = DefaultEndianMod.MainObj.Subnest(self._io, self, self._root)
            self.nest_be = DefaultEndianMod.MainObj.SubnestBe(self._io, self, self._root)


        def _fetch_instances(self):
            pass
            self.nest._fetch_instances()
            self.nest_be._fetch_instances()

        class Subnest(KaitaiStruct):
            def __init__(self, _io, _parent=None, _root=None):
                self._io = _io
                self._parent = _parent
                self._root = _root
                self._read()

            def _read(self):
                self.two = self._io.read_s4le()


            def _fetch_instances(self):
                pass


        class SubnestBe(KaitaiStruct):
            def __init__(self, _io, _parent=None, _root=None):
                self._io = _io
                self._parent = _parent
                self._root = _root
                self._read()

            def _read(self):
                self.two = self._io.read_s4be()


            def _fetch_instances(self):
                pass




