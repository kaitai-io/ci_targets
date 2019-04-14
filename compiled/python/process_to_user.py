# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

from pkg_resources import parse_version
from kaitaistruct import __version__ as ks_version, KaitaiStruct, KaitaiStream, BytesIO


if parse_version(ks_version) < parse_version('0.7'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.7 or later is required, but you have %s" % (ks_version))

class ProcessToUser(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self._raw__raw_buf1 = self._io.read_bytes(5)
        self._raw_buf1 = KaitaiStream.process_rotate_left(self._raw__raw_buf1, 3, 1)
        _io__raw_buf1 = KaitaiStream(BytesIO(self._raw_buf1))
        self.buf1 = self._root.JustStr(_io__raw_buf1, self, self._root)

    class JustStr(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self._read()

        def _read(self):
            self.str = (self._io.read_bytes_full()).decode(u"UTF-8")



