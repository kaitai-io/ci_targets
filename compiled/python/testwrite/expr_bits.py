# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO
from enum import IntEnum


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ExprBits(ReadWriteKaitaiStruct):

    class Items(IntEnum):
        foo = 1
        bar = 2
    def __init__(self, _io=None, _parent=None, _root=None):
        super(ExprBits, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._should_write_inst_pos = False
        self.inst_pos__enabled = True

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
        self.switch_on_endian._read()
        self._dirty = False


    def _fetch_instances(self):
        pass
        for i in range(len(self.repeat_expr)):
            pass

        _on = self.a
        if _on == 2:
            pass
        self.switch_on_endian._fetch_instances()
        _ = self.inst_pos
        if hasattr(self, '_m_inst_pos'):
            pass



    def _write__seq(self, io=None):
        super(ExprBits, self)._write__seq(io)
        self._should_write_inst_pos = self.inst_pos__enabled
        self._io.write_bits_int_be(2, int(self.enum_seq))
        self._io.write_bits_int_be(3, self.a)
        self._io.write_bytes(self.byte_size)
        for i in range(len(self.repeat_expr)):
            pass
            self._io.write_s1(self.repeat_expr[i])

        _on = self.a
        if _on == 2:
            pass
            self._io.write_s1(self.switch_on_type)
        self.switch_on_endian._write__seq(self._io)


    def _check(self):
        if len(self.byte_size) != self.a:
            raise kaitaistruct.ConsistencyError(u"byte_size", self.a, len(self.byte_size))
        if len(self.repeat_expr) != self.a:
            raise kaitaistruct.ConsistencyError(u"repeat_expr", self.a, len(self.repeat_expr))
        for i in range(len(self.repeat_expr)):
            pass

        _on = self.a
        if _on == 2:
            pass
        if self.switch_on_endian._root != self._root:
            raise kaitaistruct.ConsistencyError(u"switch_on_endian", self._root, self.switch_on_endian._root)
        if self.switch_on_endian._parent != self:
            raise kaitaistruct.ConsistencyError(u"switch_on_endian", self, self.switch_on_endian._parent)
        if self.inst_pos__enabled:
            pass

        self._dirty = False

    class EndianSwitch(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super(ExprBits.EndianSwitch, self).__init__(_io)
            self._parent = _parent
            self._root = _root

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
            self._dirty = False

        def _read_le(self):
            self.foo = self._io.read_s2le()
            self._dirty = False

        def _read_be(self):
            self.foo = self._io.read_s2be()
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(ExprBits.EndianSwitch, self)._write__seq(io)
            if not hasattr(self, '_is_le'):
                raise kaitaistruct.UndecidedEndiannessError("/types/endian_switch")
            elif self._is_le == True:
                self._write__seq_le()
            elif self._is_le == False:
                self._write__seq_be()


        def _write__seq_le(self):
            self._io.write_s2le(self.foo)


        def _write__seq_be(self):
            self._io.write_s2be(self.foo)


        def _check(self):
            self._dirty = False


    @property
    def enum_inst(self):
        if hasattr(self, '_m_enum_inst'):
            return self._m_enum_inst

        self._m_enum_inst = KaitaiStream.resolve_enum(ExprBits.Items, self.a)
        return getattr(self, '_m_enum_inst', None)

    def _invalidate_enum_inst(self):
        del self._m_enum_inst
    @property
    def inst_pos(self):
        if self._should_write_inst_pos:
            self._write_inst_pos()
        if hasattr(self, '_m_inst_pos'):
            return self._m_inst_pos

        if not self.inst_pos__enabled:
            return None

        _pos = self._io.pos()
        self._io.seek(self.a)
        self._m_inst_pos = self._io.read_s1()
        self._io.seek(_pos)
        return getattr(self, '_m_inst_pos', None)

    @inst_pos.setter
    def inst_pos(self, v):
        self._dirty = True
        self._m_inst_pos = v

    def _write_inst_pos(self):
        self._should_write_inst_pos = False
        _pos = self._io.pos()
        self._io.seek(self.a)
        self._io.write_s1(self._m_inst_pos)
        self._io.seek(_pos)


