# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class SwitchCast(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(SwitchCast, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.opcodes = []
        i = 0
        while not self._io.is_eof():
            _t_opcodes = SwitchCast.Opcode(self._io, self, self._root)
            try:
                _t_opcodes._read()
            finally:
                self.opcodes.append(_t_opcodes)
            i += 1

        self._dirty = False


    def _fetch_instances(self):
        pass
        for i in range(len(self.opcodes)):
            pass
            self.opcodes[i]._fetch_instances()



    def _write__seq(self, io=None):
        super(SwitchCast, self)._write__seq(io)
        for i in range(len(self.opcodes)):
            pass
            if self._io.is_eof():
                raise kaitaistruct.ConsistencyError(u"opcodes", self._io.size() - self._io.pos(), 0)
            self.opcodes[i]._write__seq(self._io)

        if not self._io.is_eof():
            raise kaitaistruct.ConsistencyError(u"opcodes", self._io.size() - self._io.pos(), 0)


    def _check(self):
        for i in range(len(self.opcodes)):
            pass
            if self.opcodes[i]._root != self._root:
                raise kaitaistruct.ConsistencyError(u"opcodes", self.opcodes[i]._root, self._root)
            if self.opcodes[i]._parent != self:
                raise kaitaistruct.ConsistencyError(u"opcodes", self.opcodes[i]._parent, self)

        self._dirty = False

    class Intval(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super(SwitchCast.Intval, self).__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.value = self._io.read_u1()
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(SwitchCast.Intval, self)._write__seq(io)
            self._io.write_u1(self.value)


        def _check(self):
            self._dirty = False


    class Opcode(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super(SwitchCast.Opcode, self).__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.code = self._io.read_u1()
            _on = self.code
            if _on == 73:
                pass
                self.body = SwitchCast.Intval(self._io, self, self._root)
                self.body._read()
            elif _on == 83:
                pass
                self.body = SwitchCast.Strval(self._io, self, self._root)
                self.body._read()
            self._dirty = False


        def _fetch_instances(self):
            pass
            _on = self.code
            if _on == 73:
                pass
                self.body._fetch_instances()
            elif _on == 83:
                pass
                self.body._fetch_instances()


        def _write__seq(self, io=None):
            super(SwitchCast.Opcode, self)._write__seq(io)
            self._io.write_u1(self.code)
            _on = self.code
            if _on == 73:
                pass
                self.body._write__seq(self._io)
            elif _on == 83:
                pass
                self.body._write__seq(self._io)


        def _check(self):
            _on = self.code
            if _on == 73:
                pass
                if self.body._root != self._root:
                    raise kaitaistruct.ConsistencyError(u"body", self.body._root, self._root)
                if self.body._parent != self:
                    raise kaitaistruct.ConsistencyError(u"body", self.body._parent, self)
            elif _on == 83:
                pass
                if self.body._root != self._root:
                    raise kaitaistruct.ConsistencyError(u"body", self.body._root, self._root)
                if self.body._parent != self:
                    raise kaitaistruct.ConsistencyError(u"body", self.body._parent, self)
            self._dirty = False


    class Strval(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super(SwitchCast.Strval, self).__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.value = (self._io.read_bytes_term(0, False, True, True)).decode(u"ASCII")
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(SwitchCast.Strval, self)._write__seq(io)
            self._io.write_bytes((self.value).encode(u"ASCII"))
            self._io.write_u1(0)


        def _check(self):
            if KaitaiStream.byte_array_index_of((self.value).encode(u"ASCII"), 0) != -1:
                raise kaitaistruct.ConsistencyError(u"value", KaitaiStream.byte_array_index_of((self.value).encode(u"ASCII"), 0), -1)
            self._dirty = False


    @property
    def err_cast(self):
        if hasattr(self, '_m_err_cast'):
            return self._m_err_cast

        self._m_err_cast = self.opcodes[2].body
        return getattr(self, '_m_err_cast', None)

    def _invalidate_err_cast(self):
        del self._m_err_cast
    @property
    def first_obj(self):
        if hasattr(self, '_m_first_obj'):
            return self._m_first_obj

        self._m_first_obj = self.opcodes[0].body
        return getattr(self, '_m_first_obj', None)

    def _invalidate_first_obj(self):
        del self._m_first_obj
    @property
    def second_val(self):
        if hasattr(self, '_m_second_val'):
            return self._m_second_val

        self._m_second_val = self.opcodes[1].body.value
        return getattr(self, '_m_second_val', None)

    def _invalidate_second_val(self):
        del self._m_second_val

