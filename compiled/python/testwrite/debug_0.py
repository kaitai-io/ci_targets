# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO
import collections


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class Debug0(ReadWriteKaitaiStruct):
    SEQ_FIELDS = ["one", "array_of_ints", "_unnamed2"]
    def __init__(self, _io=None, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._debug = collections.defaultdict(dict)

    def _read(self):
        self._debug['one']['start'] = self._io.pos()
        self.one = self._io.read_u1()
        self._debug['one']['end'] = self._io.pos()
        self._debug['array_of_ints']['start'] = self._io.pos()
        self._debug['array_of_ints']['arr'] = []
        self.array_of_ints = []
        for i in range(3):
            self._debug['array_of_ints']['arr'].append({'start': self._io.pos()})
            self.array_of_ints.append(self._io.read_u1())
            self._debug['array_of_ints']['arr'][i]['end'] = self._io.pos()

        self._debug['array_of_ints']['end'] = self._io.pos()
        self._debug['_unnamed2']['start'] = self._io.pos()
        self._unnamed2 = self._io.read_u1()
        self._debug['_unnamed2']['end'] = self._io.pos()
        self._dirty = False


    def _fetch_instances(self):
        pass
        for i in range(len(self.array_of_ints)):
            pass



    def _write__seq(self, io=None):
        super()._write__seq(io)
        self._io.write_u1(self.one)
        for i in range(len(self.array_of_ints)):
            pass
            self._io.write_u1(self.array_of_ints[i])

        self._io.write_u1(self._unnamed2)


    def _check(self):
        if len(self.array_of_ints) != 3:
            raise kaitaistruct.ConsistencyError("array_of_ints", 3, len(self.array_of_ints))
        for i in range(len(self.array_of_ints)):
            pass

        self._dirty = False


