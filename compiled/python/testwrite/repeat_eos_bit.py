# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class RepeatEosBit(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(RepeatEosBit, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.nibbles = []
        i = 0
        while not self._io.is_eof():
            self.nibbles.append(self._io.read_bits_int_be(4))
            i += 1

        self._dirty = False


    def _fetch_instances(self):
        pass
        for i in range(len(self.nibbles)):
            pass



    def _write__seq(self, io=None):
        super(RepeatEosBit, self)._write__seq(io)
        for i in range(len(self.nibbles)):
            pass
            if self._io.is_eof():
                raise kaitaistruct.ConsistencyError(u"nibbles", 0, self._io.size() - self._io.pos())
            self._io.write_bits_int_be(4, self.nibbles[i])

        if not self._io.is_eof():
            raise kaitaistruct.ConsistencyError(u"nibbles", 0, self._io.size() - self._io.pos())


    def _check(self):
        for i in range(len(self.nibbles)):
            pass

        self._dirty = False


