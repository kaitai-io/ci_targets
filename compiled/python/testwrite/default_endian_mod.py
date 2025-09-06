# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class DefaultEndianMod(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(DefaultEndianMod, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.main = DefaultEndianMod.MainObj(self._io, self, self._root)
        self.main._read()
        self._dirty = False


    def _fetch_instances(self):
        pass
        self.main._fetch_instances()


    def _write__seq(self, io=None):
        super(DefaultEndianMod, self)._write__seq(io)
        self.main._write__seq(self._io)


    def _check(self):
        if self.main._root != self._root:
            raise kaitaistruct.ConsistencyError(u"main", self.main._root, self._root)
        if self.main._parent != self:
            raise kaitaistruct.ConsistencyError(u"main", self.main._parent, self)
        self._dirty = False

    class MainObj(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super(DefaultEndianMod.MainObj, self).__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.one = self._io.read_s4le()
            self.nest = DefaultEndianMod.MainObj.Subnest(self._io, self, self._root)
            self.nest._read()
            self.nest_be = DefaultEndianMod.MainObj.SubnestBe(self._io, self, self._root)
            self.nest_be._read()
            self._dirty = False


        def _fetch_instances(self):
            pass
            self.nest._fetch_instances()
            self.nest_be._fetch_instances()


        def _write__seq(self, io=None):
            super(DefaultEndianMod.MainObj, self)._write__seq(io)
            self._io.write_s4le(self.one)
            self.nest._write__seq(self._io)
            self.nest_be._write__seq(self._io)


        def _check(self):
            if self.nest._root != self._root:
                raise kaitaistruct.ConsistencyError(u"nest", self.nest._root, self._root)
            if self.nest._parent != self:
                raise kaitaistruct.ConsistencyError(u"nest", self.nest._parent, self)
            if self.nest_be._root != self._root:
                raise kaitaistruct.ConsistencyError(u"nest_be", self.nest_be._root, self._root)
            if self.nest_be._parent != self:
                raise kaitaistruct.ConsistencyError(u"nest_be", self.nest_be._parent, self)
            self._dirty = False

        class Subnest(ReadWriteKaitaiStruct):
            def __init__(self, _io=None, _parent=None, _root=None):
                super(DefaultEndianMod.MainObj.Subnest, self).__init__(_io)
                self._parent = _parent
                self._root = _root

            def _read(self):
                self.two = self._io.read_s4le()
                self._dirty = False


            def _fetch_instances(self):
                pass


            def _write__seq(self, io=None):
                super(DefaultEndianMod.MainObj.Subnest, self)._write__seq(io)
                self._io.write_s4le(self.two)


            def _check(self):
                self._dirty = False


        class SubnestBe(ReadWriteKaitaiStruct):
            def __init__(self, _io=None, _parent=None, _root=None):
                super(DefaultEndianMod.MainObj.SubnestBe, self).__init__(_io)
                self._parent = _parent
                self._root = _root

            def _read(self):
                self.two = self._io.read_s4be()
                self._dirty = False


            def _fetch_instances(self):
                pass


            def _write__seq(self, io=None):
                super(DefaultEndianMod.MainObj.SubnestBe, self)._write__seq(io)
                self._io.write_s4be(self.two)


            def _check(self):
                self._dirty = False




