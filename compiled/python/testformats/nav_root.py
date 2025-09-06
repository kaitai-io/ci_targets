# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class NavRoot(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super(NavRoot, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.header = NavRoot.HeaderObj(self._io, self, self._root)
        self.index = NavRoot.IndexObj(self._io, self, self._root)


    def _fetch_instances(self):
        pass
        self.header._fetch_instances()
        self.index._fetch_instances()

    class Entry(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(NavRoot.Entry, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.filename = (self._io.read_bytes(self._root.header.filename_len)).decode(u"UTF-8")


        def _fetch_instances(self):
            pass


    class HeaderObj(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(NavRoot.HeaderObj, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.qty_entries = self._io.read_u4le()
            self.filename_len = self._io.read_u4le()


        def _fetch_instances(self):
            pass


    class IndexObj(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(NavRoot.IndexObj, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.magic = self._io.read_bytes(4)
            self.entries = []
            for i in range(self._root.header.qty_entries):
                self.entries.append(NavRoot.Entry(self._io, self, self._root))



        def _fetch_instances(self):
            pass
            for i in range(len(self.entries)):
                pass
                self.entries[i]._fetch_instances()




