# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO
from custom_fx_no_args import CustomFxNoArgs


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ProcessCustomNoArgs(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(ProcessCustomNoArgs, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self._raw_buf = self._io.read_bytes(5)
        _process = CustomFxNoArgs()
        self.buf = _process.decode(self._raw_buf)
        self._dirty = False


    def _fetch_instances(self):
        pass


    def _write__seq(self, io=None):
        super(ProcessCustomNoArgs, self)._write__seq(io)
        _process_buf = CustomFxNoArgs()
        self._raw_buf = _process_buf.encode(self.buf)
        if len(self._raw_buf) != 5:
            raise kaitaistruct.ConsistencyError(u"buf", len(self._raw_buf), 5)
        self._io.write_bytes(self._raw_buf)


    def _check(self):
        self._dirty = False


