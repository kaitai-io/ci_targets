# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

from pkg_resources import parse_version
from kaitaistruct import __version__ as ks_version, KaitaiStruct, KaitaiStream, BytesIO


if parse_version(ks_version) < parse_version('0.7'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.7 or later is required, but you have %s" % (ks_version))

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
            self._root = _root if _root else self
            self._read()

        def _read(self):
            pass


    @property
    def mess_up(self):
        if hasattr(self, '_m_mess_up'):
            return self._m_mess_up if hasattr(self, '_m_mess_up') else None

        io = self._root._io
        _pos = io.pos()
        io.seek(8)
        _on = 2
        if _on == 1:
            self._raw__m_mess_up = io.read_bytes(2)
            io = KaitaiStream(BytesIO(self._raw__m_mess_up))
            self._m_mess_up = self._root.Dummy(io, self, self._root)
        elif _on == 2:
            self._raw__m_mess_up = io.read_bytes(2)
            io = KaitaiStream(BytesIO(self._raw__m_mess_up))
            self._m_mess_up = self._root.Dummy(io, self, self._root)
        else:
            self._m_mess_up = io.read_bytes(2)
        io.seek(_pos)
        return self._m_mess_up if hasattr(self, '_m_mess_up') else None


