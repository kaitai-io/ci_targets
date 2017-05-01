from pkg_resources import parse_version
from kaitaistruct import __version__ as ks_version, KaitaiStruct, KaitaiStream, BytesIO
# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



if parse_version(ks_version) < parse_version('0.7'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.7 or later is required, but you have %s" % (ks_version))

class SwitchIntegers(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self.opcodes = []
        while not self._io.is_eof():
            self.opcodes.append(self._root.Opcode(self._io, self, self._root))


    class Opcode(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self.code = self._io.read_u1()
            _on = self.code
            if _on == 1:
                self.body = self._io.read_u1()
            elif _on == 2:
                self.body = self._io.read_u2le()
            elif _on == 4:
                self.body = self._io.read_u4le()
            elif _on == 8:
                self.body = self._io.read_u8le()



