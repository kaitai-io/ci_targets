# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class RepeatNStrz(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.qty = self._io.read_u4le()
        self.lines = []
        for i in range(self.qty):
            self.lines.append((self._io.read_bytes_term(0, False, True, True)).decode(u"UTF-8"))



    def _fetch_instances(self):
        pass
        for i in range(len(self.lines)):
            pass



    def _write__seq(self, io=None):
        super(RepeatNStrz, self)._write__seq(io)
        self._io.write_u4le(self.qty)
        for i in range(len(self.lines)):
            pass
            self._io.write_bytes((self.lines[i]).encode(u"UTF-8"))
            self._io.write_u1(0)



    def _check(self):
        pass
        if len(self.lines) != self.qty:
            raise kaitaistruct.ConsistencyError(u"lines", len(self.lines), self.qty)
        for i in range(len(self.lines)):
            pass
            if KaitaiStream.byte_array_index_of((self.lines[i]).encode(u"UTF-8"), 0) != -1:
                raise kaitaistruct.ConsistencyError(u"lines", KaitaiStream.byte_array_index_of((self.lines[i]).encode(u"UTF-8"), 0), -1)



