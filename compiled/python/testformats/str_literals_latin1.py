# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class StrLiteralsLatin1(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.len_parsed = self._io.read_u2le()
        self.parsed = (self._io.read_bytes(self.len_parsed)).decode(u"UTF-8")


    def _fetch_instances(self):
        pass

    @property
    def parsed_eq_literal(self):
        if hasattr(self, '_m_parsed_eq_literal'):
            return self._m_parsed_eq_literal

        self._m_parsed_eq_literal = self.parsed == u"\243"
        return getattr(self, '_m_parsed_eq_literal', None)


