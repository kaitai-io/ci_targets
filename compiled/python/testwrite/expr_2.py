# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class Expr2(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(Expr2, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.str1 = Expr2.ModStr(self._io, self, self._root)
        self.str1._read()
        self.str2 = Expr2.ModStr(self._io, self, self._root)
        self.str2._read()
        self._dirty = False


    def _fetch_instances(self):
        pass
        self.str1._fetch_instances()
        self.str2._fetch_instances()


    def _write__seq(self, io=None):
        super(Expr2, self)._write__seq(io)
        self.str1._write__seq(self._io)
        self.str2._write__seq(self._io)


    def _check(self):
        if self.str1._root != self._root:
            raise kaitaistruct.ConsistencyError(u"str1", self._root, self.str1._root)
        if self.str1._parent != self:
            raise kaitaistruct.ConsistencyError(u"str1", self, self.str1._parent)
        if self.str2._root != self._root:
            raise kaitaistruct.ConsistencyError(u"str2", self._root, self.str2._root)
        if self.str2._parent != self:
            raise kaitaistruct.ConsistencyError(u"str2", self, self.str2._parent)
        self._dirty = False

    class ModStr(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super(Expr2.ModStr, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._should_write_char5 = False
            self.char5__enabled = True
            self._should_write_tuple5 = False
            self.tuple5__enabled = True

        def _read(self):
            self.len_orig = self._io.read_u2le()
            self.str = (self._io.read_bytes(self.len_mod)).decode(u"UTF-8")
            self._raw_rest = self._io.read_bytes(3)
            _io__raw_rest = KaitaiStream(BytesIO(self._raw_rest))
            self.rest = Expr2.Tuple(_io__raw_rest, self, self._root)
            self.rest._read()
            self._dirty = False


        def _fetch_instances(self):
            pass
            self.rest._fetch_instances()
            _ = self.char5
            if hasattr(self, '_m_char5'):
                pass

            _ = self.tuple5
            if hasattr(self, '_m_tuple5'):
                pass
                self._m_tuple5._fetch_instances()



        def _write__seq(self, io=None):
            super(Expr2.ModStr, self)._write__seq(io)
            self._should_write_char5 = self.char5__enabled
            self._should_write_tuple5 = self.tuple5__enabled
            self._io.write_u2le(self.len_orig)
            self._io.write_bytes((self.str).encode(u"UTF-8"))
            _io__raw_rest = KaitaiStream(BytesIO(bytearray(3)))
            self._io.add_child_stream(_io__raw_rest)
            _pos2 = self._io.pos()
            self._io.seek(self._io.pos() + (3))
            def handler(parent, _io__raw_rest=_io__raw_rest):
                self._raw_rest = _io__raw_rest.to_byte_array()
                if len(self._raw_rest) != 3:
                    raise kaitaistruct.ConsistencyError(u"raw(rest)", 3, len(self._raw_rest))
                parent.write_bytes(self._raw_rest)
            _io__raw_rest.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
            self.rest._write__seq(_io__raw_rest)


        def _check(self):
            if len((self.str).encode(u"UTF-8")) != self.len_mod:
                raise kaitaistruct.ConsistencyError(u"str", self.len_mod, len((self.str).encode(u"UTF-8")))
            if self.rest._root != self._root:
                raise kaitaistruct.ConsistencyError(u"rest", self._root, self.rest._root)
            if self.rest._parent != self:
                raise kaitaistruct.ConsistencyError(u"rest", self, self.rest._parent)
            if self.char5__enabled:
                pass
                if len((self._m_char5).encode(u"ASCII")) != 1:
                    raise kaitaistruct.ConsistencyError(u"char5", 1, len((self._m_char5).encode(u"ASCII")))

            if self.tuple5__enabled:
                pass
                if self._m_tuple5._root != self._root:
                    raise kaitaistruct.ConsistencyError(u"tuple5", self._root, self._m_tuple5._root)
                if self._m_tuple5._parent != self:
                    raise kaitaistruct.ConsistencyError(u"tuple5", self, self._m_tuple5._parent)

            self._dirty = False

        @property
        def char5(self):
            if self._should_write_char5:
                self._write_char5()
            if hasattr(self, '_m_char5'):
                return self._m_char5

            if not self.char5__enabled:
                return None

            _pos = self._io.pos()
            self._io.seek(5)
            self._m_char5 = (self._io.read_bytes(1)).decode(u"ASCII")
            self._io.seek(_pos)
            return getattr(self, '_m_char5', None)

        @char5.setter
        def char5(self, v):
            self._dirty = True
            self._m_char5 = v

        def _write_char5(self):
            self._should_write_char5 = False
            _pos = self._io.pos()
            self._io.seek(5)
            self._io.write_bytes((self._m_char5).encode(u"ASCII"))
            self._io.seek(_pos)

        @property
        def len_mod(self):
            if hasattr(self, '_m_len_mod'):
                return self._m_len_mod

            self._m_len_mod = self.len_orig - 3
            return getattr(self, '_m_len_mod', None)

        def _invalidate_len_mod(self):
            del self._m_len_mod
        @property
        def tuple5(self):
            if self._should_write_tuple5:
                self._write_tuple5()
            if hasattr(self, '_m_tuple5'):
                return self._m_tuple5

            if not self.tuple5__enabled:
                return None

            _pos = self._io.pos()
            self._io.seek(5)
            self._m_tuple5 = Expr2.Tuple(self._io, self, self._root)
            self._m_tuple5._read()
            self._io.seek(_pos)
            return getattr(self, '_m_tuple5', None)

        @tuple5.setter
        def tuple5(self, v):
            self._dirty = True
            self._m_tuple5 = v

        def _write_tuple5(self):
            self._should_write_tuple5 = False
            _pos = self._io.pos()
            self._io.seek(5)
            self._m_tuple5._write__seq(self._io)
            self._io.seek(_pos)


    class Tuple(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super(Expr2.Tuple, self).__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.byte0 = self._io.read_u1()
            self.byte1 = self._io.read_u1()
            self.byte2 = self._io.read_u1()
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(Expr2.Tuple, self)._write__seq(io)
            self._io.write_u1(self.byte0)
            self._io.write_u1(self.byte1)
            self._io.write_u1(self.byte2)


        def _check(self):
            self._dirty = False

        @property
        def avg(self):
            if hasattr(self, '_m_avg'):
                return self._m_avg

            self._m_avg = (self.byte1 + self.byte2) // 2
            return getattr(self, '_m_avg', None)

        def _invalidate_avg(self):
            del self._m_avg

    @property
    def str1_avg(self):
        if hasattr(self, '_m_str1_avg'):
            return self._m_str1_avg

        self._m_str1_avg = self.str1.rest.avg
        return getattr(self, '_m_str1_avg', None)

    def _invalidate_str1_avg(self):
        del self._m_str1_avg
    @property
    def str1_byte1(self):
        if hasattr(self, '_m_str1_byte1'):
            return self._m_str1_byte1

        self._m_str1_byte1 = self.str1.rest.byte1
        return getattr(self, '_m_str1_byte1', None)

    def _invalidate_str1_byte1(self):
        del self._m_str1_byte1
    @property
    def str1_char5(self):
        if hasattr(self, '_m_str1_char5'):
            return self._m_str1_char5

        self._m_str1_char5 = self.str1.char5
        return getattr(self, '_m_str1_char5', None)

    def _invalidate_str1_char5(self):
        del self._m_str1_char5
    @property
    def str1_len(self):
        if hasattr(self, '_m_str1_len'):
            return self._m_str1_len

        self._m_str1_len = len(self.str1.str)
        return getattr(self, '_m_str1_len', None)

    def _invalidate_str1_len(self):
        del self._m_str1_len
    @property
    def str1_len_mod(self):
        if hasattr(self, '_m_str1_len_mod'):
            return self._m_str1_len_mod

        self._m_str1_len_mod = self.str1.len_mod
        return getattr(self, '_m_str1_len_mod', None)

    def _invalidate_str1_len_mod(self):
        del self._m_str1_len_mod
    @property
    def str1_tuple5(self):
        if hasattr(self, '_m_str1_tuple5'):
            return self._m_str1_tuple5

        self._m_str1_tuple5 = self.str1.tuple5
        return getattr(self, '_m_str1_tuple5', None)

    def _invalidate_str1_tuple5(self):
        del self._m_str1_tuple5
    @property
    def str2_tuple5(self):
        if hasattr(self, '_m_str2_tuple5'):
            return self._m_str2_tuple5

        self._m_str2_tuple5 = self.str2.tuple5
        return getattr(self, '_m_str2_tuple5', None)

    def _invalidate_str2_tuple5(self):
        del self._m_str2_tuple5

