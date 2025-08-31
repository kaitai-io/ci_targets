# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class NavParentSwitchCast(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.main = NavParentSwitchCast.Foo(self._io, self, self._root)


    def _fetch_instances(self):
        pass
        self.main._fetch_instances()

    class Foo(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.buf_type = self._io.read_u1()
            self.flag = self._io.read_u1()
            _on = self.buf_type
            if _on == 0:
                pass
                self._raw_buf = self._io.read_bytes(4)
                _io__raw_buf = KaitaiStream(BytesIO(self._raw_buf))
                self.buf = NavParentSwitchCast.Foo.Zero(_io__raw_buf, self, self._root)
            elif _on == 1:
                pass
                self._raw_buf = self._io.read_bytes(4)
                _io__raw_buf = KaitaiStream(BytesIO(self._raw_buf))
                self.buf = NavParentSwitchCast.Foo.One(_io__raw_buf, self, self._root)
            else:
                pass
                self.buf = self._io.read_bytes(4)


        def _fetch_instances(self):
            pass
            _on = self.buf_type
            if _on == 0:
                pass
                self.buf._fetch_instances()
            elif _on == 1:
                pass
                self.buf._fetch_instances()
            else:
                pass

        class Common(KaitaiStruct):
            def __init__(self, _io, _parent=None, _root=None):
                self._io = _io
                self._parent = _parent
                self._root = _root
                self._read()

            def _read(self):
                pass


            def _fetch_instances(self):
                pass

            @property
            def flag(self):
                if hasattr(self, '_m_flag'):
                    return self._m_flag

                self._m_flag = self._parent._parent.flag
                return getattr(self, '_m_flag', None)


        class One(KaitaiStruct):
            def __init__(self, _io, _parent=None, _root=None):
                self._io = _io
                self._parent = _parent
                self._root = _root
                self._read()

            def _read(self):
                self.branch = NavParentSwitchCast.Foo.Common(self._io, self, self._root)


            def _fetch_instances(self):
                pass
                self.branch._fetch_instances()


        class Zero(KaitaiStruct):
            def __init__(self, _io, _parent=None, _root=None):
                self._io = _io
                self._parent = _parent
                self._root = _root
                self._read()

            def _read(self):
                self.branch = NavParentSwitchCast.Foo.Common(self._io, self, self._root)


            def _fetch_instances(self):
                pass
                self.branch._fetch_instances()




