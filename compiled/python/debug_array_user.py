# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO
import collections


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 9):
    raise Exception("Incompatible Kaitai Struct Python API: 0.9 or later is required, but you have %s" % (kaitaistruct.__version__))

class DebugArrayUser(KaitaiStruct):
    SEQ_FIELDS = ["one_cat", "array_of_cats"]
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._debug = collections.defaultdict(dict)

    def _read(self):
        self._debug['one_cat']['start'] = self._io.pos()
        self.one_cat = DebugArrayUser.Cat(self._io, self, self._root)
        self.one_cat._read()
        self._debug['one_cat']['end'] = self._io.pos()
        self._debug['array_of_cats']['start'] = self._io.pos()
        self.array_of_cats = []
        for i in range(3):
            if not 'arr' in self._debug['array_of_cats']:
                self._debug['array_of_cats']['arr'] = []
            self._debug['array_of_cats']['arr'].append({'start': self._io.pos()})
            _t_array_of_cats = DebugArrayUser.Cat(self._io, self, self._root)
            _t_array_of_cats._read()
            self.array_of_cats.append(_t_array_of_cats)
            self._debug['array_of_cats']['arr'][i]['end'] = self._io.pos()

        self._debug['array_of_cats']['end'] = self._io.pos()

    class Cat(KaitaiStruct):
        SEQ_FIELDS = ["meow"]
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self._debug = collections.defaultdict(dict)

        def _read(self):
            self._debug['meow']['start'] = self._io.pos()
            self.meow = self._io.read_u1()
            self._debug['meow']['end'] = self._io.pos()



