# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class ParamsPassArrayStr(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.str_array = []
        for i in range(3):
            self.str_array.append((self._io.read_bytes(2)).decode("ASCII"))

        self.pass_str_array = ParamsPassArrayStr.WantsStrs(self.str_array, self._io, self, self._root)
        self.pass_str_array_calc = ParamsPassArrayStr.WantsStrs(self.str_array_calc, self._io, self, self._root)


    def _fetch_instances(self):
        pass
        for i in range(len(self.str_array)):
            pass

        self.pass_str_array._fetch_instances()
        self.pass_str_array_calc._fetch_instances()

    class WantsStrs(KaitaiStruct):
        def __init__(self, strs, _io, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root
            self.strs = strs
            self._read()

        def _read(self):
            pass


        def _fetch_instances(self):
            pass


    @property
    def str_array_calc(self):
        if hasattr(self, '_m_str_array_calc'):
            return self._m_str_array_calc

        self._m_str_array_calc = ["aB", "Cd"]
        return getattr(self, '_m_str_array_calc', None)


