# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

from pkg_resources import parse_version
from kaitaistruct import __version__ as ks_version, KaitaiStruct, KaitaiStream, BytesIO
from my_custom_fx import MyCustomFx
import nested.deeply


if parse_version(ks_version) < parse_version('0.7'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.7 or later is required, but you have %s" % (ks_version))

class ProcessCustom(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self._raw_buf1 = self._io.read_bytes(5)
        _process = MyCustomFx(7, True, b"\x20\x30\x40")
        self.buf1 = _process.decode(self._raw_buf1)
        self._raw_buf2 = self._io.read_bytes(5)
        _process = nested.deeply.CustomFx(7)
        self.buf2 = _process.decode(self._raw_buf2)
        self.key = self._io.read_u1()
        self._raw_buf3 = self._io.read_bytes(5)
        _process = MyCustomFx(self.key, False, b"\x00")
        self.buf3 = _process.decode(self._raw_buf3)


