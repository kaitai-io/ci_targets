# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class FloatToI(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.single_value = self._io.read_f4le()
        self.double_value = self._io.read_f8le()
        if True:
            pass
            self.single_value_if = self._io.read_f4be()

        if True:
            pass
            self.double_value_if = self._io.read_f8be()

        self._dirty = False


    def _fetch_instances(self):
        pass
        if True:
            pass

        if True:
            pass



    def _write__seq(self, io=None):
        super()._write__seq(io)
        self._io.write_f4le(self.single_value)
        self._io.write_f8le(self.double_value)
        if True:
            pass
            self._io.write_f4be(self.single_value_if)

        if True:
            pass
            self._io.write_f8be(self.double_value_if)



    def _check(self):
        if True:
            pass

        if True:
            pass

        self._dirty = False

    @property
    def calc_float1(self):
        if hasattr(self, '_m_calc_float1'):
            return self._m_calc_float1

        self._m_calc_float1 = 1.234
        return getattr(self, '_m_calc_float1', None)

    def _invalidate_calc_float1(self):
        del self._m_calc_float1
    @property
    def calc_float2(self):
        if hasattr(self, '_m_calc_float2'):
            return self._m_calc_float2

        self._m_calc_float2 = 1.5
        return getattr(self, '_m_calc_float2', None)

    def _invalidate_calc_float2(self):
        del self._m_calc_float2
    @property
    def calc_float3(self):
        if hasattr(self, '_m_calc_float3'):
            return self._m_calc_float3

        self._m_calc_float3 = 1.9
        return getattr(self, '_m_calc_float3', None)

    def _invalidate_calc_float3(self):
        del self._m_calc_float3
    @property
    def calc_float4(self):
        if hasattr(self, '_m_calc_float4'):
            return self._m_calc_float4

        self._m_calc_float4 = -2.7
        return getattr(self, '_m_calc_float4', None)

    def _invalidate_calc_float4(self):
        del self._m_calc_float4
    @property
    def calc_if(self):
        if hasattr(self, '_m_calc_if'):
            return self._m_calc_if

        self._m_calc_if = 13.9
        return getattr(self, '_m_calc_if', None)

    def _invalidate_calc_if(self):
        del self._m_calc_if
    @property
    def calc_if_i(self):
        if hasattr(self, '_m_calc_if_i'):
            return self._m_calc_if_i

        self._m_calc_if_i = int(self.calc_if)
        return getattr(self, '_m_calc_if_i', None)

    def _invalidate_calc_if_i(self):
        del self._m_calc_if_i
    @property
    def double_i(self):
        if hasattr(self, '_m_double_i'):
            return self._m_double_i

        self._m_double_i = int(self.double_value)
        return getattr(self, '_m_double_i', None)

    def _invalidate_double_i(self):
        del self._m_double_i
    @property
    def double_if_i(self):
        if hasattr(self, '_m_double_if_i'):
            return self._m_double_if_i

        self._m_double_if_i = int(self.double_value_if)
        return getattr(self, '_m_double_if_i', None)

    def _invalidate_double_if_i(self):
        del self._m_double_if_i
    @property
    def float1_i(self):
        if hasattr(self, '_m_float1_i'):
            return self._m_float1_i

        self._m_float1_i = int(self.calc_float1)
        return getattr(self, '_m_float1_i', None)

    def _invalidate_float1_i(self):
        del self._m_float1_i
    @property
    def float2_i(self):
        if hasattr(self, '_m_float2_i'):
            return self._m_float2_i

        self._m_float2_i = int(self.calc_float2)
        return getattr(self, '_m_float2_i', None)

    def _invalidate_float2_i(self):
        del self._m_float2_i
    @property
    def float3_i(self):
        if hasattr(self, '_m_float3_i'):
            return self._m_float3_i

        self._m_float3_i = int(self.calc_float3)
        return getattr(self, '_m_float3_i', None)

    def _invalidate_float3_i(self):
        del self._m_float3_i
    @property
    def float4_i(self):
        if hasattr(self, '_m_float4_i'):
            return self._m_float4_i

        self._m_float4_i = int(self.calc_float4)
        return getattr(self, '_m_float4_i', None)

    def _invalidate_float4_i(self):
        del self._m_float4_i
    @property
    def single_i(self):
        if hasattr(self, '_m_single_i'):
            return self._m_single_i

        self._m_single_i = int(self.single_value)
        return getattr(self, '_m_single_i', None)

    def _invalidate_single_i(self):
        del self._m_single_i
    @property
    def single_if_i(self):
        if hasattr(self, '_m_single_if_i'):
            return self._m_single_if_i

        self._m_single_if_i = int(self.single_value_if)
        return getattr(self, '_m_single_if_i', None)

    def _invalidate_single_if_i(self):
        del self._m_single_if_i

