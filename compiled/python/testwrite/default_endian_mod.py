# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class DefaultEndianMod(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super().__init__(_io)
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
        super()._write__seq(io)
        self.main._write__seq(self._io)


    def _check(self):
        if self.main._root != self._root:
            raise kaitaistruct.ConsistencyError("main", self._root, self.main._root)
        if self.main._parent != self:
            raise kaitaistruct.ConsistencyError("main", self, self.main._parent)
        self._dirty = False

    class MainObj(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super().__init__(_io)
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
            super()._write__seq(io)
            self._io.write_s4le(self.one)
            self.nest._write__seq(self._io)
            self.nest_be._write__seq(self._io)


        def _check(self):
            if self.nest._root != self._root:
                raise kaitaistruct.ConsistencyError("nest", self._root, self.nest._root)
            if self.nest._parent != self:
                raise kaitaistruct.ConsistencyError("nest", self, self.nest._parent)
            if self.nest_be._root != self._root:
                raise kaitaistruct.ConsistencyError("nest_be", self._root, self.nest_be._root)
            if self.nest_be._parent != self:
                raise kaitaistruct.ConsistencyError("nest_be", self, self.nest_be._parent)
            self._dirty = False

        class Subnest(ReadWriteKaitaiStruct):
            def __init__(self, _io=None, _parent=None, _root=None):
                super().__init__(_io)
                self._parent = _parent
                self._root = _root

            def _read(self):
                self.two = self._io.read_s4le()
                self._dirty = False


            def _fetch_instances(self):
                pass


            def _write__seq(self, io=None):
                super()._write__seq(io)
                self._io.write_s4le(self.two)


            def _check(self):
                self._dirty = False


        class SubnestBe(ReadWriteKaitaiStruct):
            def __init__(self, _io=None, _parent=None, _root=None):
                super().__init__(_io)
                self._parent = _parent
                self._root = _root

            def _read(self):
                self.two = self._io.read_s4be()
                self._dirty = False


            def _fetch_instances(self):
                pass


            def _write__seq(self, io=None):
                super()._write__seq(io)
                self._io.write_s4be(self.two)


            def _check(self):
                self._dirty = False




