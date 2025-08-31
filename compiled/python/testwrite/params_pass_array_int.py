# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ParamsPassArrayInt(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        self._io = _io
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


    def _fetch_instances(self):
        pass
        for i in range(len(self.ints)):
            pass

        self.pass_ints._fetch_instances()
        self.pass_ints_calc._fetch_instances()


    def _write__seq(self, io=None):
        super(ParamsPassArrayInt, self)._write__seq(io)
        for i in range(len(self.ints)):
            pass
            self._io.write_u2le(self.ints[i])

        self.pass_ints._write__seq(self._io)
        self.pass_ints_calc._write__seq(self._io)


    def _check(self):
        pass
        if len(self.ints) != 3:
            raise kaitaistruct.ConsistencyError(u"ints", len(self.ints), 3)
        for i in range(len(self.ints)):
            pass

        if self.pass_ints._root != self._root:
            raise kaitaistruct.ConsistencyError(u"pass_ints", self.pass_ints._root, self._root)
        if self.pass_ints._parent != self:
            raise kaitaistruct.ConsistencyError(u"pass_ints", self.pass_ints._parent, self)
        if self.pass_ints.nums != self.ints:
            raise kaitaistruct.ConsistencyError(u"pass_ints", self.pass_ints.nums, self.ints)
        if self.pass_ints_calc._root != self._root:
            raise kaitaistruct.ConsistencyError(u"pass_ints_calc", self.pass_ints_calc._root, self._root)
        if self.pass_ints_calc._parent != self:
            raise kaitaistruct.ConsistencyError(u"pass_ints_calc", self.pass_ints_calc._parent, self)
        if self.pass_ints_calc.nums != self.ints_calc:
            raise kaitaistruct.ConsistencyError(u"pass_ints_calc", self.pass_ints_calc.nums, self.ints_calc)

    class WantsInts(ReadWriteKaitaiStruct):
        def __init__(self, nums, _io=None, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root
            self.nums = nums

        def _read(self):
            pass


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(ParamsPassArrayInt.WantsInts, self)._write__seq(io)


        def _check(self):
            pass


    @property
    def ints_calc(self):
        if hasattr(self, '_m_ints_calc'):
            return self._m_ints_calc

        self._m_ints_calc = [27643, 7]
        return getattr(self, '_m_ints_calc', None)

    def _invalidate_ints_calc(self):
        del self._m_ints_calc

