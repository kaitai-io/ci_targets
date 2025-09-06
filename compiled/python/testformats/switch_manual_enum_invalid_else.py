# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO
from enum import IntEnum


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class SwitchManualEnumInvalidElse(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super(SwitchManualEnumInvalidElse, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.opcodes = []
        i = 0
        while not self._io.is_eof():
            self.opcodes.append(SwitchManualEnumInvalidElse.Opcode(self._io, self, self._root))
            i += 1



    def _fetch_instances(self):
        pass
        for i in range(len(self.opcodes)):
            pass
            self.opcodes[i]._fetch_instances()


    class Opcode(KaitaiStruct):

        class CodeEnum(IntEnum):
            intval = 73
            strval = 83
        def __init__(self, _io, _parent=None, _root=None):
            super(SwitchManualEnumInvalidElse.Opcode, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.code = KaitaiStream.resolve_enum(SwitchManualEnumInvalidElse.Opcode.CodeEnum, self._io.read_u1())
            _on = self.code
            if _on == SwitchManualEnumInvalidElse.Opcode.CodeEnum.intval:
                pass
                self.body = SwitchManualEnumInvalidElse.Opcode.Intval(self._io, self, self._root)
            elif _on == SwitchManualEnumInvalidElse.Opcode.CodeEnum.strval:
                pass
                self.body = SwitchManualEnumInvalidElse.Opcode.Strval(self._io, self, self._root)
            else:
                pass
                self.body = SwitchManualEnumInvalidElse.Opcode.Defval(self._io, self, self._root)


        def _fetch_instances(self):
            pass
            _on = self.code
            if _on == SwitchManualEnumInvalidElse.Opcode.CodeEnum.intval:
                pass
                self.body._fetch_instances()
            elif _on == SwitchManualEnumInvalidElse.Opcode.CodeEnum.strval:
                pass
                self.body._fetch_instances()
            else:
                pass
                self.body._fetch_instances()

        class Defval(KaitaiStruct):
            def __init__(self, _io, _parent=None, _root=None):
                super(SwitchManualEnumInvalidElse.Opcode.Defval, self).__init__(_io)
                self._parent = _parent
                self._root = _root
                self._read()

            def _read(self):
                pass


            def _fetch_instances(self):
                pass

            @property
            def value(self):
                if hasattr(self, '_m_value'):
                    return self._m_value

                self._m_value = 123
                return getattr(self, '_m_value', None)


        class Intval(KaitaiStruct):
            def __init__(self, _io, _parent=None, _root=None):
                super(SwitchManualEnumInvalidElse.Opcode.Intval, self).__init__(_io)
                self._parent = _parent
                self._root = _root
                self._read()

            def _read(self):
                self.value = self._io.read_u1()


            def _fetch_instances(self):
                pass


        class Strval(KaitaiStruct):
            def __init__(self, _io, _parent=None, _root=None):
                super(SwitchManualEnumInvalidElse.Opcode.Strval, self).__init__(_io)
                self._parent = _parent
                self._root = _root
                self._read()

            def _read(self):
                self.value = (self._io.read_bytes_term(0, False, True, True)).decode(u"ASCII")


            def _fetch_instances(self):
                pass




