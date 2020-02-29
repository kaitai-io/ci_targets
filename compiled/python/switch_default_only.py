# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

from pkg_resources import parse_version
import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if parse_version(kaitaistruct.__version__) < parse_version('0.9'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.9 or later is required, but you have %s" % (kaitaistruct.__version__))

class SwitchDefaultOnly(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.opcode = self._io.read_s1()
        _on = self.opcode
        else:
            self.byte = self._io.read_s1()
        _on = self.opcode
        else:
            self.struct = self._root.Data(self._io, self, self._root)
        _on = self.opcode
        else:
            self._raw_struct_sized = self._io.read_bytes(4)
            _io__raw_struct_sized = KaitaiStream(BytesIO(self._raw_struct_sized))
            self.struct_sized = self._root.Data(_io__raw_struct_sized, self, self._root)

    class Data(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self._read()

        def _read(self):
            self.value = self._io.read_bytes(4)



