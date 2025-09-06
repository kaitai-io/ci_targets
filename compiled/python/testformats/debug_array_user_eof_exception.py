# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO
import collections


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class DebugArrayUserEofException(KaitaiStruct):
    SEQ_FIELDS = ["one_cat", "array_of_cats"]
    def __init__(self, _io, _parent=None, _root=None):
        super(DebugArrayUserEofException, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._debug = collections.defaultdict(dict)

    def _read(self):
        self._debug['one_cat']['start'] = self._io.pos()
        self.one_cat = DebugArrayUserEofException.Cat(self._io, self, self._root)
        self.one_cat._read()
        self._debug['one_cat']['end'] = self._io.pos()
        self._debug['array_of_cats']['start'] = self._io.pos()
        self._debug['array_of_cats']['arr'] = []
        self.array_of_cats = []
        for i in range(3):
            self._debug['array_of_cats']['arr'].append({'start': self._io.pos()})
            _t_array_of_cats = DebugArrayUserEofException.Cat(self._io, self, self._root)
            try:
                _t_array_of_cats._read()
            finally:
                self.array_of_cats.append(_t_array_of_cats)
            self._debug['array_of_cats']['arr'][i]['end'] = self._io.pos()

        self._debug['array_of_cats']['end'] = self._io.pos()


    def _fetch_instances(self):
        pass
        self.one_cat._fetch_instances()
        for i in range(len(self.array_of_cats)):
            pass
            self.array_of_cats[i]._fetch_instances()


    class Cat(KaitaiStruct):
        SEQ_FIELDS = ["meow", "chirp"]
        def __init__(self, _io, _parent=None, _root=None):
            super(DebugArrayUserEofException.Cat, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._debug = collections.defaultdict(dict)

        def _read(self):
            self._debug['meow']['start'] = self._io.pos()
            self.meow = self._io.read_u1()
            self._debug['meow']['end'] = self._io.pos()
            self._debug['chirp']['start'] = self._io.pos()
            self.chirp = self._io.read_u1()
            self._debug['chirp']['end'] = self._io.pos()


        def _fetch_instances(self):
            pass



