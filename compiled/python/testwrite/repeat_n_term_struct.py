# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class RepeatNTermStruct(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(RepeatNTermStruct, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self._raw_records1 = []
        self.records1__outer_size = []
        self.records1 = []
        for i in range(2):
            self._raw_records1.append(self._io.read_bytes_term(170, False, True, True))
            self.records1__outer_size.append(len(self._raw_records1[i]))
            _io__raw_records1 = KaitaiStream(BytesIO(self._raw_records1[i]))
            _t_records1 = RepeatNTermStruct.BytesWrapper(_io__raw_records1, self, self._root)
            try:
                _t_records1._read()
            finally:
                self.records1.append(_t_records1)

        self._raw_records2 = []
        self.records2__outer_size = []
        self.records2 = []
        for i in range(2):
            self._raw_records2.append(self._io.read_bytes_term(170, True, True, True))
            self.records2__outer_size.append(len(self._raw_records2[i]))
            _io__raw_records2 = KaitaiStream(BytesIO(self._raw_records2[i]))
            _t_records2 = RepeatNTermStruct.BytesWrapper(_io__raw_records2, self, self._root)
            try:
                _t_records2._read()
            finally:
                self.records2.append(_t_records2)

        self._raw_records3 = []
        self.records3__outer_size = []
        self.records3 = []
        for i in range(2):
            self._raw_records3.append(self._io.read_bytes_term(85, False, False, True))
            self.records3__outer_size.append(len(self._raw_records3[i]))
            _io__raw_records3 = KaitaiStream(BytesIO(self._raw_records3[i]))
            _t_records3 = RepeatNTermStruct.BytesWrapper(_io__raw_records3, self, self._root)
            try:
                _t_records3._read()
            finally:
                self.records3.append(_t_records3)

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
        super(RepeatNTermStruct, self)._write__seq(io)
        self._raw_records1 = []
        for i in range(len(self.records1)):
            pass
            _io__raw_records1 = KaitaiStream(BytesIO(bytearray(self.records1__outer_size[i])))
            self._io.add_child_stream(_io__raw_records1)
            _pos2 = self._io.pos()
            self._io.seek(self._io.pos() + (self.records1__outer_size[i]))
            self._io.seek(self._io.pos() + (1))
            def handler(parent, _io__raw_records1=_io__raw_records1, i=i):
                self._raw_records1.append(_io__raw_records1.to_byte_array())
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
                self._raw_records2.append(_io__raw_records2.to_byte_array())
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
                self._raw_records3.append(_io__raw_records3.to_byte_array())
                if KaitaiStream.byte_array_index_of(self._raw_records3[i], 85) != -1:
                    raise kaitaistruct.ConsistencyError(u"raw(records3)", -1, KaitaiStream.byte_array_index_of(self._raw_records3[i], 85))
                parent.write_bytes(self._raw_records3[i])
                _pos = parent.pos()
                parent.write_u1(85)
                parent.seek(_pos)
            _io__raw_records3.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
            self.records3[i]._write__seq(_io__raw_records3)



    def _check(self):
        if len(self.records1) != 2:
            raise kaitaistruct.ConsistencyError(u"records1", 2, len(self.records1))
        for i in range(len(self.records1)):
            pass
            if self.records1[i]._root != self._root:
                raise kaitaistruct.ConsistencyError(u"records1", self._root, self.records1[i]._root)
            if self.records1[i]._parent != self:
                raise kaitaistruct.ConsistencyError(u"records1", self, self.records1[i]._parent)

        if len(self.records2) != 2:
            raise kaitaistruct.ConsistencyError(u"records2", 2, len(self.records2))
        for i in range(len(self.records2)):
            pass
            if self.records2[i]._root != self._root:
                raise kaitaistruct.ConsistencyError(u"records2", self._root, self.records2[i]._root)
            if self.records2[i]._parent != self:
                raise kaitaistruct.ConsistencyError(u"records2", self, self.records2[i]._parent)

        if len(self.records3) != 2:
            raise kaitaistruct.ConsistencyError(u"records3", 2, len(self.records3))
        for i in range(len(self.records3)):
            pass
            if self.records3[i]._root != self._root:
                raise kaitaistruct.ConsistencyError(u"records3", self._root, self.records3[i]._root)
            if self.records3[i]._parent != self:
                raise kaitaistruct.ConsistencyError(u"records3", self, self.records3[i]._parent)

        self._dirty = False

    class BytesWrapper(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super(RepeatNTermStruct.BytesWrapper, self).__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.value = self._io.read_bytes_full()
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(RepeatNTermStruct.BytesWrapper, self)._write__seq(io)
            self._io.write_bytes(self.value)
            if not self._io.is_eof():
                raise kaitaistruct.ConsistencyError(u"value", 0, self._io.size() - self._io.pos())


        def _check(self):
            self._dirty = False



