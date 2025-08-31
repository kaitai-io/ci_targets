# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO
from testwrite import hello_world
from testwrite import params_def_array_usertype_imported


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ImportsParamsDefArrayUsertypeImported(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.hws = []
        for i in range(2):
            _t_hws = hello_world.HelloWorld(self._io)
            try:
                _t_hws._read()
            finally:
                self.hws.append(_t_hws)

        self.two = params_def_array_usertype_imported.ParamsDefArrayUsertypeImported(self.hws, self._io)
        self.two._read()


    def _fetch_instances(self):
        pass
        for i in range(len(self.hws)):
            pass
            self.hws[i]._fetch_instances()

        self.two._fetch_instances()


    def _write__seq(self, io=None):
        super(ImportsParamsDefArrayUsertypeImported, self)._write__seq(io)
        for i in range(len(self.hws)):
            pass
            self.hws[i]._write__seq(self._io)

        self.two._write__seq(self._io)


    def _check(self):
        pass
        if len(self.hws) != 2:
            raise kaitaistruct.ConsistencyError(u"hws", len(self.hws), 2)
        for i in range(len(self.hws)):
            pass

        if self.two.hws_param != self.hws:
            raise kaitaistruct.ConsistencyError(u"two", self.two.hws_param, self.hws)


