# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

from pkg_resources import parse_version
import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if parse_version(kaitaistruct.__version__) < parse_version('0.9'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.9 or later is required, but you have %s" % (kaitaistruct.__version__))

class ParamsPassArrayStr(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.str_array = [None] * (3)
        for i in range(3):
            self.str_array[i] = (self._io.read_bytes(2)).decode(u"ascii")

        self.pass_str_array = ParamsPassArrayStr.WantsStrs(self.str_array, self._io, self, self._root)
        self.pass_str_array_calc = ParamsPassArrayStr.WantsStrs(self.str_array_calc, self._io, self, self._root)

    class WantsStrs(KaitaiStruct):
        def __init__(self, strs, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self.strs = strs
            self._read()

        def _read(self):
            pass


    @property
    def str_array_calc(self):
        if hasattr(self, '_m_str_array_calc'):
            return self._m_str_array_calc if hasattr(self, '_m_str_array_calc') else None

        self._m_str_array_calc = [u"aB", u"Cd"]
        return self._m_str_array_calc if hasattr(self, '_m_str_array_calc') else None


