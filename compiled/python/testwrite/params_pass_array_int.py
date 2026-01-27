# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class ParamsPassArrayInt(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.ints = []
        for i in range(3):
            self.ints.append(self._io.read_u2le())

        self.pass_ints = ParamsPassArrayInt.WantsInts(self.ints, self._io, self, self._root)
        self.pass_ints._read()
        self.pass_ints_calc = ParamsPassArrayInt.WantsInts(self.ints_calc, self._io, self, self._root)
        self.pass_ints_calc._read()
        self._dirty = False


    def _fetch_instances(self):
        pass
        for i in range(len(self.ints)):
            pass

        self.pass_ints._fetch_instances()
        self.pass_ints_calc._fetch_instances()


    def _write__seq(self, io=None):
        super()._write__seq(io)
        for i in range(len(self.ints)):
            pass
            self._io.write_u2le(self.ints[i])

        self.pass_ints._write__seq(self._io)
        self.pass_ints_calc._write__seq(self._io)


    def _check(self):
        if len(self.ints) != 3:
            raise kaitaistruct.ConsistencyError("ints", 3, len(self.ints))
        for i in range(len(self.ints)):
            pass

        if self.pass_ints._root != self._root:
            raise kaitaistruct.ConsistencyError("pass_ints", self._root, self.pass_ints._root)
        if self.pass_ints._parent != self:
            raise kaitaistruct.ConsistencyError("pass_ints", self, self.pass_ints._parent)
        if self.pass_ints.nums != self.ints:
            raise kaitaistruct.ConsistencyError("pass_ints", self.ints, self.pass_ints.nums)
        if self.pass_ints_calc._root != self._root:
            raise kaitaistruct.ConsistencyError("pass_ints_calc", self._root, self.pass_ints_calc._root)
        if self.pass_ints_calc._parent != self:
            raise kaitaistruct.ConsistencyError("pass_ints_calc", self, self.pass_ints_calc._parent)
        if self.pass_ints_calc.nums != self.ints_calc:
            raise kaitaistruct.ConsistencyError("pass_ints_calc", self.ints_calc, self.pass_ints_calc.nums)
        self._dirty = False

    class WantsInts(ReadWriteKaitaiStruct):
        def __init__(self, nums, _io=None, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root
            self.nums = nums

        def _read(self):
            pass
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super()._write__seq(io)


        def _check(self):
            self._dirty = False


    @property
    def ints_calc(self):
        if hasattr(self, '_m_ints_calc'):
            return self._m_ints_calc

        self._m_ints_calc = [27643, 7]
        return getattr(self, '_m_ints_calc', None)

    def _invalidate_ints_calc(self):
        del self._m_ints_calc

