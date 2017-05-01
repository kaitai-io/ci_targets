from pkg_resources import parse_version
from kaitaistruct import __version__ as ks_version, KaitaiStruct, KaitaiStream, BytesIO
# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



if parse_version(ks_version) < parse_version('0.7'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.7 or later is required, but you have %s" % (ks_version))

class ExprMod(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self.int_u = self._io.read_u4le()
        self.int_s = self._io.read_s4le()

    @property
    def mod_pos_const(self):
        if hasattr(self, '_m_mod_pos_const'):
            return self._m_mod_pos_const if hasattr(self, '_m_mod_pos_const') else None

        self._m_mod_pos_const = (9837 % 13)
        return self._m_mod_pos_const if hasattr(self, '_m_mod_pos_const') else None

    @property
    def mod_neg_const(self):
        if hasattr(self, '_m_mod_neg_const'):
            return self._m_mod_neg_const if hasattr(self, '_m_mod_neg_const') else None

        self._m_mod_neg_const = (-9837 % 13)
        return self._m_mod_neg_const if hasattr(self, '_m_mod_neg_const') else None

    @property
    def mod_pos_seq(self):
        if hasattr(self, '_m_mod_pos_seq'):
            return self._m_mod_pos_seq if hasattr(self, '_m_mod_pos_seq') else None

        self._m_mod_pos_seq = (self.int_u % 13)
        return self._m_mod_pos_seq if hasattr(self, '_m_mod_pos_seq') else None

    @property
    def mod_neg_seq(self):
        if hasattr(self, '_m_mod_neg_seq'):
            return self._m_mod_neg_seq if hasattr(self, '_m_mod_neg_seq') else None

        self._m_mod_neg_seq = (self.int_s % 13)
        return self._m_mod_neg_seq if hasattr(self, '_m_mod_neg_seq') else None


