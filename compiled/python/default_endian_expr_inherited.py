# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

from pkg_resources import parse_version
from kaitaistruct import __version__ as ks_version, KaitaiStruct, KaitaiStream, BytesIO
import struct


if parse_version(ks_version) < parse_version('0.7'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.7 or later is required, but you have %s" % (ks_version))

class DefaultEndianExprInherited(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.docs = []
        i = 0
        while not self._io.is_eof():
            self.docs.append(self._root.Doc(self._io, self, self._root))
            i += 1


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
                else:
                    self._is_le = False

                if self._is_le == True:
                    self._read_le()
                elif self._is_le == False:
                    self._read_be()
                else:
                    raise Exception("Unable to decide endianness")

            def _read_le(self):
                self.insides = self._root.Doc.MainObj.SubObj(self._io, self, self._root, self._is_le)

            def _read_be(self):
                self.insides = self._root.Doc.MainObj.SubObj(self._io, self, self._root, self._is_le)

            class SubObj(KaitaiStruct):
                def __init__(self, _io, _parent=None, _root=None, _is_le=None):
                    self._io = _io
                    self._parent = _parent
                    self._root = _root if _root else self
                    self._is_le = _is_le
                    self._read()

                def _read(self):

                    if self._is_le == True:
                        self._read_le()
                    elif self._is_le == False:
                        self._read_be()
                    else:
                        raise Exception("Unable to decide endianness")

                def _read_le(self):
                    self.some_int = self._io.read_u4le()
                    self.more = self._root.Doc.MainObj.SubObj.SubsubObj(self._io, self, self._root, self._is_le)

                def _read_be(self):
                    self.some_int = self._io.read_u4be()
                    self.more = self._root.Doc.MainObj.SubObj.SubsubObj(self._io, self, self._root, self._is_le)

                class SubsubObj(KaitaiStruct):
                    def __init__(self, _io, _parent=None, _root=None, _is_le=None):
                        self._io = _io
                        self._parent = _parent
                        self._root = _root if _root else self
                        self._is_le = _is_le
                        self._read()

                    def _read(self):

                        if self._is_le == True:
                            self._read_le()
                        elif self._is_le == False:
                            self._read_be()
                        else:
                            raise Exception("Unable to decide endianness")

                    def _read_le(self):
                        self.some_int1 = self._io.read_u2le()
                        self.some_int2 = self._io.read_u2le()

                    def _read_be(self):
                        self.some_int1 = self._io.read_u2be()
                        self.some_int2 = self._io.read_u2be()

                    @property
                    def some_inst(self):
                        if hasattr(self, '_m_some_inst'):
                            return self._m_some_inst if hasattr(self, '_m_some_inst') else None

                        _pos = self._io.pos()
                        self._io.seek(2)
                        if self._is_le:
                            self._m_some_inst = self._io.read_u4le()
                        else:
                            self._m_some_inst = self._io.read_u4be()
                        self._io.seek(_pos)
                        return self._m_some_inst if hasattr(self, '_m_some_inst') else None






