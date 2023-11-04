# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class SwitchRepeatExpr(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.code = self._io.read_u1()
        self.size = self._io.read_u4le()
        self._raw_body = []
        self.body = []
        for i in range(1):
            _on = self.code
            if _on == 17:
                self._raw_body.append(self._io.read_bytes(self.size))
                _io__raw_body = KaitaiStream(BytesIO(self._raw_body[i]))
                self.body.append(SwitchRepeatExpr.One(_io__raw_body, self, self._root))
            elif _on == 34:
                self._raw_body.append(self._io.read_bytes(self.size))
                _io__raw_body = KaitaiStream(BytesIO(self._raw_body[i]))
                self.body.append(SwitchRepeatExpr.Two(_io__raw_body, self, self._root))
            else:
                self.body.append(self._io.read_bytes(self.size))


    class One(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self._read()

        def _read(self):
            self.first = self._io.read_bytes_full()


    class Two(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self._read()

        def _read(self):
            self.second = self._io.read_bytes_full()



