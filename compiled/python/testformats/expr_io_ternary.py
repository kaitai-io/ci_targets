# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ExprIoTernary(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super(ExprIoTernary, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.flag = self._io.read_u1()
        self._raw_obj1 = self._io.read_bytes(4)
        _io__raw_obj1 = KaitaiStream(BytesIO(self._raw_obj1))
        self.obj1 = ExprIoTernary.One(_io__raw_obj1, self, self._root)
        self._raw_obj2 = self._io.read_bytes(8)
        _io__raw_obj2 = KaitaiStream(BytesIO(self._raw_obj2))
        self.obj2 = ExprIoTernary.Two(_io__raw_obj2, self, self._root)


    def _fetch_instances(self):
        pass
        self.obj1._fetch_instances()
        self.obj2._fetch_instances()

    class One(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(ExprIoTernary.One, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.one = self._io.read_u1()


        def _fetch_instances(self):
            pass


    class Two(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(ExprIoTernary.Two, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.two = self._io.read_u1()


        def _fetch_instances(self):
            pass


    @property
    def one_or_two_io(self):
        if hasattr(self, '_m_one_or_two_io'):
            return self._m_one_or_two_io

        self._m_one_or_two_io = (self.obj1 if self.flag == 64 else self.obj2)._io
        return getattr(self, '_m_one_or_two_io', None)

    @property
    def one_or_two_io_size1(self):
        if hasattr(self, '_m_one_or_two_io_size1'):
            return self._m_one_or_two_io_size1

        self._m_one_or_two_io_size1 = (self.obj1 if self.flag == 64 else self.obj2)._io.size()
        return getattr(self, '_m_one_or_two_io_size1', None)

    @property
    def one_or_two_io_size2(self):
        if hasattr(self, '_m_one_or_two_io_size2'):
            return self._m_one_or_two_io_size2

        self._m_one_or_two_io_size2 = self.one_or_two_io.size()
        return getattr(self, '_m_one_or_two_io_size2', None)

    @property
    def one_or_two_io_size_add_3(self):
        if hasattr(self, '_m_one_or_two_io_size_add_3'):
            return self._m_one_or_two_io_size_add_3

        self._m_one_or_two_io_size_add_3 = (self.obj1 if self.flag == 64 else self.obj2)._io.size() + 3
        return getattr(self, '_m_one_or_two_io_size_add_3', None)

    @property
    def one_or_two_obj(self):
        if hasattr(self, '_m_one_or_two_obj'):
            return self._m_one_or_two_obj

        self._m_one_or_two_obj = (self.obj1 if self.flag == 64 else self.obj2)
        return getattr(self, '_m_one_or_two_obj', None)


