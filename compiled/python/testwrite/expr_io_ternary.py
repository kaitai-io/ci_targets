# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ExprIoTernary(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(ExprIoTernary, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.flag = self._io.read_u1()
        self._raw_obj1 = self._io.read_bytes(4)
        _io__raw_obj1 = KaitaiStream(BytesIO(self._raw_obj1))
        self.obj1 = ExprIoTernary.One(_io__raw_obj1, self, self._root)
        self.obj1._read()
        self._raw_obj2 = self._io.read_bytes(8)
        _io__raw_obj2 = KaitaiStream(BytesIO(self._raw_obj2))
        self.obj2 = ExprIoTernary.Two(_io__raw_obj2, self, self._root)
        self.obj2._read()
        self._dirty = False


    def _fetch_instances(self):
        pass
        self.obj1._fetch_instances()
        self.obj2._fetch_instances()


    def _write__seq(self, io=None):
        super(ExprIoTernary, self)._write__seq(io)
        self._io.write_u1(self.flag)
        _io__raw_obj1 = KaitaiStream(BytesIO(bytearray(4)))
        self._io.add_child_stream(_io__raw_obj1)
        _pos2 = self._io.pos()
        self._io.seek(self._io.pos() + (4))
        def handler(parent, _io__raw_obj1=_io__raw_obj1):
            self._raw_obj1 = _io__raw_obj1.to_byte_array()
            if len(self._raw_obj1) != 4:
                raise kaitaistruct.ConsistencyError(u"raw(obj1)", 4, len(self._raw_obj1))
            parent.write_bytes(self._raw_obj1)
        _io__raw_obj1.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
        self.obj1._write__seq(_io__raw_obj1)
        _io__raw_obj2 = KaitaiStream(BytesIO(bytearray(8)))
        self._io.add_child_stream(_io__raw_obj2)
        _pos2 = self._io.pos()
        self._io.seek(self._io.pos() + (8))
        def handler(parent, _io__raw_obj2=_io__raw_obj2):
            self._raw_obj2 = _io__raw_obj2.to_byte_array()
            if len(self._raw_obj2) != 8:
                raise kaitaistruct.ConsistencyError(u"raw(obj2)", 8, len(self._raw_obj2))
            parent.write_bytes(self._raw_obj2)
        _io__raw_obj2.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
        self.obj2._write__seq(_io__raw_obj2)


    def _check(self):
        if self.obj1._root != self._root:
            raise kaitaistruct.ConsistencyError(u"obj1", self._root, self.obj1._root)
        if self.obj1._parent != self:
            raise kaitaistruct.ConsistencyError(u"obj1", self, self.obj1._parent)
        if self.obj2._root != self._root:
            raise kaitaistruct.ConsistencyError(u"obj2", self._root, self.obj2._root)
        if self.obj2._parent != self:
            raise kaitaistruct.ConsistencyError(u"obj2", self, self.obj2._parent)
        self._dirty = False

    class One(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super(ExprIoTernary.One, self).__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.one = self._io.read_u1()
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(ExprIoTernary.One, self)._write__seq(io)
            self._io.write_u1(self.one)


        def _check(self):
            self._dirty = False


    class Two(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super(ExprIoTernary.Two, self).__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.two = self._io.read_u1()
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(ExprIoTernary.Two, self)._write__seq(io)
            self._io.write_u1(self.two)


        def _check(self):
            self._dirty = False


    @property
    def one_or_two_io(self):
        if hasattr(self, '_m_one_or_two_io'):
            return self._m_one_or_two_io

        self._m_one_or_two_io = (self.obj1 if self.flag == 64 else self.obj2)._io
        return getattr(self, '_m_one_or_two_io', None)

    def _invalidate_one_or_two_io(self):
        del self._m_one_or_two_io
    @property
    def one_or_two_io_size1(self):
        if hasattr(self, '_m_one_or_two_io_size1'):
            return self._m_one_or_two_io_size1

        self._m_one_or_two_io_size1 = (self.obj1 if self.flag == 64 else self.obj2)._io.size()
        return getattr(self, '_m_one_or_two_io_size1', None)

    def _invalidate_one_or_two_io_size1(self):
        del self._m_one_or_two_io_size1
    @property
    def one_or_two_io_size2(self):
        if hasattr(self, '_m_one_or_two_io_size2'):
            return self._m_one_or_two_io_size2

        self._m_one_or_two_io_size2 = self.one_or_two_io.size()
        return getattr(self, '_m_one_or_two_io_size2', None)

    def _invalidate_one_or_two_io_size2(self):
        del self._m_one_or_two_io_size2
    @property
    def one_or_two_io_size_add_3(self):
        if hasattr(self, '_m_one_or_two_io_size_add_3'):
            return self._m_one_or_two_io_size_add_3

        self._m_one_or_two_io_size_add_3 = (self.obj1 if self.flag == 64 else self.obj2)._io.size() + 3
        return getattr(self, '_m_one_or_two_io_size_add_3', None)

    def _invalidate_one_or_two_io_size_add_3(self):
        del self._m_one_or_two_io_size_add_3
    @property
    def one_or_two_obj(self):
        if hasattr(self, '_m_one_or_two_obj'):
            return self._m_one_or_two_obj

        self._m_one_or_two_obj = (self.obj1 if self.flag == 64 else self.obj2)
        return getattr(self, '_m_one_or_two_obj', None)

    def _invalidate_one_or_two_obj(self):
        del self._m_one_or_two_obj

