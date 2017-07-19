# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

from pkg_resources import parse_version
from kaitaistruct import __version__ as ks_version, KaitaiStruct, KaitaiStream, BytesIO


if parse_version(ks_version) < parse_version('0.7'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.7 or later is required, but you have %s" % (ks_version))

class IfValues(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.codes = [None] * (3)
        for i in range(3):
            self.codes[i] = self._root.Code(self._io, self, self._root)


    class Code(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self._read()

        def _read(self):
            self.opcode = self._io.read_u1()

        @property
        def half_opcode(self):
            if hasattr(self, '_m_half_opcode'):
                return self._m_half_opcode if hasattr(self, '_m_half_opcode') else None

            if (self.opcode % 2) == 0:
                self._m_half_opcode = self.opcode // 2

            return self._m_half_opcode if hasattr(self, '_m_half_opcode') else None



