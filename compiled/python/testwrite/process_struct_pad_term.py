# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ProcessStructPadTerm(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self._raw__raw_str_pad = KaitaiStream.bytes_strip_right(self._io.read_bytes(20), 64)
        self._raw_str_pad = KaitaiStream.process_xor_one(self._raw__raw_str_pad, 21)
        self.str_pad__inner_size = len(self._raw_str_pad)
        _io__raw_str_pad = KaitaiStream(BytesIO(self._raw_str_pad))
        self.str_pad = ProcessStructPadTerm.BytesWrapper(_io__raw_str_pad, self, self._root)
        self.str_pad._read()
        self._raw__raw_str_term = KaitaiStream.bytes_terminate(self._io.read_bytes(20), 64, False)
        self._raw_str_term = KaitaiStream.process_xor_one(self._raw__raw_str_term, 21)
        self.str_term__inner_size = len(self._raw_str_term)
        _io__raw_str_term = KaitaiStream(BytesIO(self._raw_str_term))
        self.str_term = ProcessStructPadTerm.BytesWrapper(_io__raw_str_term, self, self._root)
        self.str_term._read()
        self._raw__raw_str_term_and_pad = KaitaiStream.bytes_terminate(KaitaiStream.bytes_strip_right(self._io.read_bytes(20), 43), 64, False)
        self._raw_str_term_and_pad = KaitaiStream.process_xor_one(self._raw__raw_str_term_and_pad, 21)
        self.str_term_and_pad__inner_size = len(self._raw_str_term_and_pad)
        _io__raw_str_term_and_pad = KaitaiStream(BytesIO(self._raw_str_term_and_pad))
        self.str_term_and_pad = ProcessStructPadTerm.BytesWrapper(_io__raw_str_term_and_pad, self, self._root)
        self.str_term_and_pad._read()
        self._raw__raw_str_term_include = KaitaiStream.bytes_terminate(self._io.read_bytes(20), 64, True)
        self._raw_str_term_include = KaitaiStream.process_xor_one(self._raw__raw_str_term_include, 21)
        self.str_term_include__inner_size = len(self._raw_str_term_include)
        _io__raw_str_term_include = KaitaiStream(BytesIO(self._raw_str_term_include))
        self.str_term_include = ProcessStructPadTerm.BytesWrapper(_io__raw_str_term_include, self, self._root)
        self.str_term_include._read()


    def _fetch_instances(self):
        pass
        self.str_pad._fetch_instances()
        self.str_term._fetch_instances()
        self.str_term_and_pad._fetch_instances()
        self.str_term_include._fetch_instances()


    def _write__seq(self, io=None):
        super(ProcessStructPadTerm, self)._write__seq(io)
        _io__raw_str_pad = KaitaiStream(BytesIO(bytearray(self.str_pad__inner_size)))
        self._io.add_child_stream(_io__raw_str_pad)
        _pos2 = self._io.pos()
        self._io.seek(self._io.pos() + (20))
        _process_val = 21
        def handler(parent, _io__raw_str_pad=_io__raw_str_pad, _process_val=_process_val):
            self._raw_str_pad = _io__raw_str_pad.to_byte_array()
            self._raw__raw_str_pad = KaitaiStream.process_xor_one(self._raw_str_pad, _process_val)
            if len(self._raw__raw_str_pad) > 20:
                raise kaitaistruct.ConsistencyError(u"raw(str_pad)", len(self._raw__raw_str_pad), 20)
            if  ((len(self._raw__raw_str_pad) != 0) and (KaitaiStream.byte_array_index(self._raw__raw_str_pad, -1) == 64)) :
                raise kaitaistruct.ConsistencyError(u"raw(str_pad)", KaitaiStream.byte_array_index(self._raw__raw_str_pad, -1), 64)
            parent.write_bytes_limit(self._raw__raw_str_pad, 20, 64, 64)
        _io__raw_str_pad.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
        self.str_pad._write__seq(_io__raw_str_pad)
        _io__raw_str_term = KaitaiStream(BytesIO(bytearray(self.str_term__inner_size)))
        self._io.add_child_stream(_io__raw_str_term)
        _pos2 = self._io.pos()
        self._io.seek(self._io.pos() + (20))
        _process_val = 21
        def handler(parent, _io__raw_str_term=_io__raw_str_term, _process_val=_process_val):
            self._raw_str_term = _io__raw_str_term.to_byte_array()
            self._raw__raw_str_term = KaitaiStream.process_xor_one(self._raw_str_term, _process_val)
            if len(self._raw__raw_str_term) > 20:
                raise kaitaistruct.ConsistencyError(u"raw(str_term)", len(self._raw__raw_str_term), 20)
            if KaitaiStream.byte_array_index_of(self._raw__raw_str_term, 64) != -1:
                raise kaitaistruct.ConsistencyError(u"raw(str_term)", KaitaiStream.byte_array_index_of(self._raw__raw_str_term, 64), -1)
            parent.write_bytes_limit(self._raw__raw_str_term, 20, 64, 0)
        _io__raw_str_term.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
        self.str_term._write__seq(_io__raw_str_term)
        _io__raw_str_term_and_pad = KaitaiStream(BytesIO(bytearray(self.str_term_and_pad__inner_size)))
        self._io.add_child_stream(_io__raw_str_term_and_pad)
        _pos2 = self._io.pos()
        self._io.seek(self._io.pos() + (20))
        _process_val = 21
        def handler(parent, _io__raw_str_term_and_pad=_io__raw_str_term_and_pad, _process_val=_process_val):
            self._raw_str_term_and_pad = _io__raw_str_term_and_pad.to_byte_array()
            self._raw__raw_str_term_and_pad = KaitaiStream.process_xor_one(self._raw_str_term_and_pad, _process_val)
            if len(self._raw__raw_str_term_and_pad) > 20:
                raise kaitaistruct.ConsistencyError(u"raw(str_term_and_pad)", len(self._raw__raw_str_term_and_pad), 20)
            if KaitaiStream.byte_array_index_of(self._raw__raw_str_term_and_pad, 64) != -1:
                raise kaitaistruct.ConsistencyError(u"raw(str_term_and_pad)", KaitaiStream.byte_array_index_of(self._raw__raw_str_term_and_pad, 64), -1)
            if len(self._raw__raw_str_term_and_pad) == 20:
                pass
                if  ((len(self._raw__raw_str_term_and_pad) != 0) and (KaitaiStream.byte_array_index(self._raw__raw_str_term_and_pad, -1) == 43)) :
                    raise kaitaistruct.ConsistencyError(u"raw(str_term_and_pad)", KaitaiStream.byte_array_index(self._raw__raw_str_term_and_pad, -1), 43)

            parent.write_bytes_limit(self._raw__raw_str_term_and_pad, 20, 64, 43)
        _io__raw_str_term_and_pad.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
        self.str_term_and_pad._write__seq(_io__raw_str_term_and_pad)
        _io__raw_str_term_include = KaitaiStream(BytesIO(bytearray(self.str_term_include__inner_size)))
        self._io.add_child_stream(_io__raw_str_term_include)
        _pos2 = self._io.pos()
        self._io.seek(self._io.pos() + (20))
        _process_val = 21
        def handler(parent, _io__raw_str_term_include=_io__raw_str_term_include, _process_val=_process_val):
            self._raw_str_term_include = _io__raw_str_term_include.to_byte_array()
            self._raw__raw_str_term_include = KaitaiStream.process_xor_one(self._raw_str_term_include, _process_val)
            if len(self._raw__raw_str_term_include) > 20:
                raise kaitaistruct.ConsistencyError(u"raw(str_term_include)", len(self._raw__raw_str_term_include), 20)
            if len(self._raw__raw_str_term_include) < 20:
                pass
                if len(self._raw__raw_str_term_include) == 0:
                    raise kaitaistruct.ConsistencyError(u"raw(str_term_include)", len(self._raw__raw_str_term_include), 0)
                if KaitaiStream.byte_array_index_of(self._raw__raw_str_term_include, 64) != len(self._raw__raw_str_term_include) - 1:
                    raise kaitaistruct.ConsistencyError(u"raw(str_term_include)", KaitaiStream.byte_array_index_of(self._raw__raw_str_term_include, 64), len(self._raw__raw_str_term_include) - 1)

            if len(self._raw__raw_str_term_include) == 20:
                pass
                if  ((KaitaiStream.byte_array_index_of(self._raw__raw_str_term_include, 64) != -1) and (KaitaiStream.byte_array_index_of(self._raw__raw_str_term_include, 64) != len(self._raw__raw_str_term_include) - 1)) :
                    raise kaitaistruct.ConsistencyError(u"raw(str_term_include)", KaitaiStream.byte_array_index_of(self._raw__raw_str_term_include, 64), len(self._raw__raw_str_term_include) - 1)

            parent.write_bytes_limit(self._raw__raw_str_term_include, 20, 0, 0)
        _io__raw_str_term_include.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
        self.str_term_include._write__seq(_io__raw_str_term_include)


    def _check(self):
        pass
        if self.str_pad._root != self._root:
            raise kaitaistruct.ConsistencyError(u"str_pad", self.str_pad._root, self._root)
        if self.str_pad._parent != self:
            raise kaitaistruct.ConsistencyError(u"str_pad", self.str_pad._parent, self)
        if self.str_term._root != self._root:
            raise kaitaistruct.ConsistencyError(u"str_term", self.str_term._root, self._root)
        if self.str_term._parent != self:
            raise kaitaistruct.ConsistencyError(u"str_term", self.str_term._parent, self)
        if self.str_term_and_pad._root != self._root:
            raise kaitaistruct.ConsistencyError(u"str_term_and_pad", self.str_term_and_pad._root, self._root)
        if self.str_term_and_pad._parent != self:
            raise kaitaistruct.ConsistencyError(u"str_term_and_pad", self.str_term_and_pad._parent, self)
        if self.str_term_include._root != self._root:
            raise kaitaistruct.ConsistencyError(u"str_term_include", self.str_term_include._root, self._root)
        if self.str_term_include._parent != self:
            raise kaitaistruct.ConsistencyError(u"str_term_include", self.str_term_include._parent, self)

    class BytesWrapper(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.value = self._io.read_bytes_full()


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(ProcessStructPadTerm.BytesWrapper, self)._write__seq(io)
            self._io.write_bytes(self.value)
            if not self._io.is_eof():
                raise kaitaistruct.ConsistencyError(u"value", self._io.size() - self._io.pos(), 0)


        def _check(self):
            pass



