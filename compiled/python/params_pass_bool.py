# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

from pkg_resources import parse_version
import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if parse_version(kaitaistruct.__version__) < parse_version('0.9'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.9 or later is required, but you have %s" % (kaitaistruct.__version__))

class ParamsPassBool(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.s_false = self._io.read_bits_int_be(1) != 0
        self.s_true = self._io.read_bits_int_be(1) != 0
        self._io.align_to_byte()
        self.seq_b1 = ParamsPassBool.ParamTypeB1(self.s_true, self._io, self, self._root)
        self.seq_bool = ParamsPassBool.ParamTypeBool(self.s_false, self._io, self, self._root)
        self.literal_b1 = ParamsPassBool.ParamTypeB1(False, self._io, self, self._root)
        self.literal_bool = ParamsPassBool.ParamTypeBool(True, self._io, self, self._root)
        self.inst_b1 = ParamsPassBool.ParamTypeB1(self.v_true, self._io, self, self._root)
        self.inst_bool = ParamsPassBool.ParamTypeBool(self.v_false, self._io, self, self._root)

    class ParamTypeB1(KaitaiStruct):
        def __init__(self, arg, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self.arg = arg
            self._read()

        def _read(self):
            self.foo = self._io.read_bytes((1 if self.arg else 2))


    class ParamTypeBool(KaitaiStruct):
        def __init__(self, arg, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self.arg = arg
            self._read()

        def _read(self):
            self.foo = self._io.read_bytes((1 if self.arg else 2))


    @property
    def v_false(self):
        if hasattr(self, '_m_v_false'):
            return self._m_v_false if hasattr(self, '_m_v_false') else None

        self._m_v_false = False
        return self._m_v_false if hasattr(self, '_m_v_false') else None

    @property
    def v_true(self):
        if hasattr(self, '_m_v_true'):
            return self._m_v_true if hasattr(self, '_m_v_true') else None

        self._m_v_true = True
        return self._m_v_true if hasattr(self, '_m_v_true') else None


