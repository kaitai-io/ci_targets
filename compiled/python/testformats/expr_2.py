# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class Expr2(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.str1 = Expr2.ModStr(self._io, self, self._root)
        self.str2 = Expr2.ModStr(self._io, self, self._root)


    def _fetch_instances(self):
        pass
        self.str1._fetch_instances()
        self.str2._fetch_instances()

    class ModStr(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.len_orig = self._io.read_u2le()
            self.str = (self._io.read_bytes(self.len_mod)).decode("UTF-8")
            self._raw_rest = self._io.read_bytes(3)
            _io__raw_rest = KaitaiStream(BytesIO(self._raw_rest))
            self.rest = Expr2.Tuple(_io__raw_rest, self, self._root)


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


        @property
        def char5(self):
            if hasattr(self, '_m_char5'):
                return self._m_char5

            _pos = self._io.pos()
            self._io.seek(5)
            self._m_char5 = (self._io.read_bytes(1)).decode("ASCII")
            self._io.seek(_pos)
            return getattr(self, '_m_char5', None)

        @property
        def len_mod(self):
            if hasattr(self, '_m_len_mod'):
                return self._m_len_mod

            self._m_len_mod = self.len_orig - 3
            return getattr(self, '_m_len_mod', None)

        @property
        def tuple5(self):
            if hasattr(self, '_m_tuple5'):
                return self._m_tuple5

            _pos = self._io.pos()
            self._io.seek(5)
            self._m_tuple5 = Expr2.Tuple(self._io, self, self._root)
            self._io.seek(_pos)
            return getattr(self, '_m_tuple5', None)


    class Tuple(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.byte0 = self._io.read_u1()
            self.byte1 = self._io.read_u1()
            self.byte2 = self._io.read_u1()


        def _fetch_instances(self):
            pass

        @property
        def avg(self):
            if hasattr(self, '_m_avg'):
                return self._m_avg

            self._m_avg = (self.byte1 + self.byte2) // 2
            return getattr(self, '_m_avg', None)


    @property
    def str1_avg(self):
        if hasattr(self, '_m_str1_avg'):
            return self._m_str1_avg

        self._m_str1_avg = self.str1.rest.avg
        return getattr(self, '_m_str1_avg', None)

    @property
    def str1_byte1(self):
        if hasattr(self, '_m_str1_byte1'):
            return self._m_str1_byte1

        self._m_str1_byte1 = self.str1.rest.byte1
        return getattr(self, '_m_str1_byte1', None)

    @property
    def str1_char5(self):
        if hasattr(self, '_m_str1_char5'):
            return self._m_str1_char5

        self._m_str1_char5 = self.str1.char5
        return getattr(self, '_m_str1_char5', None)

    @property
    def str1_len(self):
        if hasattr(self, '_m_str1_len'):
            return self._m_str1_len

        self._m_str1_len = len(self.str1.str)
        return getattr(self, '_m_str1_len', None)

    @property
    def str1_len_mod(self):
        if hasattr(self, '_m_str1_len_mod'):
            return self._m_str1_len_mod

        self._m_str1_len_mod = self.str1.len_mod
        return getattr(self, '_m_str1_len_mod', None)

    @property
    def str1_tuple5(self):
        if hasattr(self, '_m_str1_tuple5'):
            return self._m_str1_tuple5

        self._m_str1_tuple5 = self.str1.tuple5
        return getattr(self, '_m_str1_tuple5', None)

    @property
    def str2_tuple5(self):
        if hasattr(self, '_m_str2_tuple5'):
            return self._m_str2_tuple5

        self._m_str2_tuple5 = self.str2.tuple5
        return getattr(self, '_m_str2_tuple5', None)


