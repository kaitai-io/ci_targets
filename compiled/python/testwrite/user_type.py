# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class UserType(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.one = UserType.Header(self._io, self, self._root)
        self.one._read()


    def _fetch_instances(self):
        pass
        self.one._fetch_instances()


    def _write__seq(self, io=None):
        super(UserType, self)._write__seq(io)
        self.one._write__seq(self._io)


    def _check(self):
        pass
        if self.one._root != self._root:
            raise kaitaistruct.ConsistencyError(u"one", self.one._root, self._root)
        if self.one._parent != self:
            raise kaitaistruct.ConsistencyError(u"one", self.one._parent, self)

    class Header(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.width = self._io.read_u4le()
            self.height = self._io.read_u4le()


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(UserType.Header, self)._write__seq(io)
            self._io.write_u4le(self.width)
            self._io.write_u4le(self.height)


        def _check(self):
            pass



