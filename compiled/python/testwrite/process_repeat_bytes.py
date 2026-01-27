# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class ProcessRepeatBytes(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self._raw_bufs = []
        self.bufs = []
        for i in range(2):
            self._raw_bufs.append(self._io.read_bytes(5))
            self.bufs.append(KaitaiStream.process_xor_one(self._raw_bufs[i], 158))

        self._dirty = False


    def _fetch_instances(self):
        pass
        for i in range(len(self.bufs)):
            pass



    def _write__seq(self, io=None):
        super()._write__seq(io)
        self._raw_bufs = []
        for i in range(len(self.bufs)):
            pass
            self._raw_bufs.append(KaitaiStream.process_xor_one(self.bufs[i], 158))
            if len(self._raw_bufs[i]) != 5:
                raise kaitaistruct.ConsistencyError("bufs", 5, len(self._raw_bufs[i]))
            self._io.write_bytes(self._raw_bufs[i])



    def _check(self):
        if len(self.bufs) != 2:
            raise kaitaistruct.ConsistencyError("bufs", 2, len(self.bufs))
        for i in range(len(self.bufs)):
            pass

        self._dirty = False


