from pkg_resources import parse_version
from kaitaistruct import __version__ as ks_version, KaitaiStruct, KaitaiStream, BytesIO
# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



if parse_version(ks_version) < parse_version('0.7'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.7 or later is required, but you have %s" % (ks_version))

class MultipleUse(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.t1 = self._root.Type1(self._io, self, self._root)
        self.t2 = self._root.Type2(self._io, self, self._root)

    class Multi(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self._read()

        def _read(self):
            self.value = self._io.read_s4le()


    class Type1(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self._read()

        def _read(self):
            self.first_use = self._root.Multi(self._io, self, self._root)


    class Type2(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self._read()

        def _read(self):
            pass

        @property
        def second_use(self):
            if hasattr(self, '_m_second_use'):
                return self._m_second_use if hasattr(self, '_m_second_use') else None

            _pos = self._io.pos()
            self._io.seek(0)
            self._m_second_use = self._root.Multi(self._io, self, self._root)
            self._io.seek(_pos)
            return self._m_second_use if hasattr(self, '_m_second_use') else None



