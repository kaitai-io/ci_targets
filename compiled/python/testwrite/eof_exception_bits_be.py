# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO
import collections


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class EofExceptionBitsBe(ReadWriteKaitaiStruct):
    SEQ_FIELDS = ["pre_bits", "fail_bits"]
    def __init__(self, _io=None, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self
        self._debug = collections.defaultdict(dict)

    def _read(self):
        self._debug['pre_bits']['start'] = self._io.pos()
        self.pre_bits = self._io.read_bits_int_be(7)
        self._debug['pre_bits']['end'] = self._io.pos()
        self._debug['fail_bits']['start'] = self._io.pos()
        self.fail_bits = self._io.read_bits_int_be(18)
        self._debug['fail_bits']['end'] = self._io.pos()


    def _fetch_instances(self):
        pass


    def _write__seq(self, io=None):
        super(EofExceptionBitsBe, self)._write__seq(io)
        self._io.write_bits_int_be(7, self.pre_bits)
        self._io.write_bits_int_be(18, self.fail_bits)


    def _check(self):
        pass


