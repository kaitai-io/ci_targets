# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO
from my_custom_fx import MyCustomFx
import nested.deeply


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class ProcessCustom(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self._raw_buf1 = self._io.read_bytes(5)
        _process = MyCustomFx(7, True, b"\x20\x30\x40")
        self.buf1 = _process.decode(self._raw_buf1)
        self._raw_buf2 = self._io.read_bytes(5)
        _process = nested.deeply.CustomFx(7)
        self.buf2 = _process.decode(self._raw_buf2)
        self.key = self._io.read_u1()
        self._raw_buf3 = self._io.read_bytes(5)
        _process = MyCustomFx(self.key, False, b"\x00")
        self.buf3 = _process.decode(self._raw_buf3)
        self._dirty = False


    def _fetch_instances(self):
        pass


    def _write__seq(self, io=None):
        super()._write__seq(io)
        _process_buf1 = MyCustomFx(7, True, b"\x20\x30\x40")
        self._raw_buf1 = _process_buf1.encode(self.buf1)
        if len(self._raw_buf1) != 5:
            raise kaitaistruct.ConsistencyError("buf1", 5, len(self._raw_buf1))
        self._io.write_bytes(self._raw_buf1)
        _process_buf2 = nested.deeply.CustomFx(7)
        self._raw_buf2 = _process_buf2.encode(self.buf2)
        if len(self._raw_buf2) != 5:
            raise kaitaistruct.ConsistencyError("buf2", 5, len(self._raw_buf2))
        self._io.write_bytes(self._raw_buf2)
        self._io.write_u1(self.key)
        _process_buf3 = MyCustomFx(self.key, False, b"\x00")
        self._raw_buf3 = _process_buf3.encode(self.buf3)
        if len(self._raw_buf3) != 5:
            raise kaitaistruct.ConsistencyError("buf3", 5, len(self._raw_buf3))
        self._io.write_bytes(self._raw_buf3)


    def _check(self):
        self._dirty = False


