# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class RepeatUntilBytes(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super(RepeatUntilBytes, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.records = []
        i = 0
        while True:
            _ = self._io.read_bytes(5)
            self.records.append(_)
            if KaitaiStream.byte_array_index(_, 0) == 170:
                break
            i += 1


    def _fetch_instances(self):
        pass
        for i in range(len(self.records)):
            pass



