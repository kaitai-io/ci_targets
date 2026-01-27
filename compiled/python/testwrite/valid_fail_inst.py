# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class ValidFailInst(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._should_write_inst = False
        self.inst__enabled = True

    def _read(self):
        if self.inst >= 0:
            pass
            self.a = self._io.read_u1()

        self._dirty = False


    def _fetch_instances(self):
        pass
        if self.inst >= 0:
            pass

        _ = self.inst
        if hasattr(self, '_m_inst'):
            pass



    def _write__seq(self, io=None):
        super()._write__seq(io)
        self._should_write_inst = self.inst__enabled
        if self.inst >= 0:
            pass
            self._io.write_u1(self.a)



    def _check(self):
        if self.inst__enabled:
            pass
            if not self._m_inst == 80:
                raise kaitaistruct.ValidationNotEqualError(80, self._m_inst, None, "/instances/inst")

        self._dirty = False

    @property
    def inst(self):
        if self._should_write_inst:
            self._write_inst()
        if hasattr(self, '_m_inst'):
            return self._m_inst

        if not self.inst__enabled:
            return None

        _pos = self._io.pos()
        self._io.seek(5)
        self._m_inst = self._io.read_u1()
        if not self._m_inst == 80:
            raise kaitaistruct.ValidationNotEqualError(80, self._m_inst, self._io, "/instances/inst")
        self._io.seek(_pos)
        return getattr(self, '_m_inst', None)

    @inst.setter
    def inst(self, v):
        self._dirty = True
        self._m_inst = v

    def _write_inst(self):
        self._should_write_inst = False
        _pos = self._io.pos()
        self._io.seek(5)
        self._io.write_u1(self._m_inst)
        self._io.seek(_pos)


