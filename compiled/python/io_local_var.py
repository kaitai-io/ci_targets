# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class IoLocalVar(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.skip = self._io.read_bytes(20)
        if self.mess_up._io.pos() < 0:
            self.always_null = self._io.read_u1()

        self.followup = self._io.read_u1()

    class Dummy(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            pass


    @property
    def mess_up(self):
        if hasattr(self, '_m_mess_up'):
            return self._m_mess_up

        io = self._root._io
        _pos = io.pos()
        io.seek(8)
        _on = 2
        if _on == 1:
            self._raw__m_mess_up = io.read_bytes(2)
            _io__raw__m_mess_up = KaitaiStream(BytesIO(self._raw__m_mess_up))
            self._m_mess_up = IoLocalVar.Dummy(_io__raw__m_mess_up, self, self._root)
        elif _on == 2:
            self._raw__m_mess_up = io.read_bytes(2)
            _io__raw__m_mess_up = KaitaiStream(BytesIO(self._raw__m_mess_up))
            self._m_mess_up = IoLocalVar.Dummy(_io__raw__m_mess_up, self, self._root)
        else:
            self._m_mess_up = io.read_bytes(2)
        io.seek(_pos)
        return getattr(self, '_m_mess_up', None)


