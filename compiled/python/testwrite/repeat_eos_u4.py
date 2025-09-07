# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class RepeatEosU4(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(RepeatEosU4, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.numbers = []
        i = 0
        while not self._io.is_eof():
            self.numbers.append(self._io.read_u4le())
            i += 1

        self._dirty = False


    def _fetch_instances(self):
        pass
        for i in range(len(self.numbers)):
            pass



    def _write__seq(self, io=None):
        super(RepeatEosU4, self)._write__seq(io)
        for i in range(len(self.numbers)):
            pass
            if self._io.is_eof():
                raise kaitaistruct.ConsistencyError(u"numbers", 0, self._io.size() - self._io.pos())
            self._io.write_u4le(self.numbers[i])

        if not self._io.is_eof():
            raise kaitaistruct.ConsistencyError(u"numbers", 0, self._io.size() - self._io.pos())


    def _check(self):
        for i in range(len(self.numbers)):
            pass

        self._dirty = False


