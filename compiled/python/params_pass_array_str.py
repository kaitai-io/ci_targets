# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 9):
    raise Exception("Incompatible Kaitai Struct Python API: 0.9 or later is required, but you have %s" % (kaitaistruct.__version__))

class ParamsPassArrayStr(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.str_array = []
        for i in range(3):
            self.str_array.append((self._io.read_bytes(2)).decode("ASCII"))

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
            return self._m_str_array_calc

        self._m_str_array_calc = [u"aB", u"Cd"]
        return getattr(self, '_m_str_array_calc', None)


