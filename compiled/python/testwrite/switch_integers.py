# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class SwitchIntegers(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(SwitchIntegers, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.opcodes = []
        i = 0
        while not self._io.is_eof():
            _t_opcodes = SwitchIntegers.Opcode(self._io, self, self._root)
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
        super(SwitchIntegers, self)._write__seq(io)
        for i in range(len(self.opcodes)):
            pass
            if self._io.is_eof():
                raise kaitaistruct.ConsistencyError(u"opcodes", 0, self._io.size() - self._io.pos())
            self.opcodes[i]._write__seq(self._io)

        if not self._io.is_eof():
            raise kaitaistruct.ConsistencyError(u"opcodes", 0, self._io.size() - self._io.pos())


    def _check(self):
        for i in range(len(self.opcodes)):
            pass
            if self.opcodes[i]._root != self._root:
                raise kaitaistruct.ConsistencyError(u"opcodes", self._root, self.opcodes[i]._root)
            if self.opcodes[i]._parent != self:
                raise kaitaistruct.ConsistencyError(u"opcodes", self, self.opcodes[i]._parent)

        self._dirty = False

    class Opcode(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super(SwitchIntegers.Opcode, self).__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.code = self._io.read_u1()
            _on = self.code
            if _on == 1:
                pass
                self.body = self._io.read_u1()
            elif _on == 2:
                pass
                self.body = self._io.read_u2le()
            elif _on == 4:
                pass
                self.body = self._io.read_u4le()
            elif _on == 8:
                pass
                self.body = self._io.read_u8le()
            self._dirty = False


        def _fetch_instances(self):
            pass
            _on = self.code
            if _on == 1:
                pass
            elif _on == 2:
                pass
            elif _on == 4:
                pass
            elif _on == 8:
                pass


        def _write__seq(self, io=None):
            super(SwitchIntegers.Opcode, self)._write__seq(io)
            self._io.write_u1(self.code)
            _on = self.code
            if _on == 1:
                pass
                self._io.write_u1(self.body)
            elif _on == 2:
                pass
                self._io.write_u2le(self.body)
            elif _on == 4:
                pass
                self._io.write_u4le(self.body)
            elif _on == 8:
                pass
                self._io.write_u8le(self.body)


        def _check(self):
            _on = self.code
            if _on == 1:
                pass
            elif _on == 2:
                pass
            elif _on == 4:
                pass
            elif _on == 8:
                pass
            self._dirty = False



