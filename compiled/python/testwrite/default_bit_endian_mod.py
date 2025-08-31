# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class DefaultBitEndianMod(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.main = DefaultBitEndianMod.MainObj(self._io, self, self._root)
        self.main._read()


    def _fetch_instances(self):
        pass
        self.main._fetch_instances()


    def _write__seq(self, io=None):
        super(DefaultBitEndianMod, self)._write__seq(io)
        self.main._write__seq(self._io)


    def _check(self):
        pass
        if self.main._root != self._root:
            raise kaitaistruct.ConsistencyError(u"main", self.main._root, self._root)
        if self.main._parent != self:
            raise kaitaistruct.ConsistencyError(u"main", self.main._parent, self)

    class MainObj(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.one = self._io.read_bits_int_le(9)
            self.two = self._io.read_bits_int_le(15)
            self.nest = DefaultBitEndianMod.MainObj.Subnest(self._io, self, self._root)
            self.nest._read()
            self.nest_be = DefaultBitEndianMod.MainObj.SubnestBe(self._io, self, self._root)
            self.nest_be._read()


        def _fetch_instances(self):
            pass
            self.nest._fetch_instances()
            self.nest_be._fetch_instances()


        def _write__seq(self, io=None):
            super(DefaultBitEndianMod.MainObj, self)._write__seq(io)
            self._io.write_bits_int_le(9, self.one)
            self._io.write_bits_int_le(15, self.two)
            self.nest._write__seq(self._io)
            self.nest_be._write__seq(self._io)


        def _check(self):
            pass
            if self.nest._root != self._root:
                raise kaitaistruct.ConsistencyError(u"nest", self.nest._root, self._root)
            if self.nest._parent != self:
                raise kaitaistruct.ConsistencyError(u"nest", self.nest._parent, self)
            if self.nest_be._root != self._root:
                raise kaitaistruct.ConsistencyError(u"nest_be", self.nest_be._root, self._root)
            if self.nest_be._parent != self:
                raise kaitaistruct.ConsistencyError(u"nest_be", self.nest_be._parent, self)

        class Subnest(ReadWriteKaitaiStruct):
            def __init__(self, _io=None, _parent=None, _root=None):
                self._io = _io
                self._parent = _parent
                self._root = _root

            def _read(self):
                self.two = self._io.read_bits_int_le(16)


            def _fetch_instances(self):
                pass


            def _write__seq(self, io=None):
                super(DefaultBitEndianMod.MainObj.Subnest, self)._write__seq(io)
                self._io.write_bits_int_le(16, self.two)


            def _check(self):
                pass


        class SubnestBe(ReadWriteKaitaiStruct):
            def __init__(self, _io=None, _parent=None, _root=None):
                self._io = _io
                self._parent = _parent
                self._root = _root

            def _read(self):
                self.two = self._io.read_bits_int_be(16)


            def _fetch_instances(self):
                pass


            def _write__seq(self, io=None):
                super(DefaultBitEndianMod.MainObj.SubnestBe, self)._write__seq(io)
                self._io.write_bits_int_be(16, self.two)


            def _check(self):
                pass




