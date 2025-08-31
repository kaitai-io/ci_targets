# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class SwitchManualStrElse(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.opcodes = []
        i = 0
        while not self._io.is_eof():
            self.opcodes.append(SwitchManualStrElse.Opcode(self._io, self, self._root))
            i += 1



    def _fetch_instances(self):
        pass
        for i in range(len(self.opcodes)):
            pass
            self.opcodes[i]._fetch_instances()


    class Opcode(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.code = (self._io.read_bytes(1)).decode(u"ASCII")
            _on = self.code
            if _on == u"I":
                pass
                self.body = SwitchManualStrElse.Opcode.Intval(self._io, self, self._root)
            elif _on == u"S":
                pass
                self.body = SwitchManualStrElse.Opcode.Strval(self._io, self, self._root)
            else:
                pass
                self.body = SwitchManualStrElse.Opcode.Noneval(self._io, self, self._root)


        def _fetch_instances(self):
            pass
            _on = self.code
            if _on == u"I":
                pass
                self.body._fetch_instances()
            elif _on == u"S":
                pass
                self.body._fetch_instances()
            else:
                pass
                self.body._fetch_instances()

        class Intval(KaitaiStruct):
            def __init__(self, _io, _parent=None, _root=None):
                self._io = _io
                self._parent = _parent
                self._root = _root
                self._read()

            def _read(self):
                self.value = self._io.read_u1()


            def _fetch_instances(self):
                pass


        class Noneval(KaitaiStruct):
            def __init__(self, _io, _parent=None, _root=None):
                self._io = _io
                self._parent = _parent
                self._root = _root
                self._read()

            def _read(self):
                self.filler = self._io.read_u4le()


            def _fetch_instances(self):
                pass


        class Strval(KaitaiStruct):
            def __init__(self, _io, _parent=None, _root=None):
                self._io = _io
                self._parent = _parent
                self._root = _root
                self._read()

            def _read(self):
                self.value = (self._io.read_bytes_term(0, False, True, True)).decode(u"ASCII")


            def _fetch_instances(self):
                pass




