# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO
from testformats import params_def_enum_imported
from testformats import enum_import_seq


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ImportsParamsDefEnumImported(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super(ImportsParamsDefEnumImported, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.one = enum_import_seq.EnumImportSeq(self._io)
        self.two = params_def_enum_imported.ParamsDefEnumImported(self.one.pet_1, self.one.pet_2, self._io)


    def _fetch_instances(self):
        pass
        self.one._fetch_instances()
        self.two._fetch_instances()


