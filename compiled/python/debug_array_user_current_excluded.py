# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO
import collections


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class DebugArrayUserCurrentExcluded(KaitaiStruct):
    SEQ_FIELDS = ["array_of_cats"]
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._debug = collections.defaultdict(dict)

    def _read(self):
        self._debug['array_of_cats']['start'] = self._io.pos()
        self._debug['array_of_cats']['arr'] = []
        self.array_of_cats = []
        for i in range(3):
            self._debug['array_of_cats']['arr'].append({'start': self._io.pos()})
            _t_array_of_cats = DebugArrayUserCurrentExcluded.Cat(self._io, self, self._root)
            try:
                _t_array_of_cats._read()
            finally:
                self.array_of_cats.append(_t_array_of_cats)
            self._debug['array_of_cats']['arr'][i]['end'] = self._io.pos()

        self._debug['array_of_cats']['end'] = self._io.pos()

    class Cat(KaitaiStruct):
        SEQ_FIELDS = ["meow"]
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root
            self._debug = collections.defaultdict(dict)

        def _read(self):
            self._debug['meow']['start'] = self._io.pos()
            self.meow = self._io.read_bytes(3 - len(self._parent.array_of_cats))
            self._debug['meow']['end'] = self._io.pos()



