# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO
from enum import IntEnum


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class SwitchManualEnum(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.opcodes = []
        i = 0
        while not self._io.is_eof():
            _t_opcodes = SwitchManualEnum.Opcode(self._io, self, self._root)
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
        super()._write__seq(io)
        for i in range(len(self.opcodes)):
            pass
            if self._io.is_eof():
                raise kaitaistruct.ConsistencyError("opcodes", 0, self._io.size() - self._io.pos())
            self.opcodes[i]._write__seq(self._io)

        if not self._io.is_eof():
            raise kaitaistruct.ConsistencyError("opcodes", 0, self._io.size() - self._io.pos())


    def _check(self):
        for i in range(len(self.opcodes)):
            pass
            if self.opcodes[i]._root != self._root:
                raise kaitaistruct.ConsistencyError("opcodes", self._root, self.opcodes[i]._root)
            if self.opcodes[i]._parent != self:
                raise kaitaistruct.ConsistencyError("opcodes", self, self.opcodes[i]._parent)

        self._dirty = False

    class Opcode(ReadWriteKaitaiStruct):

        class CodeEnum(IntEnum):
            intval = 73
            strval = 83
        def __init__(self, _io=None, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.code = KaitaiStream.resolve_enum(SwitchManualEnum.Opcode.CodeEnum, self._io.read_u1())
            _on = self.code
            if _on == SwitchManualEnum.Opcode.CodeEnum.intval:
                pass
                self.body = SwitchManualEnum.Opcode.Intval(self._io, self, self._root)
                self.body._read()
            elif _on == SwitchManualEnum.Opcode.CodeEnum.strval:
                pass
                self.body = SwitchManualEnum.Opcode.Strval(self._io, self, self._root)
                self.body._read()
            self._dirty = False


        def _fetch_instances(self):
            pass
            _on = self.code
            if _on == SwitchManualEnum.Opcode.CodeEnum.intval:
                pass
                self.body._fetch_instances()
            elif _on == SwitchManualEnum.Opcode.CodeEnum.strval:
                pass
                self.body._fetch_instances()


        def _write__seq(self, io=None):
            super()._write__seq(io)
            self._io.write_u1(int(self.code))
            _on = self.code
            if _on == SwitchManualEnum.Opcode.CodeEnum.intval:
                pass
                self.body._write__seq(self._io)
            elif _on == SwitchManualEnum.Opcode.CodeEnum.strval:
                pass
                self.body._write__seq(self._io)


        def _check(self):
            _on = self.code
            if _on == SwitchManualEnum.Opcode.CodeEnum.intval:
                pass
                if self.body._root != self._root:
                    raise kaitaistruct.ConsistencyError("body", self._root, self.body._root)
                if self.body._parent != self:
                    raise kaitaistruct.ConsistencyError("body", self, self.body._parent)
            elif _on == SwitchManualEnum.Opcode.CodeEnum.strval:
                pass
                if self.body._root != self._root:
                    raise kaitaistruct.ConsistencyError("body", self._root, self.body._root)
                if self.body._parent != self:
                    raise kaitaistruct.ConsistencyError("body", self, self.body._parent)
            self._dirty = False

        class Intval(ReadWriteKaitaiStruct):
            def __init__(self, _io=None, _parent=None, _root=None):
                super().__init__(_io)
                self._parent = _parent
                self._root = _root

            def _read(self):
                self.value = self._io.read_u1()
                self._dirty = False


            def _fetch_instances(self):
                pass


            def _write__seq(self, io=None):
                super()._write__seq(io)
                self._io.write_u1(self.value)


            def _check(self):
                self._dirty = False


        class Strval(ReadWriteKaitaiStruct):
            def __init__(self, _io=None, _parent=None, _root=None):
                super().__init__(_io)
                self._parent = _parent
                self._root = _root

            def _read(self):
                self.value = (self._io.read_bytes_term(0, False, True, True)).decode("ASCII")
                self._dirty = False


            def _fetch_instances(self):
                pass


            def _write__seq(self, io=None):
                super()._write__seq(io)
                self._io.write_bytes((self.value).encode("ASCII"))
                self._io.write_u1(0)


            def _check(self):
                if KaitaiStream.byte_array_index_of((self.value).encode("ASCII"), 0) != -1:
                    raise kaitaistruct.ConsistencyError("value", -1, KaitaiStream.byte_array_index_of((self.value).encode("ASCII"), 0))
                self._dirty = False




