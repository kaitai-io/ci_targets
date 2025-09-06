# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO
from testwrite import params_def_enum_imported
from testwrite import enum_import_seq


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ImportsParamsDefEnumImported(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(ImportsParamsDefEnumImported, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.one = enum_import_seq.EnumImportSeq(self._io)
        self.one._read()
        self.two = params_def_enum_imported.ParamsDefEnumImported(self.one.pet_1, self.one.pet_2, self._io)
        self.two._read()
        self._dirty = False


    def _fetch_instances(self):
        pass
        self.one._fetch_instances()
        self.two._fetch_instances()


    def _write__seq(self, io=None):
        super(ImportsParamsDefEnumImported, self)._write__seq(io)
        self.one._write__seq(self._io)
        self.two._write__seq(self._io)


    def _check(self):
        if self.two.pet_1_param != self.one.pet_1:
            raise kaitaistruct.ConsistencyError(u"two", self.two.pet_1_param, self.one.pet_1)
        if self.two.pet_2_param != self.one.pet_2:
            raise kaitaistruct.ConsistencyError(u"two", self.two.pet_2_param, self.one.pet_2)
        self._dirty = False


