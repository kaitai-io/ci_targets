# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class SwitchIntegers(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super(SwitchIntegers, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.opcodes = []
        i = 0
        while not self._io.is_eof():
            self.opcodes.append(SwitchIntegers.Opcode(self._io, self, self._root))
            i += 1



    def _fetch_instances(self):
        pass
        for i in range(len(self.opcodes)):
            pass
            self.opcodes[i]._fetch_instances()


    class Opcode(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(SwitchIntegers.Opcode, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

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



