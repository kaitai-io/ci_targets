from pkg_resources import parse_version
from kaitaistruct import __version__ as ks_version, KaitaiStruct, KaitaiStream, BytesIO
# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



if parse_version(ks_version) < parse_version('0.7'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.7 or later is required, but you have %s" % (ks_version))

class StrEncodingsDefault(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self.len_of_1 = self._io.read_u2le()
        self.str1 = (self._io.read_bytes(self.len_of_1)).decode(u"UTF-8")
        self.rest = self._root.Subtype(self._io, self, self._root)

    class Subtype(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self.len_of_2 = self._io.read_u2le()
            self.str2 = (self._io.read_bytes(self.len_of_2)).decode(u"UTF-8")
            self.len_of_3 = self._io.read_u2le()
            self.str3 = (self._io.read_bytes(self.len_of_3)).decode(u"SJIS")
            self.len_of_4 = self._io.read_u2le()
            self.str4 = (self._io.read_bytes(self.len_of_4)).decode(u"CP437")



