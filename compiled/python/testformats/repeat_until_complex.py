# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class RepeatUntilComplex(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super(RepeatUntilComplex, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.first = []
        i = 0
        while True:
            _ = RepeatUntilComplex.TypeU1(self._io, self, self._root)
            self.first.append(_)
            if _.count == 0:
                break
            i += 1
        self.second = []
        i = 0
        while True:
            _ = RepeatUntilComplex.TypeU2(self._io, self, self._root)
            self.second.append(_)
            if _.count == 0:
                break
            i += 1
        self.third = []
        i = 0
        while True:
            _ = self._io.read_u1()
            self.third.append(_)
            if _ == 0:
                break
            i += 1


    def _fetch_instances(self):
        pass
        for i in range(len(self.first)):
            pass
            self.first[i]._fetch_instances()

        for i in range(len(self.second)):
            pass
            self.second[i]._fetch_instances()

        for i in range(len(self.third)):
            pass


    class TypeU1(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(RepeatUntilComplex.TypeU1, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.count = self._io.read_u1()
            self.values = []
            for i in range(self.count):
                self.values.append(self._io.read_u1())



        def _fetch_instances(self):
            pass
            for i in range(len(self.values)):
                pass



    class TypeU2(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(RepeatUntilComplex.TypeU2, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.count = self._io.read_u2le()
            self.values = []
            for i in range(self.count):
                self.values.append(self._io.read_u2le())



        def _fetch_instances(self):
            pass
            for i in range(len(self.values)):
                pass




