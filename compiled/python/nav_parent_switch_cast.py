# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

from pkg_resources import parse_version
import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if parse_version(kaitaistruct.__version__) < parse_version('0.9'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.9 or later is required, but you have %s" % (kaitaistruct.__version__))

class NavParentSwitchCast(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.foo = NavParentSwitchCast.Foo(self._io, self, self._root)

    class Foo(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self._read()

        def _read(self):
            self.buf_type = self._io.read_u1()
            self.flag = self._io.read_u1()
            _on = self.buf_type
            if _on == 0:
                self._raw_buf = self._io.read_bytes(4)
                _io__raw_buf = KaitaiStream(BytesIO(self._raw_buf))
                self.buf = NavParentSwitchCast.Foo.Zero(_io__raw_buf, self, self._root)
            elif _on == 1:
                self._raw_buf = self._io.read_bytes(4)
                _io__raw_buf = KaitaiStream(BytesIO(self._raw_buf))
                self.buf = NavParentSwitchCast.Foo.One(_io__raw_buf, self, self._root)
            else:
                self.buf = self._io.read_bytes(4)

        class Zero(KaitaiStruct):
            def __init__(self, _io, _parent=None, _root=None):
                self._io = _io
                self._parent = _parent
                self._root = _root if _root else self
                self._read()

            def _read(self):
                self.bar = NavParentSwitchCast.Foo.Bar(self._io, self, self._root)


        class One(KaitaiStruct):
            def __init__(self, _io, _parent=None, _root=None):
                self._io = _io
                self._parent = _parent
                self._root = _root if _root else self
                self._read()

            def _read(self):
                self.bar = NavParentSwitchCast.Foo.Bar(self._io, self, self._root)


        class Bar(KaitaiStruct):
            def __init__(self, _io, _parent=None, _root=None):
                self._io = _io
                self._parent = _parent
                self._root = _root if _root else self
                self._read()

            def _read(self):
                pass

            @property
            def flag(self):
                if hasattr(self, '_m_flag'):
                    return self._m_flag if hasattr(self, '_m_flag') else None

                self._m_flag = self._parent._parent.flag
                return self._m_flag if hasattr(self, '_m_flag') else None




