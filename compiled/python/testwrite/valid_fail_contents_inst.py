# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class ValidFailContentsInst(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._should_write_foo = False
        self.foo__enabled = True

    def _read(self):
        if len(self.foo) == 0:
            pass
            self.a = self._io.read_bytes(0)

        self._dirty = False


    def _fetch_instances(self):
        pass
        if len(self.foo) == 0:
            pass

        _ = self.foo
        if hasattr(self, '_m_foo'):
            pass



    def _write__seq(self, io=None):
        super()._write__seq(io)
        self._should_write_foo = self.foo__enabled
        if len(self.foo) == 0:
            pass
            if len(self.a) != 0:
                raise kaitaistruct.ConsistencyError("a", 0, len(self.a))
            self._io.write_bytes(self.a)



    def _check(self):
        if self.foo__enabled:
            pass
            if len(self._m_foo) != 2:
                raise kaitaistruct.ConsistencyError("foo", 2, len(self._m_foo))
            if not self._m_foo == b"\x51\x41":
                raise kaitaistruct.ValidationNotEqualError(b"\x51\x41", self._m_foo, None, "/instances/foo")

        self._dirty = False

    @property
    def foo(self):
        if self._should_write_foo:
            self._write_foo()
        if hasattr(self, '_m_foo'):
            return self._m_foo

        if not self.foo__enabled:
            return None

        _pos = self._io.pos()
        self._io.seek(0)
        self._m_foo = self._io.read_bytes(2)
        if not self._m_foo == b"\x51\x41":
            raise kaitaistruct.ValidationNotEqualError(b"\x51\x41", self._m_foo, self._io, "/instances/foo")
        self._io.seek(_pos)
        return getattr(self, '_m_foo', None)

    @foo.setter
    def foo(self, v):
        self._dirty = True
        self._m_foo = v

    def _write_foo(self):
        self._should_write_foo = False
        _pos = self._io.pos()
        self._io.seek(0)
        self._io.write_bytes(self._m_foo)
        self._io.seek(_pos)


