# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class NonStandard(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(NonStandard, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._should_write_pi = False
        self.pi__enabled = True

    def _read(self):
        self.foo = self._io.read_u1()
        _on = self.foo
        if _on == 42:
            pass
            self.bar = self._io.read_u2le()
        elif _on == 43:
            pass
            self.bar = self._io.read_u4le()
        self._dirty = False


    def _fetch_instances(self):
        pass
        _on = self.foo
        if _on == 42:
            pass
        elif _on == 43:
            pass
        _ = self.pi
        if hasattr(self, '_m_pi'):
            pass



    def _write__seq(self, io=None):
        super(NonStandard, self)._write__seq(io)
        self._should_write_pi = self.pi__enabled
        self._io.write_u1(self.foo)
        _on = self.foo
        if _on == 42:
            pass
            self._io.write_u2le(self.bar)
        elif _on == 43:
            pass
            self._io.write_u4le(self.bar)


    def _check(self):
        _on = self.foo
        if _on == 42:
            pass
        elif _on == 43:
            pass
        if self.pi__enabled:
            pass

        self._dirty = False

    @property
    def pi(self):
        if self._should_write_pi:
            self._write_pi()
        if hasattr(self, '_m_pi'):
            return self._m_pi

        if not self.pi__enabled:
            return None

        _pos = self._io.pos()
        self._io.seek(0)
        self._m_pi = self._io.read_u1()
        self._io.seek(_pos)
        return getattr(self, '_m_pi', None)

    @pi.setter
    def pi(self, v):
        self._dirty = True
        self._m_pi = v

    def _write_pi(self):
        self._should_write_pi = False
        _pos = self._io.pos()
        self._io.seek(0)
        self._io.write_u1(self._m_pi)
        self._io.seek(_pos)

    @property
    def vi(self):
        if hasattr(self, '_m_vi'):
            return self._m_vi

        self._m_vi = self.foo
        return getattr(self, '_m_vi', None)

    def _invalidate_vi(self):
        del self._m_vi

