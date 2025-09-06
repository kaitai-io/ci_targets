# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ExprIfIntEq(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super(ExprIfIntEq, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.skip = self._io.read_bytes(2)
        self.seq = self._io.read_s2le()
        if True:
            pass
            self.seq_if = self._io.read_s2le()



    def _fetch_instances(self):
        pass
        if True:
            pass


    @property
    def calc(self):
        if hasattr(self, '_m_calc'):
            return self._m_calc

        self._m_calc = 16705
        return getattr(self, '_m_calc', None)

    @property
    def calc_eq_calc_if(self):
        if hasattr(self, '_m_calc_eq_calc_if'):
            return self._m_calc_eq_calc_if

        self._m_calc_eq_calc_if = self.calc == self.calc_if
        return getattr(self, '_m_calc_eq_calc_if', None)

    @property
    def calc_eq_lit(self):
        if hasattr(self, '_m_calc_eq_lit'):
            return self._m_calc_eq_lit

        self._m_calc_eq_lit = self.calc == 16705
        return getattr(self, '_m_calc_eq_lit', None)

    @property
    def calc_eq_seq_if(self):
        if hasattr(self, '_m_calc_eq_seq_if'):
            return self._m_calc_eq_seq_if

        self._m_calc_eq_seq_if = self.calc == self.seq_if
        return getattr(self, '_m_calc_eq_seq_if', None)

    @property
    def calc_if(self):
        if hasattr(self, '_m_calc_if'):
            return self._m_calc_if

        if True:
            pass
            self._m_calc_if = 16705

        return getattr(self, '_m_calc_if', None)

    @property
    def calc_if_eq_lit(self):
        if hasattr(self, '_m_calc_if_eq_lit'):
            return self._m_calc_if_eq_lit

        self._m_calc_if_eq_lit = self.calc_if == 16705
        return getattr(self, '_m_calc_if_eq_lit', None)

    @property
    def calc_if_eq_seq_if(self):
        if hasattr(self, '_m_calc_if_eq_seq_if'):
            return self._m_calc_if_eq_seq_if

        self._m_calc_if_eq_seq_if = self.calc_if == self.seq_if
        return getattr(self, '_m_calc_if_eq_seq_if', None)

    @property
    def seq_eq_calc(self):
        if hasattr(self, '_m_seq_eq_calc'):
            return self._m_seq_eq_calc

        self._m_seq_eq_calc = self.seq == self.calc
        return getattr(self, '_m_seq_eq_calc', None)

    @property
    def seq_eq_calc_if(self):
        if hasattr(self, '_m_seq_eq_calc_if'):
            return self._m_seq_eq_calc_if

        self._m_seq_eq_calc_if = self.seq == self.calc_if
        return getattr(self, '_m_seq_eq_calc_if', None)

    @property
    def seq_eq_lit(self):
        if hasattr(self, '_m_seq_eq_lit'):
            return self._m_seq_eq_lit

        self._m_seq_eq_lit = self.seq == 16705
        return getattr(self, '_m_seq_eq_lit', None)

    @property
    def seq_eq_seq_if(self):
        if hasattr(self, '_m_seq_eq_seq_if'):
            return self._m_seq_eq_seq_if

        self._m_seq_eq_seq_if = self.seq == self.seq_if
        return getattr(self, '_m_seq_eq_seq_if', None)

    @property
    def seq_if_eq_lit(self):
        if hasattr(self, '_m_seq_if_eq_lit'):
            return self._m_seq_if_eq_lit

        self._m_seq_if_eq_lit = self.seq_if == 16705
        return getattr(self, '_m_seq_if_eq_lit', None)


