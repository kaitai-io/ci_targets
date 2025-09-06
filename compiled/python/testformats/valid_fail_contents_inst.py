# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ValidFailContentsInst(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super(ValidFailContentsInst, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        if len(self.foo) == 0:
            pass
            self.a = self._io.read_bytes(0)



    def _fetch_instances(self):
        pass
        if len(self.foo) == 0:
            pass

        _ = self.foo
        if hasattr(self, '_m_foo'):
            pass


    @property
    def foo(self):
        if hasattr(self, '_m_foo'):
            return self._m_foo

        _pos = self._io.pos()
        self._io.seek(0)
        self._m_foo = self._io.read_bytes(2)
        if not self._m_foo == b"\x51\x41":
            raise kaitaistruct.ValidationNotEqualError(b"\x51\x41", self._m_foo, self._io, u"/instances/foo")
        self._io.seek(_pos)
        return getattr(self, '_m_foo', None)


