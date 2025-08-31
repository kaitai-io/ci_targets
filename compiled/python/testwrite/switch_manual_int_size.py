# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class SwitchManualIntSize(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.chunks = []
        i = 0
        while not self._io.is_eof():
            _t_chunks = SwitchManualIntSize.Chunk(self._io, self, self._root)
            try:
                _t_chunks._read()
            finally:
                self.chunks.append(_t_chunks)
            i += 1



    def _fetch_instances(self):
        pass
        for i in range(len(self.chunks)):
            pass
            self.chunks[i]._fetch_instances()



    def _write__seq(self, io=None):
        super(SwitchManualIntSize, self)._write__seq(io)
        for i in range(len(self.chunks)):
            pass
            if self._io.is_eof():
                raise kaitaistruct.ConsistencyError(u"chunks", self._io.size() - self._io.pos(), 0)
            self.chunks[i]._write__seq(self._io)

        if not self._io.is_eof():
            raise kaitaistruct.ConsistencyError(u"chunks", self._io.size() - self._io.pos(), 0)


    def _check(self):
        pass
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
            self.code = self._io.read_u1()
            self.size = self._io.read_u4le()
            _on = self.code
            if _on == 17:
                pass
                self._raw_body = self._io.read_bytes(self.size)
                _io__raw_body = KaitaiStream(BytesIO(self._raw_body))
                self.body = SwitchManualIntSize.Chunk.ChunkMeta(_io__raw_body, self, self._root)
                self.body._read()
            elif _on == 34:
                pass
                self._raw_body = self._io.read_bytes(self.size)
                _io__raw_body = KaitaiStream(BytesIO(self._raw_body))
                self.body = SwitchManualIntSize.Chunk.ChunkDir(_io__raw_body, self, self._root)
                self.body._read()
            else:
                pass
                self.body = self._io.read_bytes(self.size)


        def _fetch_instances(self):
            pass
            _on = self.code
            if _on == 17:
                pass
                self.body._fetch_instances()
            elif _on == 34:
                pass
                self.body._fetch_instances()
            else:
                pass


        def _write__seq(self, io=None):
            super(SwitchManualIntSize.Chunk, self)._write__seq(io)
            self._io.write_u1(self.code)
            self._io.write_u4le(self.size)
            _on = self.code
            if _on == 17:
                pass
                _io__raw_body = KaitaiStream(BytesIO(bytearray(self.size)))
                self._io.add_child_stream(_io__raw_body)
                _pos2 = self._io.pos()
                self._io.seek(self._io.pos() + (self.size))
                def handler(parent, _io__raw_body=_io__raw_body):
                    self._raw_body = _io__raw_body.to_byte_array()
                    if len(self._raw_body) != self.size:
                        raise kaitaistruct.ConsistencyError(u"raw(body)", len(self._raw_body), self.size)
                    parent.write_bytes(self._raw_body)
                _io__raw_body.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
                self.body._write__seq(_io__raw_body)
            elif _on == 34:
                pass
                _io__raw_body = KaitaiStream(BytesIO(bytearray(self.size)))
                self._io.add_child_stream(_io__raw_body)
                _pos2 = self._io.pos()
                self._io.seek(self._io.pos() + (self.size))
                def handler(parent, _io__raw_body=_io__raw_body):
                    self._raw_body = _io__raw_body.to_byte_array()
                    if len(self._raw_body) != self.size:
                        raise kaitaistruct.ConsistencyError(u"raw(body)", len(self._raw_body), self.size)
                    parent.write_bytes(self._raw_body)
                _io__raw_body.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
                self.body._write__seq(_io__raw_body)
            else:
                pass
                self._io.write_bytes(self.body)


        def _check(self):
            pass
            _on = self.code
            if _on == 17:
                pass
                if self.body._root != self._root:
                    raise kaitaistruct.ConsistencyError(u"body", self.body._root, self._root)
                if self.body._parent != self:
                    raise kaitaistruct.ConsistencyError(u"body", self.body._parent, self)
            elif _on == 34:
                pass
                if self.body._root != self._root:
                    raise kaitaistruct.ConsistencyError(u"body", self.body._root, self._root)
                if self.body._parent != self:
                    raise kaitaistruct.ConsistencyError(u"body", self.body._parent, self)
            else:
                pass
                if len(self.body) != self.size:
                    raise kaitaistruct.ConsistencyError(u"body", len(self.body), self.size)

        class ChunkDir(ReadWriteKaitaiStruct):
            def __init__(self, _io=None, _parent=None, _root=None):
                self._io = _io
                self._parent = _parent
                self._root = _root

            def _read(self):
                self.entries = []
                i = 0
                while not self._io.is_eof():
                    self.entries.append((self._io.read_bytes(4)).decode(u"UTF-8"))
                    i += 1



            def _fetch_instances(self):
                pass
                for i in range(len(self.entries)):
                    pass



            def _write__seq(self, io=None):
                super(SwitchManualIntSize.Chunk.ChunkDir, self)._write__seq(io)
                for i in range(len(self.entries)):
                    pass
                    if self._io.is_eof():
                        raise kaitaistruct.ConsistencyError(u"entries", self._io.size() - self._io.pos(), 0)
                    self._io.write_bytes((self.entries[i]).encode(u"UTF-8"))

                if not self._io.is_eof():
                    raise kaitaistruct.ConsistencyError(u"entries", self._io.size() - self._io.pos(), 0)


            def _check(self):
                pass
                for i in range(len(self.entries)):
                    pass
                    if len((self.entries[i]).encode(u"UTF-8")) != 4:
                        raise kaitaistruct.ConsistencyError(u"entries", len((self.entries[i]).encode(u"UTF-8")), 4)



        class ChunkMeta(ReadWriteKaitaiStruct):
            def __init__(self, _io=None, _parent=None, _root=None):
                self._io = _io
                self._parent = _parent
                self._root = _root

            def _read(self):
                self.title = (self._io.read_bytes_term(0, False, True, True)).decode(u"UTF-8")
                self.author = (self._io.read_bytes_term(0, False, True, True)).decode(u"UTF-8")


            def _fetch_instances(self):
                pass


            def _write__seq(self, io=None):
                super(SwitchManualIntSize.Chunk.ChunkMeta, self)._write__seq(io)
                self._io.write_bytes((self.title).encode(u"UTF-8"))
                self._io.write_u1(0)
                self._io.write_bytes((self.author).encode(u"UTF-8"))
                self._io.write_u1(0)


            def _check(self):
                pass
                if KaitaiStream.byte_array_index_of((self.title).encode(u"UTF-8"), 0) != -1:
                    raise kaitaistruct.ConsistencyError(u"title", KaitaiStream.byte_array_index_of((self.title).encode(u"UTF-8"), 0), -1)
                if KaitaiStream.byte_array_index_of((self.author).encode(u"UTF-8"), 0) != -1:
                    raise kaitaistruct.ConsistencyError(u"author", KaitaiStream.byte_array_index_of((self.author).encode(u"UTF-8"), 0), -1)




