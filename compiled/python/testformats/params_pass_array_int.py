# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ParamsPassArrayInt(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.ints = []
        for i in range(3):
            self.ints.append(self._io.read_u2le())

        self.pass_ints = ParamsPassArrayInt.WantsInts(self.ints, self._io, self, self._root)
        self.pass_ints_calc = ParamsPassArrayInt.WantsInts(self.ints_calc, self._io, self, self._root)


    def _fetch_instances(self):
        pass
        for i in range(len(self.ints)):
            pass

        self.pass_ints._fetch_instances()
        self.pass_ints_calc._fetch_instances()

    class WantsInts(KaitaiStruct):
        def __init__(self, nums, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root
            self.nums = nums
            self._read()

        def _read(self):
            pass


        def _fetch_instances(self):
            pass


    @property
    def ints_calc(self):
        if hasattr(self, '_m_ints_calc'):
            return self._m_ints_calc

        self._m_ints_calc = [27643, 7]
        return getattr(self, '_m_ints_calc', None)


