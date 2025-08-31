# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO
from enum import IntEnum


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class Enum1(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.main = Enum1.MainObj(self._io, self, self._root)
        self.main._read()


    def _fetch_instances(self):
        pass
        self.main._fetch_instances()


    def _write__seq(self, io=None):
        super(Enum1, self)._write__seq(io)
        self.main._write__seq(self._io)


    def _check(self):
        pass
        if self.main._root != self._root:
            raise kaitaistruct.ConsistencyError(u"main", self.main._root, self._root)
        if self.main._parent != self:
            raise kaitaistruct.ConsistencyError(u"main", self.main._parent, self)

    class MainObj(ReadWriteKaitaiStruct):

        class Animal(IntEnum):
            dog = 4
            cat = 7
            chicken = 12
        def __init__(self, _io=None, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.submain = Enum1.MainObj.SubmainObj(self._io, self, self._root)
            self.submain._read()


        def _fetch_instances(self):
            pass
            self.submain._fetch_instances()


        def _write__seq(self, io=None):
            super(Enum1.MainObj, self)._write__seq(io)
            self.submain._write__seq(self._io)


        def _check(self):
            pass
            if self.submain._root != self._root:
                raise kaitaistruct.ConsistencyError(u"submain", self.submain._root, self._root)
            if self.submain._parent != self:
                raise kaitaistruct.ConsistencyError(u"submain", self.submain._parent, self)

        class SubmainObj(ReadWriteKaitaiStruct):
            def __init__(self, _io=None, _parent=None, _root=None):
                self._io = _io
                self._parent = _parent
                self._root = _root

            def _read(self):
                self.pet_1 = KaitaiStream.resolve_enum(Enum1.MainObj.Animal, self._io.read_u4le())
                self.pet_2 = KaitaiStream.resolve_enum(Enum1.MainObj.Animal, self._io.read_u4le())


            def _fetch_instances(self):
                pass


            def _write__seq(self, io=None):
                super(Enum1.MainObj.SubmainObj, self)._write__seq(io)
                self._io.write_u4le(int(self.pet_1))
                self._io.write_u4le(int(self.pet_2))


            def _check(self):
                pass




