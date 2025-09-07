# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class StrEncodingsEscapingEnc(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(StrEncodingsEscapingEnc, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.len_of_1 = self._io.read_u2le()
        self._raw_str1 = self._io.read_bytes(self.len_of_1)
        _io__raw_str1 = KaitaiStream(BytesIO(self._raw_str1))
        self.str1 = StrEncodingsEscapingEnc.Str1Wrapper(_io__raw_str1, self, self._root)
        self.str1._read()
        self.len_of_2 = self._io.read_u2le()
        self._raw_str2 = self._io.read_bytes(self.len_of_2)
        _io__raw_str2 = KaitaiStream(BytesIO(self._raw_str2))
        self.str2 = StrEncodingsEscapingEnc.Str2Wrapper(_io__raw_str2, self, self._root)
        self.str2._read()
        self.len_of_3 = self._io.read_u2le()
        self._raw_str3 = self._io.read_bytes(self.len_of_3)
        _io__raw_str3 = KaitaiStream(BytesIO(self._raw_str3))
        self.str3 = StrEncodingsEscapingEnc.Str3Wrapper(_io__raw_str3, self, self._root)
        self.str3._read()
        self.len_of_4 = self._io.read_u2le()
        self._raw_str4 = self._io.read_bytes(self.len_of_4)
        _io__raw_str4 = KaitaiStream(BytesIO(self._raw_str4))
        self.str4 = StrEncodingsEscapingEnc.Str4Wrapper(_io__raw_str4, self, self._root)
        self.str4._read()
        self._dirty = False


    def _fetch_instances(self):
        pass
        self.str1._fetch_instances()
        self.str2._fetch_instances()
        self.str3._fetch_instances()
        self.str4._fetch_instances()


    def _write__seq(self, io=None):
        super(StrEncodingsEscapingEnc, self)._write__seq(io)
        self._io.write_u2le(self.len_of_1)
        _io__raw_str1 = KaitaiStream(BytesIO(bytearray(self.len_of_1)))
        self._io.add_child_stream(_io__raw_str1)
        _pos2 = self._io.pos()
        self._io.seek(self._io.pos() + (self.len_of_1))
        def handler(parent, _io__raw_str1=_io__raw_str1):
            self._raw_str1 = _io__raw_str1.to_byte_array()
            if len(self._raw_str1) != self.len_of_1:
                raise kaitaistruct.ConsistencyError(u"raw(str1)", self.len_of_1, len(self._raw_str1))
            parent.write_bytes(self._raw_str1)
        _io__raw_str1.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
        self.str1._write__seq(_io__raw_str1)
        self._io.write_u2le(self.len_of_2)
        _io__raw_str2 = KaitaiStream(BytesIO(bytearray(self.len_of_2)))
        self._io.add_child_stream(_io__raw_str2)
        _pos2 = self._io.pos()
        self._io.seek(self._io.pos() + (self.len_of_2))
        def handler(parent, _io__raw_str2=_io__raw_str2):
            self._raw_str2 = _io__raw_str2.to_byte_array()
            if len(self._raw_str2) != self.len_of_2:
                raise kaitaistruct.ConsistencyError(u"raw(str2)", self.len_of_2, len(self._raw_str2))
            parent.write_bytes(self._raw_str2)
        _io__raw_str2.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
        self.str2._write__seq(_io__raw_str2)
        self._io.write_u2le(self.len_of_3)
        _io__raw_str3 = KaitaiStream(BytesIO(bytearray(self.len_of_3)))
        self._io.add_child_stream(_io__raw_str3)
        _pos2 = self._io.pos()
        self._io.seek(self._io.pos() + (self.len_of_3))
        def handler(parent, _io__raw_str3=_io__raw_str3):
            self._raw_str3 = _io__raw_str3.to_byte_array()
            if len(self._raw_str3) != self.len_of_3:
                raise kaitaistruct.ConsistencyError(u"raw(str3)", self.len_of_3, len(self._raw_str3))
            parent.write_bytes(self._raw_str3)
        _io__raw_str3.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
        self.str3._write__seq(_io__raw_str3)
        self._io.write_u2le(self.len_of_4)
        _io__raw_str4 = KaitaiStream(BytesIO(bytearray(self.len_of_4)))
        self._io.add_child_stream(_io__raw_str4)
        _pos2 = self._io.pos()
        self._io.seek(self._io.pos() + (self.len_of_4))
        def handler(parent, _io__raw_str4=_io__raw_str4):
            self._raw_str4 = _io__raw_str4.to_byte_array()
            if len(self._raw_str4) != self.len_of_4:
                raise kaitaistruct.ConsistencyError(u"raw(str4)", self.len_of_4, len(self._raw_str4))
            parent.write_bytes(self._raw_str4)
        _io__raw_str4.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
        self.str4._write__seq(_io__raw_str4)


    def _check(self):
        if self.str1._root != self._root:
            raise kaitaistruct.ConsistencyError(u"str1", self._root, self.str1._root)
        if self.str1._parent != self:
            raise kaitaistruct.ConsistencyError(u"str1", self, self.str1._parent)
        if self.str2._root != self._root:
            raise kaitaistruct.ConsistencyError(u"str2", self._root, self.str2._root)
        if self.str2._parent != self:
            raise kaitaistruct.ConsistencyError(u"str2", self, self.str2._parent)
        if self.str3._root != self._root:
            raise kaitaistruct.ConsistencyError(u"str3", self._root, self.str3._root)
        if self.str3._parent != self:
            raise kaitaistruct.ConsistencyError(u"str3", self, self.str3._parent)
        if self.str4._root != self._root:
            raise kaitaistruct.ConsistencyError(u"str4", self._root, self.str4._root)
        if self.str4._parent != self:
            raise kaitaistruct.ConsistencyError(u"str4", self, self.str4._parent)
        self._dirty = False

    class Str1Wrapper(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super(StrEncodingsEscapingEnc.Str1Wrapper, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._should_write_v = False
            self.v__enabled = True

        def _read(self):
            pass
            self._dirty = False


        def _fetch_instances(self):
            pass
            _ = self.v
            if hasattr(self, '_m_v'):
                pass



        def _write__seq(self, io=None):
            super(StrEncodingsEscapingEnc.Str1Wrapper, self)._write__seq(io)
            self._should_write_v = self.v__enabled


        def _check(self):
            if self.v__enabled:
                pass

            self._dirty = False

        @property
        def v(self):
            if self._should_write_v:
                self._write_v()
            if hasattr(self, '_m_v'):
                return self._m_v

            if not self.v__enabled:
                return None

            _pos = self._io.pos()
            self._io.seek(0)
            self._m_v = (self._io.read_bytes_full()).decode(u"ASCII\\\\x")
            self._io.seek(_pos)
            return getattr(self, '_m_v', None)

        @v.setter
        def v(self, v):
            self._dirty = True
            self._m_v = v

        def _write_v(self):
            self._should_write_v = False
            _pos = self._io.pos()
            self._io.seek(0)
            self._io.write_bytes((self._m_v).encode(u"ASCII\\\\x"))
            if not self._io.is_eof():
                raise kaitaistruct.ConsistencyError(u"v", 0, self._io.size() - self._io.pos())
            self._io.seek(_pos)


    class Str2Wrapper(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super(StrEncodingsEscapingEnc.Str2Wrapper, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._should_write_v = False
            self.v__enabled = True

        def _read(self):
            pass
            self._dirty = False


        def _fetch_instances(self):
            pass
            _ = self.v
            if hasattr(self, '_m_v'):
                pass



        def _write__seq(self, io=None):
            super(StrEncodingsEscapingEnc.Str2Wrapper, self)._write__seq(io)
            self._should_write_v = self.v__enabled


        def _check(self):
            if self.v__enabled:
                pass

            self._dirty = False

        @property
        def v(self):
            if self._should_write_v:
                self._write_v()
            if hasattr(self, '_m_v'):
                return self._m_v

            if not self.v__enabled:
                return None

            _pos = self._io.pos()
            self._io.seek(0)
            self._m_v = (self._io.read_bytes_full()).decode(u"UTF-8\\'x")
            self._io.seek(_pos)
            return getattr(self, '_m_v', None)

        @v.setter
        def v(self, v):
            self._dirty = True
            self._m_v = v

        def _write_v(self):
            self._should_write_v = False
            _pos = self._io.pos()
            self._io.seek(0)
            self._io.write_bytes((self._m_v).encode(u"UTF-8\\'x"))
            if not self._io.is_eof():
                raise kaitaistruct.ConsistencyError(u"v", 0, self._io.size() - self._io.pos())
            self._io.seek(_pos)


    class Str3Wrapper(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super(StrEncodingsEscapingEnc.Str3Wrapper, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._should_write_v = False
            self.v__enabled = True

        def _read(self):
            pass
            self._dirty = False


        def _fetch_instances(self):
            pass
            _ = self.v
            if hasattr(self, '_m_v'):
                pass



        def _write__seq(self, io=None):
            super(StrEncodingsEscapingEnc.Str3Wrapper, self)._write__seq(io)
            self._should_write_v = self.v__enabled


        def _check(self):
            if self.v__enabled:
                pass

            self._dirty = False

        @property
        def v(self):
            if self._should_write_v:
                self._write_v()
            if hasattr(self, '_m_v'):
                return self._m_v

            if not self.v__enabled:
                return None

            _pos = self._io.pos()
            self._io.seek(0)
            self._m_v = (self._io.read_bytes_full()).decode(u"SJIS\\\"x")
            self._io.seek(_pos)
            return getattr(self, '_m_v', None)

        @v.setter
        def v(self, v):
            self._dirty = True
            self._m_v = v

        def _write_v(self):
            self._should_write_v = False
            _pos = self._io.pos()
            self._io.seek(0)
            self._io.write_bytes((self._m_v).encode(u"SJIS\\\"x"))
            if not self._io.is_eof():
                raise kaitaistruct.ConsistencyError(u"v", 0, self._io.size() - self._io.pos())
            self._io.seek(_pos)


    class Str4Wrapper(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super(StrEncodingsEscapingEnc.Str4Wrapper, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._should_write_v = False
            self.v__enabled = True

        def _read(self):
            pass
            self._dirty = False


        def _fetch_instances(self):
            pass
            _ = self.v
            if hasattr(self, '_m_v'):
                pass



        def _write__seq(self, io=None):
            super(StrEncodingsEscapingEnc.Str4Wrapper, self)._write__seq(io)
            self._should_write_v = self.v__enabled


        def _check(self):
            if self.v__enabled:
                pass

            self._dirty = False

        @property
        def v(self):
            if self._should_write_v:
                self._write_v()
            if hasattr(self, '_m_v'):
                return self._m_v

            if not self.v__enabled:
                return None

            _pos = self._io.pos()
            self._io.seek(0)
            self._m_v = (self._io.read_bytes_full()).decode(u"IBM437\\nx")
            self._io.seek(_pos)
            return getattr(self, '_m_v', None)

        @v.setter
        def v(self, v):
            self._dirty = True
            self._m_v = v

        def _write_v(self):
            self._should_write_v = False
            _pos = self._io.pos()
            self._io.seek(0)
            self._io.write_bytes((self._m_v).encode(u"IBM437\\nx"))
            if not self._io.is_eof():
                raise kaitaistruct.ConsistencyError(u"v", 0, self._io.size() - self._io.pos())
            self._io.seek(_pos)



