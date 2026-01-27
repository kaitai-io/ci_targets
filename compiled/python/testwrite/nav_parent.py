# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class NavParent(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.header = NavParent.HeaderObj(self._io, self, self._root)
        self.header._read()
        self.index = NavParent.IndexObj(self._io, self, self._root)
        self.index._read()
        self._dirty = False


    def _fetch_instances(self):
        pass
        self.header._fetch_instances()
        self.index._fetch_instances()


    def _write__seq(self, io=None):
        super()._write__seq(io)
        self.header._write__seq(self._io)
        self.index._write__seq(self._io)


    def _check(self):
        if self.header._root != self._root:
            raise kaitaistruct.ConsistencyError("header", self._root, self.header._root)
        if self.header._parent != self:
            raise kaitaistruct.ConsistencyError("header", self, self.header._parent)
        if self.index._root != self._root:
            raise kaitaistruct.ConsistencyError("index", self._root, self.index._root)
        if self.index._parent != self:
            raise kaitaistruct.ConsistencyError("index", self, self.index._parent)
        self._dirty = False

    class Entry(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.filename = (self._io.read_bytes(self._parent._parent.header.filename_len)).decode("UTF-8")
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super()._write__seq(io)
            self._io.write_bytes((self.filename).encode("UTF-8"))


        def _check(self):
            if len((self.filename).encode("UTF-8")) != self._parent._parent.header.filename_len:
                raise kaitaistruct.ConsistencyError("filename", self._parent._parent.header.filename_len, len((self.filename).encode("UTF-8")))
            self._dirty = False


    class HeaderObj(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.qty_entries = self._io.read_u4le()
            self.filename_len = self._io.read_u4le()
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super()._write__seq(io)
            self._io.write_u4le(self.qty_entries)
            self._io.write_u4le(self.filename_len)


        def _check(self):
            self._dirty = False


    class IndexObj(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.magic = self._io.read_bytes(4)
            self.entries = []
            for i in range(self._parent.header.qty_entries):
                _t_entries = NavParent.Entry(self._io, self, self._root)
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
            super()._write__seq(io)
            self._io.write_bytes(self.magic)
            for i in range(len(self.entries)):
                pass
                self.entries[i]._write__seq(self._io)



        def _check(self):
            if len(self.magic) != 4:
                raise kaitaistruct.ConsistencyError("magic", 4, len(self.magic))
            if len(self.entries) != self._parent.header.qty_entries:
                raise kaitaistruct.ConsistencyError("entries", self._parent.header.qty_entries, len(self.entries))
            for i in range(len(self.entries)):
                pass
                if self.entries[i]._root != self._root:
                    raise kaitaistruct.ConsistencyError("entries", self._root, self.entries[i]._root)
                if self.entries[i]._parent != self:
                    raise kaitaistruct.ConsistencyError("entries", self, self.entries[i]._parent)

            self._dirty = False



