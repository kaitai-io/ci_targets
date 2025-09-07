# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class NavParentVsValueInst(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(NavParentVsValueInst, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.s1 = (self._io.read_bytes_term(124, False, True, True)).decode(u"UTF-8")
        self.child = NavParentVsValueInst.ChildObj(self._io, self, self._root)
        self.child._read()
        self._dirty = False


    def _fetch_instances(self):
        pass
        self.child._fetch_instances()


    def _write__seq(self, io=None):
        super(NavParentVsValueInst, self)._write__seq(io)
        self._io.write_bytes((self.s1).encode(u"UTF-8"))
        self._io.write_u1(124)
        self.child._write__seq(self._io)


    def _check(self):
        if KaitaiStream.byte_array_index_of((self.s1).encode(u"UTF-8"), 124) != -1:
            raise kaitaistruct.ConsistencyError(u"s1", -1, KaitaiStream.byte_array_index_of((self.s1).encode(u"UTF-8"), 124))
        if self.child._root != self._root:
            raise kaitaistruct.ConsistencyError(u"child", self._root, self.child._root)
        if self.child._parent != self:
            raise kaitaistruct.ConsistencyError(u"child", self, self.child._parent)
        self._dirty = False

    class ChildObj(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super(NavParentVsValueInst.ChildObj, self).__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            pass
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(NavParentVsValueInst.ChildObj, self)._write__seq(io)


        def _check(self):
            self._dirty = False

        @property
        def do_something(self):
            if hasattr(self, '_m_do_something'):
                return self._m_do_something

            self._m_do_something = (True if self._parent.s1 == u"foo" else False)
            return getattr(self, '_m_do_something', None)

        def _invalidate_do_something(self):
            del self._m_do_something


