# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

from pkg_resources import parse_version
from kaitaistruct import __version__ as ks_version, KaitaiStruct, KaitaiStream, BytesIO


if parse_version(ks_version) < parse_version('0.7'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.7 or later is required, but you have %s" % (ks_version))

class FloatToI(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.single_value = self._io.read_f4le()
        self.double_value = self._io.read_f8le()

    @property
    def float2_i(self):
        if hasattr(self, '_m_float2_i'):
            return self._m_float2_i if hasattr(self, '_m_float2_i') else None

        self._m_float2_i = int(self.calc_float2)
        return self._m_float2_i if hasattr(self, '_m_float2_i') else None

    @property
    def calc_float1(self):
        if hasattr(self, '_m_calc_float1'):
            return self._m_calc_float1 if hasattr(self, '_m_calc_float1') else None

        self._m_calc_float1 = 1.234
        return self._m_calc_float1 if hasattr(self, '_m_calc_float1') else None

    @property
    def float4_i(self):
        if hasattr(self, '_m_float4_i'):
            return self._m_float4_i if hasattr(self, '_m_float4_i') else None

        self._m_float4_i = int(self.calc_float4)
        return self._m_float4_i if hasattr(self, '_m_float4_i') else None

    @property
    def calc_float3(self):
        if hasattr(self, '_m_calc_float3'):
            return self._m_calc_float3 if hasattr(self, '_m_calc_float3') else None

        self._m_calc_float3 = 1.9
        return self._m_calc_float3 if hasattr(self, '_m_calc_float3') else None

    @property
    def calc_float2(self):
        if hasattr(self, '_m_calc_float2'):
            return self._m_calc_float2 if hasattr(self, '_m_calc_float2') else None

        self._m_calc_float2 = 1.5
        return self._m_calc_float2 if hasattr(self, '_m_calc_float2') else None

    @property
    def float1_i(self):
        if hasattr(self, '_m_float1_i'):
            return self._m_float1_i if hasattr(self, '_m_float1_i') else None

        self._m_float1_i = int(self.calc_float1)
        return self._m_float1_i if hasattr(self, '_m_float1_i') else None

    @property
    def double_i(self):
        if hasattr(self, '_m_double_i'):
            return self._m_double_i if hasattr(self, '_m_double_i') else None

        self._m_double_i = int(self.double_value)
        return self._m_double_i if hasattr(self, '_m_double_i') else None

    @property
    def float3_i(self):
        if hasattr(self, '_m_float3_i'):
            return self._m_float3_i if hasattr(self, '_m_float3_i') else None

        self._m_float3_i = int(self.calc_float3)
        return self._m_float3_i if hasattr(self, '_m_float3_i') else None

    @property
    def single_i(self):
        if hasattr(self, '_m_single_i'):
            return self._m_single_i if hasattr(self, '_m_single_i') else None

        self._m_single_i = int(self.single_value)
        return self._m_single_i if hasattr(self, '_m_single_i') else None

    @property
    def calc_float4(self):
        if hasattr(self, '_m_calc_float4'):
            return self._m_calc_float4 if hasattr(self, '_m_calc_float4') else None

        self._m_calc_float4 = -2.7
        return self._m_calc_float4 if hasattr(self, '_m_calc_float4') else None


