# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 9):
    raise Exception("Incompatible Kaitai Struct Python API: 0.9 or later is required, but you have %s" % (kaitaistruct.__version__))

class NavParentVsValueInst(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.s1 = (self._io.read_bytes_term(124, False, True, True)).decode(u"UTF-8")
        self.child = NavParentVsValueInst.ChildObj(self._io, self, self._root)

    class ChildObj(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self._read()

        def _read(self):
            pass

        @property
        def do_something(self):
            if hasattr(self, '_m_do_something'):
                return self._m_do_something if hasattr(self, '_m_do_something') else None

            self._m_do_something = (True if self._parent.s1 == u"foo" else False)
            return self._m_do_something if hasattr(self, '_m_do_something') else None



