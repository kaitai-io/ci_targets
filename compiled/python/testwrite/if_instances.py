# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class IfInstances(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self
        self._should_write_never_happens = False
        self.never_happens__to_write = True

    def _read(self):
        pass


    def _fetch_instances(self):
        pass
        if False:
            pass
            _ = self.never_happens



    def _write__seq(self, io=None):
        super(IfInstances, self)._write__seq(io)
        self._should_write_never_happens = self.never_happens__to_write


    def _check(self):
        pass

    @property
    def never_happens(self):
        if self._should_write_never_happens:
            self._write_never_happens()
        if hasattr(self, '_m_never_happens'):
            return self._m_never_happens

        if False:
            pass
            _pos = self._io.pos()
            self._io.seek(100500)
            self._m_never_happens = self._io.read_u1()
            self._io.seek(_pos)

        return getattr(self, '_m_never_happens', None)

    @never_happens.setter
    def never_happens(self, v):
        self._m_never_happens = v

    def _write_never_happens(self):
        self._should_write_never_happens = False
        if False:
            pass
            _pos = self._io.pos()
            self._io.seek(100500)
            self._io.write_u1(self._m_never_happens)
            self._io.seek(_pos)



    def _check_never_happens(self):
        pass
        if False:
            pass



