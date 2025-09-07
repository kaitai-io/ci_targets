# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ExprIfIntEq(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(ExprIfIntEq, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.skip = self._io.read_bytes(2)
        self.seq = self._io.read_s2le()
        if True:
            pass
            self.seq_if = self._io.read_s2le()

        self._dirty = False


    def _fetch_instances(self):
        pass
        if True:
            pass



    def _write__seq(self, io=None):
        super(ExprIfIntEq, self)._write__seq(io)
        self._io.write_bytes(self.skip)
        self._io.write_s2le(self.seq)
        if True:
            pass
            self._io.write_s2le(self.seq_if)



    def _check(self):
        if len(self.skip) != 2:
            raise kaitaistruct.ConsistencyError(u"skip", 2, len(self.skip))
        if True:
            pass

        self._dirty = False

    @property
    def calc(self):
        if hasattr(self, '_m_calc'):
            return self._m_calc

        self._m_calc = 16705
        return getattr(self, '_m_calc', None)

    def _invalidate_calc(self):
        del self._m_calc
    @property
    def calc_eq_calc_if(self):
        if hasattr(self, '_m_calc_eq_calc_if'):
            return self._m_calc_eq_calc_if

        self._m_calc_eq_calc_if = self.calc == self.calc_if
        return getattr(self, '_m_calc_eq_calc_if', None)

    def _invalidate_calc_eq_calc_if(self):
        del self._m_calc_eq_calc_if
    @property
    def calc_eq_lit(self):
        if hasattr(self, '_m_calc_eq_lit'):
            return self._m_calc_eq_lit

        self._m_calc_eq_lit = self.calc == 16705
        return getattr(self, '_m_calc_eq_lit', None)

    def _invalidate_calc_eq_lit(self):
        del self._m_calc_eq_lit
    @property
    def calc_eq_seq_if(self):
        if hasattr(self, '_m_calc_eq_seq_if'):
            return self._m_calc_eq_seq_if

        self._m_calc_eq_seq_if = self.calc == self.seq_if
        return getattr(self, '_m_calc_eq_seq_if', None)

    def _invalidate_calc_eq_seq_if(self):
        del self._m_calc_eq_seq_if
    @property
    def calc_if(self):
        if hasattr(self, '_m_calc_if'):
            return self._m_calc_if

        if True:
            pass
            self._m_calc_if = 16705

        return getattr(self, '_m_calc_if', None)

    def _invalidate_calc_if(self):
        del self._m_calc_if
    @property
    def calc_if_eq_lit(self):
        if hasattr(self, '_m_calc_if_eq_lit'):
            return self._m_calc_if_eq_lit

        self._m_calc_if_eq_lit = self.calc_if == 16705
        return getattr(self, '_m_calc_if_eq_lit', None)

    def _invalidate_calc_if_eq_lit(self):
        del self._m_calc_if_eq_lit
    @property
    def calc_if_eq_seq_if(self):
        if hasattr(self, '_m_calc_if_eq_seq_if'):
            return self._m_calc_if_eq_seq_if

        self._m_calc_if_eq_seq_if = self.calc_if == self.seq_if
        return getattr(self, '_m_calc_if_eq_seq_if', None)

    def _invalidate_calc_if_eq_seq_if(self):
        del self._m_calc_if_eq_seq_if
    @property
    def seq_eq_calc(self):
        if hasattr(self, '_m_seq_eq_calc'):
            return self._m_seq_eq_calc

        self._m_seq_eq_calc = self.seq == self.calc
        return getattr(self, '_m_seq_eq_calc', None)

    def _invalidate_seq_eq_calc(self):
        del self._m_seq_eq_calc
    @property
    def seq_eq_calc_if(self):
        if hasattr(self, '_m_seq_eq_calc_if'):
            return self._m_seq_eq_calc_if

        self._m_seq_eq_calc_if = self.seq == self.calc_if
        return getattr(self, '_m_seq_eq_calc_if', None)

    def _invalidate_seq_eq_calc_if(self):
        del self._m_seq_eq_calc_if
    @property
    def seq_eq_lit(self):
        if hasattr(self, '_m_seq_eq_lit'):
            return self._m_seq_eq_lit

        self._m_seq_eq_lit = self.seq == 16705
        return getattr(self, '_m_seq_eq_lit', None)

    def _invalidate_seq_eq_lit(self):
        del self._m_seq_eq_lit
    @property
    def seq_eq_seq_if(self):
        if hasattr(self, '_m_seq_eq_seq_if'):
            return self._m_seq_eq_seq_if

        self._m_seq_eq_seq_if = self.seq == self.seq_if
        return getattr(self, '_m_seq_eq_seq_if', None)

    def _invalidate_seq_eq_seq_if(self):
        del self._m_seq_eq_seq_if
    @property
    def seq_if_eq_lit(self):
        if hasattr(self, '_m_seq_if_eq_lit'):
            return self._m_seq_if_eq_lit

        self._m_seq_if_eq_lit = self.seq_if == 16705
        return getattr(self, '_m_seq_if_eq_lit', None)

    def _invalidate_seq_if_eq_lit(self):
        del self._m_seq_if_eq_lit

