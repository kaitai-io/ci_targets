# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class NavRoot(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(NavRoot, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.header = NavRoot.HeaderObj(self._io, self, self._root)
        self.header._read()
        self.index = NavRoot.IndexObj(self._io, self, self._root)
        self.index._read()
        self._dirty = False


    def _fetch_instances(self):
        pass
        self.header._fetch_instances()
        self.index._fetch_instances()


    def _write__seq(self, io=None):
        super(NavRoot, self)._write__seq(io)
        self.header._write__seq(self._io)
        self.index._write__seq(self._io)


    def _check(self):
        if self.header._root != self._root:
            raise kaitaistruct.ConsistencyError(u"header", self._root, self.header._root)
        if self.header._parent != self:
            raise kaitaistruct.ConsistencyError(u"header", self, self.header._parent)
        if self.index._root != self._root:
            raise kaitaistruct.ConsistencyError(u"index", self._root, self.index._root)
        if self.index._parent != self:
            raise kaitaistruct.ConsistencyError(u"index", self, self.index._parent)
        self._dirty = False

    class Entry(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super(NavRoot.Entry, self).__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.filename = (self._io.read_bytes(self._root.header.filename_len)).decode(u"UTF-8")
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(NavRoot.Entry, self)._write__seq(io)
            self._io.write_bytes((self.filename).encode(u"UTF-8"))


        def _check(self):
            if len((self.filename).encode(u"UTF-8")) != self._root.header.filename_len:
                raise kaitaistruct.ConsistencyError(u"filename", self._root.header.filename_len, len((self.filename).encode(u"UTF-8")))
            self._dirty = False


    class HeaderObj(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super(NavRoot.HeaderObj, self).__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.qty_entries = self._io.read_u4le()
            self.filename_len = self._io.read_u4le()
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(NavRoot.HeaderObj, self)._write__seq(io)
            self._io.write_u4le(self.qty_entries)
            self._io.write_u4le(self.filename_len)


        def _check(self):
            self._dirty = False


    class IndexObj(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super(NavRoot.IndexObj, self).__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.magic = self._io.read_bytes(4)
            self.entries = []
            for i in range(self._root.header.qty_entries):
                _t_entries = NavRoot.Entry(self._io, self, self._root)
                try:
                    _t_entries._read()
                finally:
                    self.entries.append(_t_entries)

            self._dirty = False


        def _fetch_instances(self):
            pass
            for i in range(len(self.entries)):
                pass
                self.entries[i]._fetch_instances()



        def _write__seq(self, io=None):
            super(NavRoot.IndexObj, self)._write__seq(io)
            self._io.write_bytes(self.magic)
            for i in range(len(self.entries)):
                pass
                self.entries[i]._write__seq(self._io)



        def _check(self):
            if len(self.magic) != 4:
                raise kaitaistruct.ConsistencyError(u"magic", 4, len(self.magic))
            if len(self.entries) != self._root.header.qty_entries:
                raise kaitaistruct.ConsistencyError(u"entries", self._root.header.qty_entries, len(self.entries))
            for i in range(len(self.entries)):
                pass
                if self.entries[i]._root != self._root:
                    raise kaitaistruct.ConsistencyError(u"entries", self._root, self.entries[i]._root)
                if self.entries[i]._parent != self:
                    raise kaitaistruct.ConsistencyError(u"entries", self, self.entries[i]._parent)

            self._dirty = False



