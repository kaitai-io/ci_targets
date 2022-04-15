# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 9):
    raise Exception("Incompatible Kaitai Struct Python API: 0.9 or later is required, but you have %s" % (kaitaistruct.__version__))

class InstanceIoUser(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.qty_entries = self._io.read_u4le()
        self.entries = []
        for i in range(self.qty_entries):
            self.entries.append(InstanceIoUser.Entry(self._io, self, self._root))

        self._raw_strings = self._io.read_bytes_full()
        _io__raw_strings = KaitaiStream(BytesIO(self._raw_strings))
        self.strings = InstanceIoUser.StringsObj(_io__raw_strings, self, self._root)

    class Entry(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self._read()

        def _read(self):
            self.name_ofs = self._io.read_u4le()
            self.value = self._io.read_u4le()

        @property
        def name(self):
            if hasattr(self, '_m_name'):
                return self._m_name

            io = self._root.strings._io
            _pos = io.pos()
            io.seek(self.name_ofs)
            self._m_name = (io.read_bytes_term(0, False, True, True)).decode(u"UTF-8")
            io.seek(_pos)
            return getattr(self, '_m_name', None)


    class StringsObj(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self._read()

        def _read(self):
            self.str = []
            i = 0
            while not self._io.is_eof():
                self.str.append((self._io.read_bytes_term(0, False, True, True)).decode(u"UTF-8"))
                i += 1




