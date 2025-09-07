# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ValidFailRepeatInst(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(ValidFailRepeatInst, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._should_write_inst = False
        self.inst__enabled = True

    def _read(self):
        if len(self.inst) == 0:
            pass
            self.a = self._io.read_bytes(0)

        self._dirty = False


    def _fetch_instances(self):
        pass
        if len(self.inst) == 0:
            pass

        _ = self.inst
        if hasattr(self, '_m_inst'):
            pass
            for i in range(len(self._m_inst)):
                pass




    def _write__seq(self, io=None):
        super(ValidFailRepeatInst, self)._write__seq(io)
        self._should_write_inst = self.inst__enabled
        if len(self.inst) == 0:
            pass
            if len(self.a) != 0:
                raise kaitaistruct.ConsistencyError(u"a", 0, len(self.a))
            self._io.write_bytes(self.a)



    def _check(self):
        if self.inst__enabled:
            pass
            for i in range(len(self._m_inst)):
                pass
                if not self._m_inst[i] == 305419896:
                    raise kaitaistruct.ValidationNotEqualError(305419896, self._m_inst[i], None, u"/instances/inst")


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
        self._io.seek(0)
        self._m_inst = []
        i = 0
        while not self._io.is_eof():
            self._m_inst.append(self._io.read_u4be())
            if not self._m_inst[i] == 305419896:
                raise kaitaistruct.ValidationNotEqualError(305419896, self._m_inst[i], self._io, u"/instances/inst")
            i += 1

        self._io.seek(_pos)
        return getattr(self, '_m_inst', None)

    @inst.setter
    def inst(self, v):
        self._dirty = True
        self._m_inst = v

    def _write_inst(self):
        self._should_write_inst = False
        _pos = self._io.pos()
        self._io.seek(0)
        for i in range(len(self._m_inst)):
            pass
            if self._io.is_eof():
                raise kaitaistruct.ConsistencyError(u"inst", 0, self._io.size() - self._io.pos())
            self._io.write_u4be(self._m_inst[i])

        if not self._io.is_eof():
            raise kaitaistruct.ConsistencyError(u"inst", 0, self._io.size() - self._io.pos())
        self._io.seek(_pos)


