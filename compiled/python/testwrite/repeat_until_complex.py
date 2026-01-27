# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class RepeatUntilComplex(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.first = []
        i = 0
        while True:
            _t_first = RepeatUntilComplex.TypeU1(self._io, self, self._root)
            try:
                _t_first._read()
            finally:
                _ = _t_first
                self.first.append(_)
            if _.count == 0:
                break
            i += 1
        self.second = []
        i = 0
        while True:
            _t_second = RepeatUntilComplex.TypeU2(self._io, self, self._root)
            try:
                _t_second._read()
            finally:
                _ = _t_second
                self.second.append(_)
            if _.count == 0:
                break
            i += 1
        self.third = []
        i = 0
        while True:
            _ = self._io.read_u1()
            self.third.append(_)
            if _ == 0:
                break
            i += 1
        self._dirty = False


    def _fetch_instances(self):
        pass
        for i in range(len(self.first)):
            pass
            self.first[i]._fetch_instances()

        for i in range(len(self.second)):
            pass
            self.second[i]._fetch_instances()

        for i in range(len(self.third)):
            pass



    def _write__seq(self, io=None):
        super()._write__seq(io)
        for i in range(len(self.first)):
            pass
            self.first[i]._write__seq(self._io)

        for i in range(len(self.second)):
            pass
            self.second[i]._write__seq(self._io)

        for i in range(len(self.third)):
            pass
            self._io.write_u1(self.third[i])



    def _check(self):
        if len(self.first) == 0:
            raise kaitaistruct.ConsistencyError("first", 0, len(self.first))
        for i in range(len(self.first)):
            pass
            if self.first[i]._root != self._root:
                raise kaitaistruct.ConsistencyError("first", self._root, self.first[i]._root)
            if self.first[i]._parent != self:
                raise kaitaistruct.ConsistencyError("first", self, self.first[i]._parent)
            _ = self.first[i]
            if (_.count == 0) != (i == len(self.first) - 1):
                raise kaitaistruct.ConsistencyError("first", i == len(self.first) - 1, _.count == 0)

        if len(self.second) == 0:
            raise kaitaistruct.ConsistencyError("second", 0, len(self.second))
        for i in range(len(self.second)):
            pass
            if self.second[i]._root != self._root:
                raise kaitaistruct.ConsistencyError("second", self._root, self.second[i]._root)
            if self.second[i]._parent != self:
                raise kaitaistruct.ConsistencyError("second", self, self.second[i]._parent)
            _ = self.second[i]
            if (_.count == 0) != (i == len(self.second) - 1):
                raise kaitaistruct.ConsistencyError("second", i == len(self.second) - 1, _.count == 0)

        if len(self.third) == 0:
            raise kaitaistruct.ConsistencyError("third", 0, len(self.third))
        for i in range(len(self.third)):
            pass
            _ = self.third[i]
            if (_ == 0) != (i == len(self.third) - 1):
                raise kaitaistruct.ConsistencyError("third", i == len(self.third) - 1, _ == 0)

        self._dirty = False

    class TypeU1(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.count = self._io.read_u1()
            self.values = []
            for i in range(self.count):
                self.values.append(self._io.read_u1())

            self._dirty = False


        def _fetch_instances(self):
            pass
            for i in range(len(self.values)):
                pass



        def _write__seq(self, io=None):
            super()._write__seq(io)
            self._io.write_u1(self.count)
            for i in range(len(self.values)):
                pass
                self._io.write_u1(self.values[i])



        def _check(self):
            if len(self.values) != self.count:
                raise kaitaistruct.ConsistencyError("values", self.count, len(self.values))
            for i in range(len(self.values)):
                pass

            self._dirty = False


    class TypeU2(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.count = self._io.read_u2le()
            self.values = []
            for i in range(self.count):
                self.values.append(self._io.read_u2le())

            self._dirty = False


        def _fetch_instances(self):
            pass
            for i in range(len(self.values)):
                pass



        def _write__seq(self, io=None):
            super()._write__seq(io)
            self._io.write_u2le(self.count)
            for i in range(len(self.values)):
                pass
                self._io.write_u2le(self.values[i])



        def _check(self):
            if len(self.values) != self.count:
                raise kaitaistruct.ConsistencyError("values", self.count, len(self.values))
            for i in range(len(self.values)):
                pass

            self._dirty = False



