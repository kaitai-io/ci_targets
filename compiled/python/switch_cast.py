# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class SwitchCast(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.opcodes = []
        i = 0
        while not self._io.is_eof():
            self.opcodes.append(SwitchCast.Opcode(self._io, self, self._root))
            i += 1


    class Intval(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.value = self._io.read_u1()


    class Opcode(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.code = self._io.read_u1()
            _on = self.code
            if _on == 73:
                self.body = SwitchCast.Intval(self._io, self, self._root)
            elif _on == 83:
                self.body = SwitchCast.Strval(self._io, self, self._root)


    class Strval(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.value = (self._io.read_bytes_term(0, False, True, True)).decode(u"ASCII")


    @property
    def err_cast(self):
        if hasattr(self, '_m_err_cast'):
            return self._m_err_cast

        self._m_err_cast = self.opcodes[2].body
        return getattr(self, '_m_err_cast', None)

    @property
    def first_obj(self):
        if hasattr(self, '_m_first_obj'):
            return self._m_first_obj

        self._m_first_obj = self.opcodes[0].body
        return getattr(self, '_m_first_obj', None)

    @property
    def second_val(self):
        if hasattr(self, '_m_second_val'):
            return self._m_second_val

        self._m_second_val = self.opcodes[1].body.value
        return getattr(self, '_m_second_val', None)


