# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import array
import struct
import zlib
from enum import Enum
from pkg_resources import parse_version

from kaitaistruct import __version__ as ks_version, KaitaiStruct, KaitaiStream, BytesIO


if parse_version(ks_version) < parse_version('0.7'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.7 or later is required, but you have %s" % (ks_version))

class InstanceIoUser(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self.qty_entries = self._io.read_u4le()
        self.entries = [None] * (self.qty_entries)
        for i in range(self.qty_entries):
            self.entries[i] = self._root.Entry(self._io, self, self._root)

        self._raw_strings = self._io.read_bytes_full()
        io = KaitaiStream(BytesIO(self._raw_strings))
        self.strings = self._root.StringsObj(io, self, self._root)

    class Entry(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self.name_ofs = self._io.read_u4le()
            self.value = self._io.read_u4le()

        @property
        def name(self):
            if hasattr(self, '_m_name'):
                return self._m_name if hasattr(self, '_m_name') else None

            io = self._root.strings._io
            _pos = io.pos()
            io.seek(self.name_ofs)
            self._m_name = (io.read_bytes_term(0, False, True, True)).decode(u"UTF-8")
            io.seek(_pos)
            return self._m_name if hasattr(self, '_m_name') else None


    class StringsObj(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self.str = []
            while not self._io.is_eof():
                self.str.append((self._io.read_bytes_term(0, False, True, True)).decode(u"UTF-8"))




