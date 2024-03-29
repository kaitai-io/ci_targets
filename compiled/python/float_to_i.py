# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

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
    def calc_float1(self):
        if hasattr(self, '_m_calc_float1'):
            return self._m_calc_float1

        self._m_calc_float1 = 1.234
        return getattr(self, '_m_calc_float1', None)

    @property
    def calc_float2(self):
        if hasattr(self, '_m_calc_float2'):
            return self._m_calc_float2

        self._m_calc_float2 = 1.5
        return getattr(self, '_m_calc_float2', None)

    @property
    def calc_float3(self):
        if hasattr(self, '_m_calc_float3'):
            return self._m_calc_float3

        self._m_calc_float3 = 1.9
        return getattr(self, '_m_calc_float3', None)

    @property
    def calc_float4(self):
        if hasattr(self, '_m_calc_float4'):
            return self._m_calc_float4

        self._m_calc_float4 = -2.7
        return getattr(self, '_m_calc_float4', None)

    @property
    def double_i(self):
        if hasattr(self, '_m_double_i'):
            return self._m_double_i

        self._m_double_i = int(self.double_value)
        return getattr(self, '_m_double_i', None)

    @property
    def float1_i(self):
        if hasattr(self, '_m_float1_i'):
            return self._m_float1_i

        self._m_float1_i = int(self.calc_float1)
        return getattr(self, '_m_float1_i', None)

    @property
    def float2_i(self):
        if hasattr(self, '_m_float2_i'):
            return self._m_float2_i

        self._m_float2_i = int(self.calc_float2)
        return getattr(self, '_m_float2_i', None)

    @property
    def float3_i(self):
        if hasattr(self, '_m_float3_i'):
            return self._m_float3_i

        self._m_float3_i = int(self.calc_float3)
        return getattr(self, '_m_float3_i', None)

    @property
    def float4_i(self):
        if hasattr(self, '_m_float4_i'):
            return self._m_float4_i

        self._m_float4_i = int(self.calc_float4)
        return getattr(self, '_m_float4_i', None)

    @property
    def single_i(self):
        if hasattr(self, '_m_single_i'):
            return self._m_single_i

        self._m_single_i = int(self.single_value)
        return getattr(self, '_m_single_i', None)


