from pkg_resources import parse_version
from kaitaistruct import __version__ as ks_version, KaitaiStruct, KaitaiStream, BytesIO
# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



if parse_version(ks_version) < parse_version('0.7'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.7 or later is required, but you have %s" % (ks_version))

class ProcessRotate(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._raw_buf1 = self._io.read_bytes(5)
        self.buf1 = KaitaiStream.process_rotate_left(self._raw_buf1, 3, 1)
        self._raw_buf2 = self._io.read_bytes(5)
        self.buf2 = KaitaiStream.process_rotate_left(self._raw_buf2, 8 - (3), 1)
        self.key = self._io.read_u1()
        self._raw_buf3 = self._io.read_bytes(5)
        self.buf3 = KaitaiStream.process_rotate_left(self._raw_buf3, self.key, 1)


