# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class ParamsPassArrayStr(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.str_array = []
        for i in range(3):
            self.str_array.append((self._io.read_bytes(2)).decode("ASCII"))

        self.pass_str_array = ParamsPassArrayStr.WantsStrs(self.str_array, self._io, self, self._root)
        self.pass_str_array._read()
        self.pass_str_array_calc = ParamsPassArrayStr.WantsStrs(self.str_array_calc, self._io, self, self._root)
        self.pass_str_array_calc._read()
        self._dirty = False


    def _fetch_instances(self):
        pass
        for i in range(len(self.str_array)):
            pass

        self.pass_str_array._fetch_instances()
        self.pass_str_array_calc._fetch_instances()


    def _write__seq(self, io=None):
        super()._write__seq(io)
        for i in range(len(self.str_array)):
            pass
            self._io.write_bytes((self.str_array[i]).encode("ASCII"))

        self.pass_str_array._write__seq(self._io)
        self.pass_str_array_calc._write__seq(self._io)


    def _check(self):
        if len(self.str_array) != 3:
            raise kaitaistruct.ConsistencyError("str_array", 3, len(self.str_array))
        for i in range(len(self.str_array)):
            pass
            if len((self.str_array[i]).encode("ASCII")) != 2:
                raise kaitaistruct.ConsistencyError("str_array", 2, len((self.str_array[i]).encode("ASCII")))

        if self.pass_str_array._root != self._root:
            raise kaitaistruct.ConsistencyError("pass_str_array", self._root, self.pass_str_array._root)
        if self.pass_str_array._parent != self:
            raise kaitaistruct.ConsistencyError("pass_str_array", self, self.pass_str_array._parent)
        if self.pass_str_array.strs != self.str_array:
            raise kaitaistruct.ConsistencyError("pass_str_array", self.str_array, self.pass_str_array.strs)
        if self.pass_str_array_calc._root != self._root:
            raise kaitaistruct.ConsistencyError("pass_str_array_calc", self._root, self.pass_str_array_calc._root)
        if self.pass_str_array_calc._parent != self:
            raise kaitaistruct.ConsistencyError("pass_str_array_calc", self, self.pass_str_array_calc._parent)
        if self.pass_str_array_calc.strs != self.str_array_calc:
            raise kaitaistruct.ConsistencyError("pass_str_array_calc", self.str_array_calc, self.pass_str_array_calc.strs)
        self._dirty = False

    class WantsStrs(ReadWriteKaitaiStruct):
        def __init__(self, strs, _io=None, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root
            self.strs = strs

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
    def str_array_calc(self):
        if hasattr(self, '_m_str_array_calc'):
            return self._m_str_array_calc

        self._m_str_array_calc = ["aB", "Cd"]
        return getattr(self, '_m_str_array_calc', None)

    def _invalidate_str_array_calc(self):
        del self._m_str_array_calc

