# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO
import zlib


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class ZlibSurrounded(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.pre = self._io.read_bytes(4)
        self._raw__raw_zlib = self._io.read_bytes(12)
        self._raw_zlib = zlib.decompress(self._raw__raw_zlib)
        self.zlib__inner_size = len(self._raw_zlib)
        _io__raw_zlib = KaitaiStream(BytesIO(self._raw_zlib))
        self.zlib = ZlibSurrounded.Inflated(_io__raw_zlib, self, self._root)
        self.zlib._read()
        self.post = self._io.read_bytes(4)
        self._dirty = False


    def _fetch_instances(self):
        pass
        self.zlib._fetch_instances()


    def _write__seq(self, io=None):
        super()._write__seq(io)
        self._io.write_bytes(self.pre)
        _io__raw_zlib = KaitaiStream(BytesIO(bytes(self.zlib__inner_size)))
        self._io.add_child_stream(_io__raw_zlib)
        _pos2 = self._io.pos()
        self._io.seek(self._io.pos() + (12))
        def handler(parent, _io__raw_zlib=_io__raw_zlib):
            self._raw_zlib = _io__raw_zlib.to_byte_array()
            self._raw__raw_zlib = zlib.compress(self._raw_zlib)
            if len(self._raw__raw_zlib) != 12:
                raise kaitaistruct.ConsistencyError("raw(zlib)", 12, len(self._raw__raw_zlib))
            parent.write_bytes(self._raw__raw_zlib)
        _io__raw_zlib.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
        self.zlib._write__seq(_io__raw_zlib)
        self._io.write_bytes(self.post)


    def _check(self):
        if len(self.pre) != 4:
            raise kaitaistruct.ConsistencyError("pre", 4, len(self.pre))
        if self.zlib._root != self._root:
            raise kaitaistruct.ConsistencyError("zlib", self._root, self.zlib._root)
        if self.zlib._parent != self:
            raise kaitaistruct.ConsistencyError("zlib", self, self.zlib._parent)
        if len(self.post) != 4:
            raise kaitaistruct.ConsistencyError("post", 4, len(self.post))
        self._dirty = False

    class Inflated(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.num = self._io.read_s4le()
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super()._write__seq(io)
            self._io.write_s4le(self.num)


        def _check(self):
            self._dirty = False



