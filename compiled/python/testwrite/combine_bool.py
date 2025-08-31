# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class CombineBool(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.bool_bit = self._io.read_bits_int_be(1) != 0


    def _fetch_instances(self):
        pass


    def _write__seq(self, io=None):
        super(CombineBool, self)._write__seq(io)
        self._io.write_bits_int_be(1, int(self.bool_bit))


    def _check(self):
        pass

    @property
    def bool_calc(self):
        if hasattr(self, '_m_bool_calc'):
            return self._m_bool_calc

        self._m_bool_calc = False
        return getattr(self, '_m_bool_calc', None)

    def _invalidate_bool_calc(self):
        del self._m_bool_calc
    @property
    def bool_calc_bit(self):
        if hasattr(self, '_m_bool_calc_bit'):
            return self._m_bool_calc_bit

        self._m_bool_calc_bit = (self.bool_calc if True else self.bool_bit)
        return getattr(self, '_m_bool_calc_bit', None)

    def _invalidate_bool_calc_bit(self):
        del self._m_bool_calc_bit

