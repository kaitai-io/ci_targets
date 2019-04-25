# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

from pkg_resources import parse_version
from kaitaistruct import __version__ as ks_version, KaitaiStruct, KaitaiStream, BytesIO
import collections


if parse_version(ks_version) < parse_version('0.7'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.7 or later is required, but you have %s" % (ks_version))

class DebugArrayUser(KaitaiStruct):
    SEQ_FIELDS = ["one_cat", "array_of_cats"]
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._debug = collections.defaultdict(dict)

    def _read(self):
        self._debug['one_cat']['start'] = self._io.pos()
        self.one_cat = self._root.Cat(self._io, self, self._root)
        self.one_cat._read()
        self._debug['one_cat']['end'] = self._io.pos()
        self._debug['array_of_cats']['start'] = self._io.pos()
        self.array_of_cats = [None] * (3)
        for i in range(3):
            if not 'arr' in self._debug['array_of_cats']:
                self._debug['array_of_cats']['arr'] = []
            self._debug['array_of_cats']['arr'].append({'start': self._io.pos()})
            _t_array_of_cats = self._root.Cat(self._io, self, self._root)
            _t_array_of_cats._read()
            self.array_of_cats[i] = _t_array_of_cats
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



