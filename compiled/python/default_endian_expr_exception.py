# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

from pkg_resources import parse_version
from kaitaistruct import __version__ as ks_version, KaitaiStruct, KaitaiStream, BytesIO
import struct


if parse_version(ks_version) < parse_version('0.7'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.7 or later is required, but you have %s" % (ks_version))

class DefaultEndianExprException(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.docs = []
        while not self._io.is_eof():
            self.docs.append(self._root.Doc(self._io, self, self._root))


    class Doc(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self._read()

        def _read(self):
            self.indicator = self._io.read_bytes(2)
            self.main = self._root.Doc.MainObj(self._io, self, self._root)

        class MainObj(KaitaiStruct):
            def __init__(self, _io, _parent=None, _root=None):
                self._io = _io
                self._parent = _parent
                self._root = _root if _root else self
                self._read()

            def _read(self):
                _on = self._parent.indicator
                if _on == struct.pack('2b', 73, 73):
                    self._is_le = True
                elif _on == struct.pack('2b', 77, 77):
                    self._is_le = False

                if self._is_le == True:
                    self._read_le()
                elif self._is_le == False:
                    self._read_be()
                else:
                    raise Exception("Unable to decide endianness")

            def _read_le(self):
                self.some_int = self._io.read_u4le()
                self.some_int_be = self._io.read_u2be()
                self.some_int_le = self._io.read_u2le()

            def _read_be(self):
                self.some_int = self._io.read_u4be()
                self.some_int_be = self._io.read_u2be()
                self.some_int_le = self._io.read_u2le()




