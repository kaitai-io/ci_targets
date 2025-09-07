# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class RepeatUntilTermStruct(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(RepeatUntilTermStruct, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self._raw_records1 = []
        self.records1__outer_size = []
        self.records1 = []
        i = 0
        while True:
            _buf = self._io.read_bytes_term(170, False, True, True)
            self._raw_records1.append(_buf)
            self.records1__outer_size.append(len(self._raw_records1[i]))
            _io__raw_records1 = KaitaiStream(BytesIO(self._raw_records1[-1]))
            _t_records1 = RepeatUntilTermStruct.BytesWrapper(_io__raw_records1, self, self._root)
            try:
                _t_records1._read()
            finally:
                _ = _t_records1
                self.records1.append(_)
            if len(_.value) == 0:
                break
            i += 1
        self._raw_records2 = []
        self.records2__outer_size = []
        self.records2 = []
        i = 0
        while True:
            _buf = self._io.read_bytes_term(170, True, True, True)
            self._raw_records2.append(_buf)
            self.records2__outer_size.append(len(self._raw_records2[i]))
            _io__raw_records2 = KaitaiStream(BytesIO(self._raw_records2[-1]))
            _t_records2 = RepeatUntilTermStruct.BytesWrapper(_io__raw_records2, self, self._root)
            try:
                _t_records2._read()
            finally:
                _ = _t_records2
                self.records2.append(_)
            if _.value != b"\xAA":
                break
            i += 1
        self._raw_records3 = []
        self.records3__outer_size = []
        self.records3 = []
        i = 0
        while True:
            _buf = self._io.read_bytes_term(85, False, False, True)
            self._raw_records3.append(_buf)
            self.records3__outer_size.append(len(self._raw_records3[i]))
            _io__raw_records3 = KaitaiStream(BytesIO(self._raw_records3[-1]))
            _t_records3 = RepeatUntilTermStruct.BytesWrapper(_io__raw_records3, self, self._root)
            try:
                _t_records3._read()
            finally:
                _ = _t_records3
                self.records3.append(_)
            if _.value == self.records1[-1].value:
                break
            i += 1
        self._dirty = False


    def _fetch_instances(self):
        pass
        for i in range(len(self.records1)):
            pass
            self.records1[i]._fetch_instances()

        for i in range(len(self.records2)):
            pass
            self.records2[i]._fetch_instances()

        for i in range(len(self.records3)):
            pass
            self.records3[i]._fetch_instances()



    def _write__seq(self, io=None):
        super(RepeatUntilTermStruct, self)._write__seq(io)
        self._raw_records1 = []
        for i in range(len(self.records1)):
            pass
            _io__raw_records1 = KaitaiStream(BytesIO(bytearray(self.records1__outer_size[i])))
            self._io.add_child_stream(_io__raw_records1)
            _pos2 = self._io.pos()
            self._io.seek(self._io.pos() + (self.records1__outer_size[i]))
            self._io.seek(self._io.pos() + (1))
            def handler(parent, _io__raw_records1=_io__raw_records1, i=i):
                _buf = _io__raw_records1.to_byte_array()
                self._raw_records1.append(_buf)
                if KaitaiStream.byte_array_index_of(self._raw_records1[i], 170) != -1:
                    raise kaitaistruct.ConsistencyError(u"raw(records1)", -1, KaitaiStream.byte_array_index_of(self._raw_records1[i], 170))
                parent.write_bytes(self._raw_records1[i])
                parent.write_u1(170)
            _io__raw_records1.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
            self.records1[i]._write__seq(_io__raw_records1)

        self._raw_records2 = []
        for i in range(len(self.records2)):
            pass
            _io__raw_records2 = KaitaiStream(BytesIO(bytearray(self.records2__outer_size[i])))
            self._io.add_child_stream(_io__raw_records2)
            _pos2 = self._io.pos()
            self._io.seek(self._io.pos() + (self.records2__outer_size[i]))
            def handler(parent, _io__raw_records2=_io__raw_records2, i=i):
                _buf = _io__raw_records2.to_byte_array()
                self._raw_records2.append(_buf)
                if len(self._raw_records2[i]) == 0:
                    raise kaitaistruct.ConsistencyError(u"raw(records2)", 0, len(self._raw_records2[i]))
                if KaitaiStream.byte_array_index_of(self._raw_records2[i], 170) != len(self._raw_records2[i]) - 1:
                    raise kaitaistruct.ConsistencyError(u"raw(records2)", len(self._raw_records2[i]) - 1, KaitaiStream.byte_array_index_of(self._raw_records2[i], 170))
                parent.write_bytes(self._raw_records2[i])
            _io__raw_records2.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
            self.records2[i]._write__seq(_io__raw_records2)

        self._raw_records3 = []
        for i in range(len(self.records3)):
            pass
            _io__raw_records3 = KaitaiStream(BytesIO(bytearray(self.records3__outer_size[i])))
            self._io.add_child_stream(_io__raw_records3)
            _pos2 = self._io.pos()
            self._io.seek(self._io.pos() + (self.records3__outer_size[i]))
            def handler(parent, _io__raw_records3=_io__raw_records3, i=i):
                _buf = _io__raw_records3.to_byte_array()
                self._raw_records3.append(_buf)
                if KaitaiStream.byte_array_index_of(self._raw_records3[i], 85) != -1:
                    raise kaitaistruct.ConsistencyError(u"raw(records3)", -1, KaitaiStream.byte_array_index_of(self._raw_records3[i], 85))
                parent.write_bytes(self._raw_records3[i])
                _pos = parent.pos()
                parent.write_u1(85)
                parent.seek(_pos)
            _io__raw_records3.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
            self.records3[i]._write__seq(_io__raw_records3)



    def _check(self):
        if len(self.records1) == 0:
            raise kaitaistruct.ConsistencyError(u"records1", 0, len(self.records1))
        for i in range(len(self.records1)):
            pass
            if self.records1[i]._root != self._root:
                raise kaitaistruct.ConsistencyError(u"records1", self._root, self.records1[i]._root)
            if self.records1[i]._parent != self:
                raise kaitaistruct.ConsistencyError(u"records1", self, self.records1[i]._parent)
            _ = self.records1[i]
            if (len(_.value) == 0) != (i == len(self.records1) - 1):
                raise kaitaistruct.ConsistencyError(u"records1", i == len(self.records1) - 1, len(_.value) == 0)

        if len(self.records2) == 0:
            raise kaitaistruct.ConsistencyError(u"records2", 0, len(self.records2))
        for i in range(len(self.records2)):
            pass
            if self.records2[i]._root != self._root:
                raise kaitaistruct.ConsistencyError(u"records2", self._root, self.records2[i]._root)
            if self.records2[i]._parent != self:
                raise kaitaistruct.ConsistencyError(u"records2", self, self.records2[i]._parent)
            _ = self.records2[i]
            if (_.value != b"\xAA") != (i == len(self.records2) - 1):
                raise kaitaistruct.ConsistencyError(u"records2", i == len(self.records2) - 1, _.value != b"\xAA")

        if len(self.records3) == 0:
            raise kaitaistruct.ConsistencyError(u"records3", 0, len(self.records3))
        for i in range(len(self.records3)):
            pass
            if self.records3[i]._root != self._root:
                raise kaitaistruct.ConsistencyError(u"records3", self._root, self.records3[i]._root)
            if self.records3[i]._parent != self:
                raise kaitaistruct.ConsistencyError(u"records3", self, self.records3[i]._parent)
            _ = self.records3[i]
            if (_.value == self.records1[-1].value) != (i == len(self.records3) - 1):
                raise kaitaistruct.ConsistencyError(u"records3", i == len(self.records3) - 1, _.value == self.records1[-1].value)

        self._dirty = False

    class BytesWrapper(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super(RepeatUntilTermStruct.BytesWrapper, self).__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.value = self._io.read_bytes_full()
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(RepeatUntilTermStruct.BytesWrapper, self)._write__seq(io)
            self._io.write_bytes(self.value)
            if not self._io.is_eof():
                raise kaitaistruct.ConsistencyError(u"value", 0, self._io.size() - self._io.pos())


        def _check(self):
            self._dirty = False



