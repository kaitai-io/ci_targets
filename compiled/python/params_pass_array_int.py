# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

from pkg_resources import parse_version
import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if parse_version(kaitaistruct.__version__) < parse_version('0.9'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.9 or later is required, but you have %s" % (kaitaistruct.__version__))

class ParamsPassArrayInt(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.ints = [None] * (3)
        for i in range(3):
            self.ints[i] = self._io.read_u2le()

        self.pass_ints = ParamsPassArrayInt.WantsInts(self.ints, self._io, self, self._root)
        self.pass_ints_calc = ParamsPassArrayInt.WantsInts(self.ints_calc, self._io, self, self._root)

    class WantsInts(KaitaiStruct):
        def __init__(self, nums, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self.nums = nums
            self._read()

        def _read(self):
            pass


    @property
    def ints_calc(self):
        if hasattr(self, '_m_ints_calc'):
            return self._m_ints_calc if hasattr(self, '_m_ints_calc') else None

        self._m_ints_calc = [27643, 7]
        return self._m_ints_calc if hasattr(self, '_m_ints_calc') else None


