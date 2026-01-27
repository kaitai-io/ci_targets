# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class RepeatNStrz(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.qty = self._io.read_u4le()
        self.lines = []
        for i in range(self.qty):
            self.lines.append((self._io.read_bytes_term(0, False, True, True)).decode("UTF-8"))

        self._dirty = False


    def _fetch_instances(self):
        pass
        for i in range(len(self.lines)):
            pass



    def _write__seq(self, io=None):
        super()._write__seq(io)
        self._io.write_u4le(self.qty)
        for i in range(len(self.lines)):
            pass
            self._io.write_bytes((self.lines[i]).encode("UTF-8"))
            self._io.write_u1(0)



    def _check(self):
        if len(self.lines) != self.qty:
            raise kaitaistruct.ConsistencyError("lines", self.qty, len(self.lines))
        for i in range(len(self.lines)):
            pass
            if KaitaiStream.byte_array_index_of((self.lines[i]).encode("UTF-8"), 0) != -1:
                raise kaitaistruct.ConsistencyError("lines", -1, KaitaiStream.byte_array_index_of((self.lines[i]).encode("UTF-8"), 0))

        self._dirty = False


