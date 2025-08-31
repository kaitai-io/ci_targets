# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class RepeatNStruct(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.qty = self._io.read_u4le()
        self.chunks = []
        for i in range(self.qty):
            _t_chunks = RepeatNStruct.Chunk(self._io, self, self._root)
            try:
                _t_chunks._read()
            finally:
                self.chunks.append(_t_chunks)



    def _fetch_instances(self):
        pass
        for i in range(len(self.chunks)):
            pass
            self.chunks[i]._fetch_instances()



    def _write__seq(self, io=None):
        super(RepeatNStruct, self)._write__seq(io)
        self._io.write_u4le(self.qty)
        for i in range(len(self.chunks)):
            pass
            self.chunks[i]._write__seq(self._io)



    def _check(self):
        pass
        if len(self.chunks) != self.qty:
            raise kaitaistruct.ConsistencyError(u"chunks", len(self.chunks), self.qty)
        for i in range(len(self.chunks)):
            pass
            if self.chunks[i]._root != self._root:
                raise kaitaistruct.ConsistencyError(u"chunks", self.chunks[i]._root, self._root)
            if self.chunks[i]._parent != self:
                raise kaitaistruct.ConsistencyError(u"chunks", self.chunks[i]._parent, self)


    class Chunk(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.offset = self._io.read_u4le()
            self.len = self._io.read_u4le()


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(RepeatNStruct.Chunk, self)._write__seq(io)
            self._io.write_u4le(self.offset)
            self._io.write_u4le(self.len)


        def _check(self):
            pass



