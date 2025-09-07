# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class NavParentRecursive(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(NavParentRecursive, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.value = self._io.read_u1()
        if self.value == 255:
            pass
            self.next = NavParentRecursive(self._io, self, self._root)
            self.next._read()

        self._dirty = False


    def _fetch_instances(self):
        pass
        if self.value == 255:
            pass
            self.next._fetch_instances()



    def _write__seq(self, io=None):
        super(NavParentRecursive, self)._write__seq(io)
        self._io.write_u1(self.value)
        if self.value == 255:
            pass
            self.next._write__seq(self._io)



    def _check(self):
        if self.value == 255:
            pass
            if self.next._root != self._root:
                raise kaitaistruct.ConsistencyError(u"next", self._root, self.next._root)
            if self.next._parent != self:
                raise kaitaistruct.ConsistencyError(u"next", self, self.next._parent)

        self._dirty = False

    @property
    def parent_value(self):
        if hasattr(self, '_m_parent_value'):
            return self._m_parent_value

        if self.value != 255:
            pass
            self._m_parent_value = self._parent.value

        return getattr(self, '_m_parent_value', None)

    def _invalidate_parent_value(self):
        del self._m_parent_value

