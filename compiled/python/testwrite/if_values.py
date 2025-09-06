# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class IfValues(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(IfValues, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.codes = []
        for i in range(3):
            _t_codes = IfValues.Code(self._io, self, self._root)
            try:
                _t_codes._read()
            finally:
                self.codes.append(_t_codes)

        self._dirty = False


    def _fetch_instances(self):
        pass
        for i in range(len(self.codes)):
            pass
            self.codes[i]._fetch_instances()



    def _write__seq(self, io=None):
        super(IfValues, self)._write__seq(io)
        for i in range(len(self.codes)):
            pass
            self.codes[i]._write__seq(self._io)



    def _check(self):
        if len(self.codes) != 3:
            raise kaitaistruct.ConsistencyError(u"codes", len(self.codes), 3)
        for i in range(len(self.codes)):
            pass
            if self.codes[i]._root != self._root:
                raise kaitaistruct.ConsistencyError(u"codes", self.codes[i]._root, self._root)
            if self.codes[i]._parent != self:
                raise kaitaistruct.ConsistencyError(u"codes", self.codes[i]._parent, self)

        self._dirty = False

    class Code(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super(IfValues.Code, self).__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.opcode = self._io.read_u1()
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(IfValues.Code, self)._write__seq(io)
            self._io.write_u1(self.opcode)


        def _check(self):
            self._dirty = False

        @property
        def half_opcode(self):
            if hasattr(self, '_m_half_opcode'):
                return self._m_half_opcode

            if self.opcode % 2 == 0:
                pass
                self._m_half_opcode = self.opcode // 2

            return getattr(self, '_m_half_opcode', None)

        def _invalidate_half_opcode(self):
            del self._m_half_opcode


