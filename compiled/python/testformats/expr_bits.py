# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO
from enum import IntEnum


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ExprBits(KaitaiStruct):

    class Items(IntEnum):
        foo = 1
        bar = 2
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.enum_seq = KaitaiStream.resolve_enum(ExprBits.Items, self._io.read_bits_int_be(2))
        self.a = self._io.read_bits_int_be(3)
        self.byte_size = self._io.read_bytes(self.a)
        self.repeat_expr = []
        for i in range(self.a):
            self.repeat_expr.append(self._io.read_s1())

        _on = self.a
        if _on == 2:
            pass
            self.switch_on_type = self._io.read_s1()
        self.switch_on_endian = ExprBits.EndianSwitch(self._io, self, self._root)


    def _fetch_instances(self):
        pass
        for i in range(len(self.repeat_expr)):
            pass

        _on = self.a
        if _on == 2:
            pass
        self.switch_on_endian._fetch_instances()
        _ = self.inst_pos

    class EndianSwitch(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            _on = self._parent.a
            if _on == 1:
                pass
                self._is_le = True
            elif _on == 2:
                pass
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


        def _fetch_instances(self):
            pass


    @property
    def enum_inst(self):
        if hasattr(self, '_m_enum_inst'):
            return self._m_enum_inst

        self._m_enum_inst = KaitaiStream.resolve_enum(ExprBits.Items, self.a)
        return getattr(self, '_m_enum_inst', None)

    @property
    def inst_pos(self):
        if hasattr(self, '_m_inst_pos'):
            return self._m_inst_pos

        _pos = self._io.pos()
        self._io.seek(self.a)
        self._m_inst_pos = self._io.read_s1()
        self._io.seek(_pos)
        return getattr(self, '_m_inst_pos', None)


