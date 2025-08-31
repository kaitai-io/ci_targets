# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class RepeatNTermBytes(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.records1 = []
        for i in range(2):
            self.records1.append(self._io.read_bytes_term(170, False, True, True))

        self.records2 = []
        for i in range(2):
            self.records2.append(self._io.read_bytes_term(170, True, True, True))

        self.records3 = []
        for i in range(2):
            self.records3.append(self._io.read_bytes_term(85, False, False, True))



    def _fetch_instances(self):
        pass
        for i in range(len(self.records1)):
            pass

        for i in range(len(self.records2)):
            pass

        for i in range(len(self.records3)):
            pass



    def _write__seq(self, io=None):
        super(RepeatNTermBytes, self)._write__seq(io)
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
        pass
        if len(self.records1) != 2:
            raise kaitaistruct.ConsistencyError(u"records1", len(self.records1), 2)
        for i in range(len(self.records1)):
            pass
            if KaitaiStream.byte_array_index_of(self.records1[i], 170) != -1:
                raise kaitaistruct.ConsistencyError(u"records1", KaitaiStream.byte_array_index_of(self.records1[i], 170), -1)

        if len(self.records2) != 2:
            raise kaitaistruct.ConsistencyError(u"records2", len(self.records2), 2)
        for i in range(len(self.records2)):
            pass
            if len(self.records2[i]) == 0:
                raise kaitaistruct.ConsistencyError(u"records2", len(self.records2[i]), 0)
            if KaitaiStream.byte_array_index_of(self.records2[i], 170) != len(self.records2[i]) - 1:
                raise kaitaistruct.ConsistencyError(u"records2", KaitaiStream.byte_array_index_of(self.records2[i], 170), len(self.records2[i]) - 1)

        if len(self.records3) != 2:
            raise kaitaistruct.ConsistencyError(u"records3", len(self.records3), 2)
        for i in range(len(self.records3)):
            pass
            if KaitaiStream.byte_array_index_of(self.records3[i], 85) != -1:
                raise kaitaistruct.ConsistencyError(u"records3", KaitaiStream.byte_array_index_of(self.records3[i], 85), -1)



