# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class RepeatUntilTermBytes(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(RepeatUntilTermBytes, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.records1 = []
        i = 0
        while True:
            _ = self._io.read_bytes_term(170, False, True, True)
            self.records1.append(_)
            if len(_) == 0:
                break
            i += 1
        self.records2 = []
        i = 0
        while True:
            _ = self._io.read_bytes_term(170, True, True, True)
            self.records2.append(_)
            if _ != b"\xAA":
                break
            i += 1
        self.records3 = []
        i = 0
        while True:
            _ = self._io.read_bytes_term(85, False, False, True)
            self.records3.append(_)
            if _ == self.records1[-1]:
                break
            i += 1
        self._dirty = False


    def _fetch_instances(self):
        pass
        for i in range(len(self.records1)):
            pass

        for i in range(len(self.records2)):
            pass

        for i in range(len(self.records3)):
            pass



    def _write__seq(self, io=None):
        super(RepeatUntilTermBytes, self)._write__seq(io)
        for i in range(len(self.records1)):
            pass
            self._io.write_bytes(self.records1[i])
            self._io.write_u1(170)

        for i in range(len(self.records2)):
            pass
            self._io.write_bytes(self.records2[i])

        for i in range(len(self.records3)):
            pass
            self._io.write_bytes(self.records3[i])
            _pos = self._io.pos()
            self._io.write_u1(85)
            self._io.seek(_pos)



    def _check(self):
        if len(self.records1) == 0:
            raise kaitaistruct.ConsistencyError(u"records1", len(self.records1), 0)
        for i in range(len(self.records1)):
            pass
            if KaitaiStream.byte_array_index_of(self.records1[i], 170) != -1:
                raise kaitaistruct.ConsistencyError(u"records1", KaitaiStream.byte_array_index_of(self.records1[i], 170), -1)
            _ = self.records1[i]
            if (len(_) == 0) != (i == len(self.records1) - 1):
                raise kaitaistruct.ConsistencyError(u"records1", len(_) == 0, i == len(self.records1) - 1)

        if len(self.records2) == 0:
            raise kaitaistruct.ConsistencyError(u"records2", len(self.records2), 0)
        for i in range(len(self.records2)):
            pass
            if len(self.records2[i]) == 0:
                raise kaitaistruct.ConsistencyError(u"records2", len(self.records2[i]), 0)
            if KaitaiStream.byte_array_index_of(self.records2[i], 170) != len(self.records2[i]) - 1:
                raise kaitaistruct.ConsistencyError(u"records2", KaitaiStream.byte_array_index_of(self.records2[i], 170), len(self.records2[i]) - 1)
            _ = self.records2[i]
            if (_ != b"\xAA") != (i == len(self.records2) - 1):
                raise kaitaistruct.ConsistencyError(u"records2", _ != b"\xAA", i == len(self.records2) - 1)

        if len(self.records3) == 0:
            raise kaitaistruct.ConsistencyError(u"records3", len(self.records3), 0)
        for i in range(len(self.records3)):
            pass
            if KaitaiStream.byte_array_index_of(self.records3[i], 85) != -1:
                raise kaitaistruct.ConsistencyError(u"records3", KaitaiStream.byte_array_index_of(self.records3[i], 85), -1)
            _ = self.records3[i]
            if (_ == self.records1[-1]) != (i == len(self.records3) - 1):
                raise kaitaistruct.ConsistencyError(u"records3", _ == self.records1[-1], i == len(self.records3) - 1)

        self._dirty = False


