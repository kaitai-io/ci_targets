# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ValidFailRepeatMaxInt(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(ValidFailRepeatMaxInt, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.foo = []
        i = 0
        while not self._io.is_eof():
            self.foo.append(self._io.read_u1())
            if not self.foo[i] <= 254:
                raise kaitaistruct.ValidationGreaterThanError(254, self.foo[i], self._io, u"/seq/0")
            i += 1

        self._dirty = False


    def _fetch_instances(self):
        pass
        for i in range(len(self.foo)):
            pass



    def _write__seq(self, io=None):
        super(ValidFailRepeatMaxInt, self)._write__seq(io)
        for i in range(len(self.foo)):
            pass
            if self._io.is_eof():
                raise kaitaistruct.ConsistencyError(u"foo", self._io.size() - self._io.pos(), 0)
            self._io.write_u1(self.foo[i])

        if not self._io.is_eof():
            raise kaitaistruct.ConsistencyError(u"foo", self._io.size() - self._io.pos(), 0)


    def _check(self):
        for i in range(len(self.foo)):
            pass
            if not self.foo[i] <= 254:
                raise kaitaistruct.ValidationGreaterThanError(254, self.foo[i], None, u"/seq/0")

        self._dirty = False


