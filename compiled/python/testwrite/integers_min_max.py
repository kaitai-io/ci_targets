# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class IntegersMinMax(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.unsigned_min = IntegersMinMax.Unsigned(self._io, self, self._root)
        self.unsigned_min._read()
        self.unsigned_max = IntegersMinMax.Unsigned(self._io, self, self._root)
        self.unsigned_max._read()
        self.signed_min = IntegersMinMax.Signed(self._io, self, self._root)
        self.signed_min._read()
        self.signed_max = IntegersMinMax.Signed(self._io, self, self._root)
        self.signed_max._read()
        self._dirty = False


    def _fetch_instances(self):
        pass
        self.unsigned_min._fetch_instances()
        self.unsigned_max._fetch_instances()
        self.signed_min._fetch_instances()
        self.signed_max._fetch_instances()


    def _write__seq(self, io=None):
        super()._write__seq(io)
        self.unsigned_min._write__seq(self._io)
        self.unsigned_max._write__seq(self._io)
        self.signed_min._write__seq(self._io)
        self.signed_max._write__seq(self._io)


    def _check(self):
        if self.unsigned_min._root != self._root:
            raise kaitaistruct.ConsistencyError("unsigned_min", self._root, self.unsigned_min._root)
        if self.unsigned_min._parent != self:
            raise kaitaistruct.ConsistencyError("unsigned_min", self, self.unsigned_min._parent)
        if self.unsigned_max._root != self._root:
            raise kaitaistruct.ConsistencyError("unsigned_max", self._root, self.unsigned_max._root)
        if self.unsigned_max._parent != self:
            raise kaitaistruct.ConsistencyError("unsigned_max", self, self.unsigned_max._parent)
        if self.signed_min._root != self._root:
            raise kaitaistruct.ConsistencyError("signed_min", self._root, self.signed_min._root)
        if self.signed_min._parent != self:
            raise kaitaistruct.ConsistencyError("signed_min", self, self.signed_min._parent)
        if self.signed_max._root != self._root:
            raise kaitaistruct.ConsistencyError("signed_max", self._root, self.signed_max._root)
        if self.signed_max._parent != self:
            raise kaitaistruct.ConsistencyError("signed_max", self, self.signed_max._parent)
        self._dirty = False

    class Signed(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.s1 = self._io.read_s1()
            self.s2le = self._io.read_s2le()
            self.s4le = self._io.read_s4le()
            self.s8le = self._io.read_s8le()
            self.s2be = self._io.read_s2be()
            self.s4be = self._io.read_s4be()
            self.s8be = self._io.read_s8be()
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super()._write__seq(io)
            self._io.write_s1(self.s1)
            self._io.write_s2le(self.s2le)
            self._io.write_s4le(self.s4le)
            self._io.write_s8le(self.s8le)
            self._io.write_s2be(self.s2be)
            self._io.write_s4be(self.s4be)
            self._io.write_s8be(self.s8be)


        def _check(self):
            self._dirty = False


    class Unsigned(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.u1 = self._io.read_u1()
            self.u2le = self._io.read_u2le()
            self.u4le = self._io.read_u4le()
            self.u8le = self._io.read_u8le()
            self.u2be = self._io.read_u2be()
            self.u4be = self._io.read_u4be()
            self.u8be = self._io.read_u8be()
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super()._write__seq(io)
            self._io.write_u1(self.u1)
            self._io.write_u2le(self.u2le)
            self._io.write_u4le(self.u4le)
            self._io.write_u8le(self.u8le)
            self._io.write_u2be(self.u2be)
            self._io.write_u4be(self.u4be)
            self._io.write_u8be(self.u8be)


        def _check(self):
            self._dirty = False



