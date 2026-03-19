# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class EofExceptionSwitchUser(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.code = self._io.read_u2le()
        _on = self.code
        if _on == 2:
            pass
            self.data = EofExceptionSwitchUser.Two(self._io, self, self._root)
            self.data._read()
        elif _on == 511:
            pass
            self.data = EofExceptionSwitchUser.One(self._io, self, self._root)
            self.data._read()
        self._dirty = False


    def _fetch_instances(self):
        pass
        _on = self.code
        if _on == 2:
            pass
            self.data._fetch_instances()
        elif _on == 511:
            pass
            self.data._fetch_instances()


    def _write__seq(self, io=None):
        super()._write__seq(io)
        self._io.write_u2le(self.code)
        _on = self.code
        if _on == 2:
            pass
            self.data._write__seq(self._io)
        elif _on == 511:
            pass
            self.data._write__seq(self._io)


    def _check(self):
        _on = self.code
        if _on == 2:
            pass
            if self.data._root != self._root:
                raise kaitaistruct.ConsistencyError("data", self._root, self.data._root)
            if self.data._parent != self:
                raise kaitaistruct.ConsistencyError("data", self, self.data._parent)
        elif _on == 511:
            pass
            if self.data._root != self._root:
                raise kaitaistruct.ConsistencyError("data", self._root, self.data._root)
            if self.data._parent != self:
                raise kaitaistruct.ConsistencyError("data", self, self.data._parent)
        self._dirty = False

    class One(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.val = self._io.read_s2le()
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super()._write__seq(io)
            self._io.write_s2le(self.val)


        def _check(self):
            self._dirty = False


    class Two(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.val = self._io.read_u2le()
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super()._write__seq(io)
            self._io.write_u2le(self.val)


        def _check(self):
            self._dirty = False



