# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class SwitchElseOnly(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.opcode = self._io.read_s1()
        self.prim_byte = self._io.read_s1()
        self.indicator = self._io.read_bytes(4)
        self.ut = SwitchElseOnly.Data(self._io, self, self._root)
        self.ut._read()
        self._dirty = False


    def _fetch_instances(self):
        pass
        self.ut._fetch_instances()


    def _write__seq(self, io=None):
        super()._write__seq(io)
        self._io.write_s1(self.opcode)
        self._io.write_s1(self.prim_byte)
        self._io.write_bytes(self.indicator)
        self.ut._write__seq(self._io)


    def _check(self):
        if len(self.indicator) != 4:
            raise kaitaistruct.ConsistencyError("indicator", 4, len(self.indicator))
        if self.ut._root != self._root:
            raise kaitaistruct.ConsistencyError("ut", self._root, self.ut._root)
        if self.ut._parent != self:
            raise kaitaistruct.ConsistencyError("ut", self, self.ut._parent)
        self._dirty = False

    class Data(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.value = self._io.read_bytes(4)
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super()._write__seq(io)
            self._io.write_bytes(self.value)


        def _check(self):
            if len(self.value) != 4:
                raise kaitaistruct.ConsistencyError("value", 4, len(self.value))
            self._dirty = False



