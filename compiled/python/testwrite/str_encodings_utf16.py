# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class StrEncodingsUtf16(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.len_be = self._io.read_u4le()
        self._raw_be_bom_removed = self._io.read_bytes(self.len_be)
        _io__raw_be_bom_removed = KaitaiStream(BytesIO(self._raw_be_bom_removed))
        self.be_bom_removed = StrEncodingsUtf16.StrBeBomRemoved(_io__raw_be_bom_removed, self, self._root)
        self.be_bom_removed._read()
        self.len_le = self._io.read_u4le()
        self._raw_le_bom_removed = self._io.read_bytes(self.len_le)
        _io__raw_le_bom_removed = KaitaiStream(BytesIO(self._raw_le_bom_removed))
        self.le_bom_removed = StrEncodingsUtf16.StrLeBomRemoved(_io__raw_le_bom_removed, self, self._root)
        self.le_bom_removed._read()
        self._dirty = False


    def _fetch_instances(self):
        pass
        self.be_bom_removed._fetch_instances()
        self.le_bom_removed._fetch_instances()


    def _write__seq(self, io=None):
        super()._write__seq(io)
        self._io.write_u4le(self.len_be)
        _io__raw_be_bom_removed = KaitaiStream(BytesIO(bytes(self.len_be)))
        self._io.add_child_stream(_io__raw_be_bom_removed)
        _pos2 = self._io.pos()
        self._io.seek(self._io.pos() + (self.len_be))
        def handler(parent, _io__raw_be_bom_removed=_io__raw_be_bom_removed):
            self._raw_be_bom_removed = _io__raw_be_bom_removed.to_byte_array()
            if len(self._raw_be_bom_removed) != self.len_be:
                raise kaitaistruct.ConsistencyError("raw(be_bom_removed)", self.len_be, len(self._raw_be_bom_removed))
            parent.write_bytes(self._raw_be_bom_removed)
        _io__raw_be_bom_removed.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
        self.be_bom_removed._write__seq(_io__raw_be_bom_removed)
        self._io.write_u4le(self.len_le)
        _io__raw_le_bom_removed = KaitaiStream(BytesIO(bytes(self.len_le)))
        self._io.add_child_stream(_io__raw_le_bom_removed)
        _pos2 = self._io.pos()
        self._io.seek(self._io.pos() + (self.len_le))
        def handler(parent, _io__raw_le_bom_removed=_io__raw_le_bom_removed):
            self._raw_le_bom_removed = _io__raw_le_bom_removed.to_byte_array()
            if len(self._raw_le_bom_removed) != self.len_le:
                raise kaitaistruct.ConsistencyError("raw(le_bom_removed)", self.len_le, len(self._raw_le_bom_removed))
            parent.write_bytes(self._raw_le_bom_removed)
        _io__raw_le_bom_removed.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
        self.le_bom_removed._write__seq(_io__raw_le_bom_removed)


    def _check(self):
        if self.be_bom_removed._root != self._root:
            raise kaitaistruct.ConsistencyError("be_bom_removed", self._root, self.be_bom_removed._root)
        if self.be_bom_removed._parent != self:
            raise kaitaistruct.ConsistencyError("be_bom_removed", self, self.be_bom_removed._parent)
        if self.le_bom_removed._root != self._root:
            raise kaitaistruct.ConsistencyError("le_bom_removed", self._root, self.le_bom_removed._root)
        if self.le_bom_removed._parent != self:
            raise kaitaistruct.ConsistencyError("le_bom_removed", self, self.le_bom_removed._parent)
        self._dirty = False

    class StrBeBomRemoved(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.bom = self._io.read_u2be()
            self.str = (self._io.read_bytes_full()).decode("UTF-16BE")
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super()._write__seq(io)
            self._io.write_u2be(self.bom)
            self._io.write_bytes((self.str).encode("UTF-16BE"))
            if not self._io.is_eof():
                raise kaitaistruct.ConsistencyError("str", 0, self._io.size() - self._io.pos())


        def _check(self):
            self._dirty = False


    class StrLeBomRemoved(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.bom = self._io.read_u2le()
            self.str = (self._io.read_bytes_full()).decode("UTF-16LE")
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super()._write__seq(io)
            self._io.write_u2le(self.bom)
            self._io.write_bytes((self.str).encode("UTF-16LE"))
            if not self._io.is_eof():
                raise kaitaistruct.ConsistencyError("str", 0, self._io.size() - self._io.pos())


        def _check(self):
            self._dirty = False



