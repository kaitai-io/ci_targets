# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO
import collections


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class EofExceptionBitsLe(KaitaiStruct):
    SEQ_FIELDS = ["pre_bits", "fail_bits"]
    def __init__(self, _io, _parent=None, _root=None):
        super(EofExceptionBitsLe, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._debug = collections.defaultdict(dict)

    def _read(self):
        self._debug['pre_bits']['start'] = self._io.pos()
        self.pre_bits = self._io.read_bits_int_le(7)
        self._debug['pre_bits']['end'] = self._io.pos()
        self._debug['fail_bits']['start'] = self._io.pos()
        self.fail_bits = self._io.read_bits_int_le(18)
        self._debug['fail_bits']['end'] = self._io.pos()


    def _fetch_instances(self):
        pass


