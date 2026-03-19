# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class EofExceptionSwitchUser(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.code = self._io.read_u2le()
        _on = self.code
        if _on == 2:
            pass
            self.data = EofExceptionSwitchUser.Two(self._io, self, self._root)
        elif _on == 511:
            pass
            self.data = EofExceptionSwitchUser.One(self._io, self, self._root)


    def _fetch_instances(self):
        pass
        _on = self.code
        if _on == 2:
            pass
            self.data._fetch_instances()
        elif _on == 511:
            pass
            self.data._fetch_instances()

    class One(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.val = self._io.read_s2le()


        def _fetch_instances(self):
            pass


    class Two(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.val = self._io.read_u2le()


        def _fetch_instances(self):
            pass



