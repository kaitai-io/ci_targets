# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

from pkg_resources import parse_version
import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO
import collections


if parse_version(kaitaistruct.__version__) < parse_version('0.9'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.9 or later is required, but you have %s" % (kaitaistruct.__version__))

class Debug0(KaitaiStruct):
    SEQ_FIELDS = ["one", "array_of_ints", "_unnamed2"]
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._debug = collections.defaultdict(dict)

    def _read(self):
        self._debug['one']['start'] = self._io.pos()
        self.one = self._io.read_u1()
        self._debug['one']['end'] = self._io.pos()
        self._debug['array_of_ints']['start'] = self._io.pos()
        self.array_of_ints = [None] * (3)
        for i in range(3):
            if not 'arr' in self._debug['array_of_ints']:
                self._debug['array_of_ints']['arr'] = []
            self._debug['array_of_ints']['arr'].append({'start': self._io.pos()})
            self.array_of_ints[i] = self._io.read_u1()
            self._debug['array_of_ints']['arr'][i]['end'] = self._io.pos()

        self._debug['array_of_ints']['end'] = self._io.pos()
        self._debug['_unnamed2']['start'] = self._io.pos()
        self._unnamed2 = self._io.read_u1()
        self._debug['_unnamed2']['end'] = self._io.pos()


