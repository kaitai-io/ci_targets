# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO
from testwrite import hello_world
from testwrite import cast_to_imported2


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ImportsCastToImported2(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(ImportsCastToImported2, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.hw = hello_world.HelloWorld(self._io)
        self.hw._read()
        self.two = cast_to_imported2.CastToImported2(self.hw, self._io)
        self.two._read()
        self._dirty = False


    def _fetch_instances(self):
        pass
        self.hw._fetch_instances()
        self.two._fetch_instances()


    def _write__seq(self, io=None):
        super(ImportsCastToImported2, self)._write__seq(io)
        self.hw._write__seq(self._io)
        self.two._write__seq(self._io)


    def _check(self):
        if self.two.hw_param != self.hw:
            raise kaitaistruct.ConsistencyError(u"two", self.hw, self.two.hw_param)
        self._dirty = False


