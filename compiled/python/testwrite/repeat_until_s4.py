# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class RepeatUntilS4(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(RepeatUntilS4, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.entries = []
        i = 0
        while True:
            _ = self._io.read_s4le()
            self.entries.append(_)
            if _ == -1:
                break
            i += 1
        self.afterall = (self._io.read_bytes_term(0, False, True, True)).decode(u"ASCII")
        self._dirty = False


    def _fetch_instances(self):
        pass
        for i in range(len(self.entries)):
            pass



    def _write__seq(self, io=None):
        super(RepeatUntilS4, self)._write__seq(io)
        for i in range(len(self.entries)):
            pass
            self._io.write_s4le(self.entries[i])

        self._io.write_bytes((self.afterall).encode(u"ASCII"))
        self._io.write_u1(0)


    def _check(self):
        if len(self.entries) == 0:
            raise kaitaistruct.ConsistencyError(u"entries", 0, len(self.entries))
        for i in range(len(self.entries)):
            pass
            _ = self.entries[i]
            if (_ == -1) != (i == len(self.entries) - 1):
                raise kaitaistruct.ConsistencyError(u"entries", i == len(self.entries) - 1, _ == -1)

        if KaitaiStream.byte_array_index_of((self.afterall).encode(u"ASCII"), 0) != -1:
            raise kaitaistruct.ConsistencyError(u"afterall", -1, KaitaiStream.byte_array_index_of((self.afterall).encode(u"ASCII"), 0))
        self._dirty = False


