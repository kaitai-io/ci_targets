# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class NavParentVsValueInst(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super(NavParentVsValueInst, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.s1 = (self._io.read_bytes_term(124, False, True, True)).decode(u"UTF-8")
        self.child = NavParentVsValueInst.ChildObj(self._io, self, self._root)


    def _fetch_instances(self):
        pass
        self.child._fetch_instances()

    class ChildObj(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super(NavParentVsValueInst.ChildObj, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            pass


        def _fetch_instances(self):
            pass

        @property
        def do_something(self):
            if hasattr(self, '_m_do_something'):
                return self._m_do_something

            self._m_do_something = (True if self._parent.s1 == u"foo" else False)
            return getattr(self, '_m_do_something', None)



