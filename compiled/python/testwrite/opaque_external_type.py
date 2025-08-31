# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO
from testwrite import hello_world


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class OpaqueExternalType(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.hw = hello_world.HelloWorld(self._io)
        self.hw._read()


    def _fetch_instances(self):
        pass
        self.hw._fetch_instances()


    def _write__seq(self, io=None):
        super(OpaqueExternalType, self)._write__seq(io)
        self.hw._write__seq(self._io)


    def _check(self):
        pass


