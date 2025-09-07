# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class StrEosPadTermEmpty(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(StrEosPadTermEmpty, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self._raw_str_pad = self._io.read_bytes(20)
        _io__raw_str_pad = KaitaiStream(BytesIO(self._raw_str_pad))
        self.str_pad = StrEosPadTermEmpty.StrPadType(_io__raw_str_pad, self, self._root)
        self.str_pad._read()
        self._raw_str_term = self._io.read_bytes(20)
        _io__raw_str_term = KaitaiStream(BytesIO(self._raw_str_term))
        self.str_term = StrEosPadTermEmpty.StrTermType(_io__raw_str_term, self, self._root)
        self.str_term._read()
        self._raw_str_term_and_pad = self._io.read_bytes(20)
        _io__raw_str_term_and_pad = KaitaiStream(BytesIO(self._raw_str_term_and_pad))
        self.str_term_and_pad = StrEosPadTermEmpty.StrTermAndPadType(_io__raw_str_term_and_pad, self, self._root)
        self.str_term_and_pad._read()
        self._raw_str_term_include = self._io.read_bytes(20)
        _io__raw_str_term_include = KaitaiStream(BytesIO(self._raw_str_term_include))
        self.str_term_include = StrEosPadTermEmpty.StrTermIncludeType(_io__raw_str_term_include, self, self._root)
        self.str_term_include._read()
        self._dirty = False


    def _fetch_instances(self):
        pass
        self.str_pad._fetch_instances()
        self.str_term._fetch_instances()
        self.str_term_and_pad._fetch_instances()
        self.str_term_include._fetch_instances()


    def _write__seq(self, io=None):
        super(StrEosPadTermEmpty, self)._write__seq(io)
        _io__raw_str_pad = KaitaiStream(BytesIO(bytearray(20)))
        self._io.add_child_stream(_io__raw_str_pad)
        _pos2 = self._io.pos()
        self._io.seek(self._io.pos() + (20))
        def handler(parent, _io__raw_str_pad=_io__raw_str_pad):
            self._raw_str_pad = _io__raw_str_pad.to_byte_array()
            if len(self._raw_str_pad) != 20:
                raise kaitaistruct.ConsistencyError(u"raw(str_pad)", 20, len(self._raw_str_pad))
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
                raise kaitaistruct.ConsistencyError(u"raw(str_term)", 20, len(self._raw_str_term))
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
                raise kaitaistruct.ConsistencyError(u"raw(str_term_and_pad)", 20, len(self._raw_str_term_and_pad))
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
                raise kaitaistruct.ConsistencyError(u"raw(str_term_include)", 20, len(self._raw_str_term_include))
            parent.write_bytes(self._raw_str_term_include)
        _io__raw_str_term_include.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
        self.str_term_include._write__seq(_io__raw_str_term_include)


    def _check(self):
        if self.str_pad._root != self._root:
            raise kaitaistruct.ConsistencyError(u"str_pad", self._root, self.str_pad._root)
        if self.str_pad._parent != self:
            raise kaitaistruct.ConsistencyError(u"str_pad", self, self.str_pad._parent)
        if self.str_term._root != self._root:
            raise kaitaistruct.ConsistencyError(u"str_term", self._root, self.str_term._root)
        if self.str_term._parent != self:
            raise kaitaistruct.ConsistencyError(u"str_term", self, self.str_term._parent)
        if self.str_term_and_pad._root != self._root:
            raise kaitaistruct.ConsistencyError(u"str_term_and_pad", self._root, self.str_term_and_pad._root)
        if self.str_term_and_pad._parent != self:
            raise kaitaistruct.ConsistencyError(u"str_term_and_pad", self, self.str_term_and_pad._parent)
        if self.str_term_include._root != self._root:
            raise kaitaistruct.ConsistencyError(u"str_term_include", self._root, self.str_term_include._root)
        if self.str_term_include._parent != self:
            raise kaitaistruct.ConsistencyError(u"str_term_include", self, self.str_term_include._parent)
        self._dirty = False

    class StrPadType(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super(StrEosPadTermEmpty.StrPadType, self).__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.value = (KaitaiStream.bytes_strip_right(self._io.read_bytes_full(), 64)).decode(u"UTF-8")
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(StrEosPadTermEmpty.StrPadType, self)._write__seq(io)
            self._io.write_bytes_limit((self.value).encode(u"UTF-8"), self._io.size() - self._io.pos(), 64, 64)
            if not self._io.is_eof():
                raise kaitaistruct.ConsistencyError(u"value", 0, self._io.size() - self._io.pos())


        def _check(self):
            self._dirty = False


    class StrTermAndPadType(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super(StrEosPadTermEmpty.StrTermAndPadType, self).__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.value = (KaitaiStream.bytes_terminate(KaitaiStream.bytes_strip_right(self._io.read_bytes_full(), 43), 64, False)).decode(u"UTF-8")
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(StrEosPadTermEmpty.StrTermAndPadType, self)._write__seq(io)
            self._io.write_bytes_limit((self.value).encode(u"UTF-8"), self._io.size() - self._io.pos(), 64, 43)
            if not self._io.is_eof():
                raise kaitaistruct.ConsistencyError(u"value", 0, self._io.size() - self._io.pos())


        def _check(self):
            self._dirty = False


    class StrTermIncludeType(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super(StrEosPadTermEmpty.StrTermIncludeType, self).__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.value = (KaitaiStream.bytes_terminate(self._io.read_bytes_full(), 64, True)).decode(u"UTF-8")
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(StrEosPadTermEmpty.StrTermIncludeType, self)._write__seq(io)
            self._io.write_bytes_limit((self.value).encode(u"UTF-8"), self._io.size() - self._io.pos(), 0, 0)
            if not self._io.is_eof():
                raise kaitaistruct.ConsistencyError(u"value", 0, self._io.size() - self._io.pos())


        def _check(self):
            self._dirty = False


    class StrTermType(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super(StrEosPadTermEmpty.StrTermType, self).__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.value = (KaitaiStream.bytes_terminate(self._io.read_bytes_full(), 64, False)).decode(u"UTF-8")
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(StrEosPadTermEmpty.StrTermType, self)._write__seq(io)
            self._io.write_bytes_limit((self.value).encode(u"UTF-8"), self._io.size() - self._io.pos(), 64, 0)
            if not self._io.is_eof():
                raise kaitaistruct.ConsistencyError(u"value", 0, self._io.size() - self._io.pos())


        def _check(self):
            self._dirty = False



