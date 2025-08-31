# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class RecursiveOne(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.one = self._io.read_u1()
        _on = self.one & 3
        if _on == 0:
            pass
            self.next = RecursiveOne(self._io, self, self._root)
            self.next._read()
        elif _on == 1:
            pass
            self.next = RecursiveOne(self._io, self, self._root)
            self.next._read()
        elif _on == 2:
            pass
            self.next = RecursiveOne(self._io, self, self._root)
            self.next._read()
        elif _on == 3:
            pass
            self.next = RecursiveOne.Fini(self._io, self, self._root)
            self.next._read()


    def _fetch_instances(self):
        pass
        _on = self.one & 3
        if _on == 0:
            pass
            self.next._fetch_instances()
        elif _on == 1:
            pass
            self.next._fetch_instances()
        elif _on == 2:
            pass
            self.next._fetch_instances()
        elif _on == 3:
            pass
            self.next._fetch_instances()


    def _write__seq(self, io=None):
        super(RecursiveOne, self)._write__seq(io)
        self._io.write_u1(self.one)
        _on = self.one & 3
        if _on == 0:
            pass
            self.next._write__seq(self._io)
        elif _on == 1:
            pass
            self.next._write__seq(self._io)
        elif _on == 2:
            pass
            self.next._write__seq(self._io)
        elif _on == 3:
            pass
            self.next._write__seq(self._io)


    def _check(self):
        pass
        _on = self.one & 3
        if _on == 0:
            pass
            if self.next._root != self._root:
                raise kaitaistruct.ConsistencyError(u"next", self.next._root, self._root)
            if self.next._parent != self:
                raise kaitaistruct.ConsistencyError(u"next", self.next._parent, self)
        elif _on == 1:
            pass
            if self.next._root != self._root:
                raise kaitaistruct.ConsistencyError(u"next", self.next._root, self._root)
            if self.next._parent != self:
                raise kaitaistruct.ConsistencyError(u"next", self.next._parent, self)
        elif _on == 2:
            pass
            if self.next._root != self._root:
                raise kaitaistruct.ConsistencyError(u"next", self.next._root, self._root)
            if self.next._parent != self:
                raise kaitaistruct.ConsistencyError(u"next", self.next._parent, self)
        elif _on == 3:
            pass
            if self.next._root != self._root:
                raise kaitaistruct.ConsistencyError(u"next", self.next._root, self._root)
            if self.next._parent != self:
                raise kaitaistruct.ConsistencyError(u"next", self.next._parent, self)

    class Fini(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.finisher = self._io.read_u2le()


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(RecursiveOne.Fini, self)._write__seq(io)
            self._io.write_u2le(self.finisher)


        def _check(self):
            pass



