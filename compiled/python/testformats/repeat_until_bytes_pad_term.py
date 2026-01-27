# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class RepeatUntilBytesPadTerm(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.records = []
        i = 0
        while True:
            _ = KaitaiStream.bytes_terminate(KaitaiStream.bytes_strip_right(self._io.read_bytes(5), 170), 85, True)
            self.records.append(_)
            if _ == b"\xAA\x55":
                break
            i += 1


    def _fetch_instances(self):
        pass
        for i in range(len(self.records)):
            pass



