# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO
import collections


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class DebugArrayUserCurrentExcluded(ReadWriteKaitaiStruct):
    SEQ_FIELDS = ["array_of_cats"]
    def __init__(self, _io=None, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self
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


    def _fetch_instances(self):
        pass
        for i in range(len(self.array_of_cats)):
            pass
            self.array_of_cats[i]._fetch_instances()



    def _write__seq(self, io=None):
        super(DebugArrayUserCurrentExcluded, self)._write__seq(io)
        for i in range(len(self.array_of_cats)):
            pass
            self.array_of_cats[i]._write__seq(self._io)



    def _check(self):
        pass
        if len(self.array_of_cats) != 3:
            raise kaitaistruct.ConsistencyError(u"array_of_cats", len(self.array_of_cats), 3)
        for i in range(len(self.array_of_cats)):
            pass
            if self.array_of_cats[i]._root != self._root:
                raise kaitaistruct.ConsistencyError(u"array_of_cats", self.array_of_cats[i]._root, self._root)
            if self.array_of_cats[i]._parent != self:
                raise kaitaistruct.ConsistencyError(u"array_of_cats", self.array_of_cats[i]._parent, self)


    class Cat(ReadWriteKaitaiStruct):
        SEQ_FIELDS = ["meow"]
        def __init__(self, _io=None, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root
            self._debug = collections.defaultdict(dict)

        def _read(self):
            self._debug['meow']['start'] = self._io.pos()
            self.meow = self._io.read_bytes(3 - len(self._parent.array_of_cats))
            self._debug['meow']['end'] = self._io.pos()


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(DebugArrayUserCurrentExcluded.Cat, self)._write__seq(io)
            self._io.write_bytes(self.meow)


        def _check(self):
            pass
            if len(self.meow) != 3 - len(self._parent.array_of_cats):
                raise kaitaistruct.ConsistencyError(u"meow", len(self.meow), 3 - len(self._parent.array_of_cats))



