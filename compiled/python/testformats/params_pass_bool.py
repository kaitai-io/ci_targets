# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class ParamsPassBool(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.s_false = self._io.read_bits_int_be(1) != 0
        self.s_true = self._io.read_bits_int_be(1) != 0
        self.seq_b1 = ParamsPassBool.ParamTypeB1(self.s_true, self._io, self, self._root)
        self.seq_bool = ParamsPassBool.ParamTypeBool(self.s_false, self._io, self, self._root)
        self.literal_b1 = ParamsPassBool.ParamTypeB1(False, self._io, self, self._root)
        self.literal_bool = ParamsPassBool.ParamTypeBool(True, self._io, self, self._root)
        self.inst_b1 = ParamsPassBool.ParamTypeB1(self.v_true, self._io, self, self._root)
        self.inst_bool = ParamsPassBool.ParamTypeBool(self.v_false, self._io, self, self._root)


    def _fetch_instances(self):
        pass
        self.seq_b1._fetch_instances()
        self.seq_bool._fetch_instances()
        self.literal_b1._fetch_instances()
        self.literal_bool._fetch_instances()
        self.inst_b1._fetch_instances()
        self.inst_bool._fetch_instances()

    class ParamTypeB1(KaitaiStruct):
        def __init__(self, arg, _io, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root
            self.arg = arg
            self._read()

        def _read(self):
            self.foo = self._io.read_bytes((1 if self.arg else 2))


        def _fetch_instances(self):
            pass


    class ParamTypeBool(KaitaiStruct):
        def __init__(self, arg, _io, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root
            self.arg = arg
            self._read()

        def _read(self):
            self.foo = self._io.read_bytes((1 if self.arg else 2))


        def _fetch_instances(self):
            pass


    @property
    def v_false(self):
        if hasattr(self, '_m_v_false'):
            return self._m_v_false

        self._m_v_false = False
        return getattr(self, '_m_v_false', None)

    @property
    def v_true(self):
        if hasattr(self, '_m_v_true'):
            return self._m_v_true

        self._m_v_true = True
        return getattr(self, '_m_v_true', None)


