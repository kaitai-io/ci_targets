# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

from pkg_resources import parse_version
import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO
from enum import Enum


if parse_version(kaitaistruct.__version__) < parse_version('0.9'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.9 or later is required, but you have %s" % (kaitaistruct.__version__))

class ExprBits(KaitaiStruct):

    class Items(Enum):
        foo = 1
        bar = 2
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.enum_seq = KaitaiStream.resolve_enum(ExprBits.Items, self._io.read_bits_int_be(2))
        self.a = self._io.read_bits_int_be(3)
        self._io.align_to_byte()
        self.byte_size = self._io.read_bytes(self.a)
        self.repeat_expr = [None] * (self.a)
        for i in range(self.a):
            self.repeat_expr[i] = self._io.read_s1()

        _on = self.a
        if _on == 2:
            self.switch_on_type = self._io.read_s1()
        self.switch_on_endian = ExprBits.EndianSwitch(self._io, self, self._root)

    class EndianSwitch(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self._read()

        def _read(self):
            _on = self._parent.a
            if _on == 1:
                self._is_le = True
            elif _on == 2:
                self._is_le = False
            if not hasattr(self, '_is_le'):
                raise kaitaistruct.UndecidedEndiannessError("/types/endian_switch")
            elif self._is_le == True:
                self._read_le()
            elif self._is_le == False:
                self._read_be()

        def _read_le(self):
            self.foo = self._io.read_s2le()

        def _read_be(self):
            self.foo = self._io.read_s2be()


    @property
    def enum_inst(self):
        if hasattr(self, '_m_enum_inst'):
            return self._m_enum_inst if hasattr(self, '_m_enum_inst') else None

        self._m_enum_inst = KaitaiStream.resolve_enum(ExprBits.Items, self.a)
        return self._m_enum_inst if hasattr(self, '_m_enum_inst') else None

    @property
    def inst_pos(self):
        if hasattr(self, '_m_inst_pos'):
            return self._m_inst_pos if hasattr(self, '_m_inst_pos') else None

        _pos = self._io.pos()
        self._io.seek(self.a)
        self._m_inst_pos = self._io.read_s1()
        self._io.seek(_pos)
        return self._m_inst_pos if hasattr(self, '_m_inst_pos') else None


