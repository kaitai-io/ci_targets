# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class BytesEosPadTerm(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self._raw_str_pad = self._io.read_bytes(20)
        _io__raw_str_pad = KaitaiStream(BytesIO(self._raw_str_pad))
        self.str_pad = BytesEosPadTerm.StrPadType(_io__raw_str_pad, self, self._root)
        self.str_pad._read()
        self._raw_str_term = self._io.read_bytes(20)
        _io__raw_str_term = KaitaiStream(BytesIO(self._raw_str_term))
        self.str_term = BytesEosPadTerm.StrTermType(_io__raw_str_term, self, self._root)
        self.str_term._read()
        self._raw_str_term_and_pad = self._io.read_bytes(20)
        _io__raw_str_term_and_pad = KaitaiStream(BytesIO(self._raw_str_term_and_pad))
        self.str_term_and_pad = BytesEosPadTerm.StrTermAndPadType(_io__raw_str_term_and_pad, self, self._root)
        self.str_term_and_pad._read()
        self._raw_str_term_include = self._io.read_bytes(20)
        _io__raw_str_term_include = KaitaiStream(BytesIO(self._raw_str_term_include))
        self.str_term_include = BytesEosPadTerm.StrTermIncludeType(_io__raw_str_term_include, self, self._root)
        self.str_term_include._read()


    def _fetch_instances(self):
        pass
        self.str_pad._fetch_instances()
        self.str_term._fetch_instances()
        self.str_term_and_pad._fetch_instances()
        self.str_term_include._fetch_instances()


    def _write__seq(self, io=None):
        super(BytesEosPadTerm, self)._write__seq(io)
        _io__raw_str_pad = KaitaiStream(BytesIO(bytearray(20)))
        self._io.add_child_stream(_io__raw_str_pad)
        _pos2 = self._io.pos()
        self._io.seek(self._io.pos() + (20))
        def handler(parent, _io__raw_str_pad=_io__raw_str_pad):
            self._raw_str_pad = _io__raw_str_pad.to_byte_array()
            if len(self._raw_str_pad) != 20:
                raise kaitaistruct.ConsistencyError(u"raw(str_pad)", len(self._raw_str_pad), 20)
            parent.write_bytes(self._raw_str_pad)
        _io__raw_str_pad.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
        self.str_pad._write__seq(_io__raw_str_pad)
        _io__raw_str_term = KaitaiStream(BytesIO(bytearray(20)))
        self._io.add_child_stream(_io__raw_str_term)
        _pos2 = self._io.pos()
        self._io.seek(self._io.pos() + (20))
        def handler(parent, _io__raw_str_term=_io__raw_str_term):
            self._raw_str_term = _io__raw_str_term.to_byte_array()
            if len(self._raw_str_term) != 20:
                raise kaitaistruct.ConsistencyError(u"raw(str_term)", len(self._raw_str_term), 20)
            parent.write_bytes(self._raw_str_term)
        _io__raw_str_term.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
        self.str_term._write__seq(_io__raw_str_term)
        _io__raw_str_term_and_pad = KaitaiStream(BytesIO(bytearray(20)))
        self._io.add_child_stream(_io__raw_str_term_and_pad)
        _pos2 = self._io.pos()
        self._io.seek(self._io.pos() + (20))
        def handler(parent, _io__raw_str_term_and_pad=_io__raw_str_term_and_pad):
            self._raw_str_term_and_pad = _io__raw_str_term_and_pad.to_byte_array()
            if len(self._raw_str_term_and_pad) != 20:
                raise kaitaistruct.ConsistencyError(u"raw(str_term_and_pad)", len(self._raw_str_term_and_pad), 20)
            parent.write_bytes(self._raw_str_term_and_pad)
        _io__raw_str_term_and_pad.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
        self.str_term_and_pad._write__seq(_io__raw_str_term_and_pad)
        _io__raw_str_term_include = KaitaiStream(BytesIO(bytearray(20)))
        self._io.add_child_stream(_io__raw_str_term_include)
        _pos2 = self._io.pos()
        self._io.seek(self._io.pos() + (20))
        def handler(parent, _io__raw_str_term_include=_io__raw_str_term_include):
            self._raw_str_term_include = _io__raw_str_term_include.to_byte_array()
            if len(self._raw_str_term_include) != 20:
                raise kaitaistruct.ConsistencyError(u"raw(str_term_include)", len(self._raw_str_term_include), 20)
            parent.write_bytes(self._raw_str_term_include)
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

    class StrPadType(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.value = KaitaiStream.bytes_strip_right(self._io.read_bytes_full(), 64)


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(BytesEosPadTerm.StrPadType, self)._write__seq(io)
            self._io.write_bytes_limit(self.value, self._io.size() - self._io.pos(), 64, 64)
            if not self._io.is_eof():
                raise kaitaistruct.ConsistencyError(u"value", self._io.size() - self._io.pos(), 0)


        def _check(self):
            pass


    class StrTermAndPadType(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.value = KaitaiStream.bytes_terminate(KaitaiStream.bytes_strip_right(self._io.read_bytes_full(), 43), 64, False)


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(BytesEosPadTerm.StrTermAndPadType, self)._write__seq(io)
            self._io.write_bytes_limit(self.value, self._io.size() - self._io.pos(), 64, 43)
            if not self._io.is_eof():
                raise kaitaistruct.ConsistencyError(u"value", self._io.size() - self._io.pos(), 0)


        def _check(self):
            pass


    class StrTermIncludeType(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.value = KaitaiStream.bytes_terminate(self._io.read_bytes_full(), 64, True)


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(BytesEosPadTerm.StrTermIncludeType, self)._write__seq(io)
            self._io.write_bytes_limit(self.value, self._io.size() - self._io.pos(), 0, 0)
            if not self._io.is_eof():
                raise kaitaistruct.ConsistencyError(u"value", self._io.size() - self._io.pos(), 0)


        def _check(self):
            pass


    class StrTermType(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.value = KaitaiStream.bytes_terminate(self._io.read_bytes_full(), 64, False)


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(BytesEosPadTerm.StrTermType, self)._write__seq(io)
            self._io.write_bytes_limit(self.value, self._io.size() - self._io.pos(), 64, 0)
            if not self._io.is_eof():
                raise kaitaistruct.ConsistencyError(u"value", self._io.size() - self._io.pos(), 0)


        def _check(self):
            pass



