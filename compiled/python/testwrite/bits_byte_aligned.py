# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class BitsByteAligned(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.one = self._io.read_bits_int_be(6)
        self.byte_1 = self._io.read_u1()
        self.two = self._io.read_bits_int_be(3)
        self.three = self._io.read_bits_int_be(1) != 0
        self.byte_2 = self._io.read_bytes(1)
        self.four = self._io.read_bits_int_be(14)
        self._raw_byte_3 = self._io.read_bytes(3)
        _io__raw_byte_3 = KaitaiStream(BytesIO(self._raw_byte_3))
        self.byte_3 = BitsByteAligned.Foo(_io__raw_byte_3, self, self._root)
        self.byte_3._read()
        self.full_byte = self._io.read_bits_int_be(8)
        self.byte_4 = self._io.read_u1()
        self.five = self._io.read_bits_int_be(22)
        self.bytes_term = self._io.read_bytes_term(69, True, True, True)
        self.six = self._io.read_bits_int_be(8)
        self._dirty = False


    def _fetch_instances(self):
        pass
        self.byte_3._fetch_instances()


    def _write__seq(self, io=None):
        super()._write__seq(io)
        self._io.write_bits_int_be(6, self.one)
        self._io.write_u1(self.byte_1)
        self._io.write_bits_int_be(3, self.two)
        self._io.write_bits_int_be(1, int(self.three))
        self._io.write_bytes(self.byte_2)
        self._io.write_bits_int_be(14, self.four)
        _io__raw_byte_3 = KaitaiStream(BytesIO(bytes(3)))
        self._io.add_child_stream(_io__raw_byte_3)
        _pos2 = self._io.pos()
        self._io.seek(self._io.pos() + (3))
        def handler(parent, _io__raw_byte_3=_io__raw_byte_3):
            self._raw_byte_3 = _io__raw_byte_3.to_byte_array()
            if len(self._raw_byte_3) != 3:
                raise kaitaistruct.ConsistencyError("raw(byte_3)", 3, len(self._raw_byte_3))
            parent.write_bytes(self._raw_byte_3)
        _io__raw_byte_3.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
        self.byte_3._write__seq(_io__raw_byte_3)
        self._io.write_bits_int_be(8, self.full_byte)
        self._io.write_u1(self.byte_4)
        self._io.write_bits_int_be(22, self.five)
        self._io.write_bytes(self.bytes_term)
        self._io.write_bits_int_be(8, self.six)


    def _check(self):
        if len(self.byte_2) != 1:
            raise kaitaistruct.ConsistencyError("byte_2", 1, len(self.byte_2))
        if self.byte_3._root != self._root:
            raise kaitaistruct.ConsistencyError("byte_3", self._root, self.byte_3._root)
        if self.byte_3._parent != self:
            raise kaitaistruct.ConsistencyError("byte_3", self, self.byte_3._parent)
        if len(self.bytes_term) == 0:
            raise kaitaistruct.ConsistencyError("bytes_term", 0, len(self.bytes_term))
        if KaitaiStream.byte_array_index_of(self.bytes_term, 69) != len(self.bytes_term) - 1:
            raise kaitaistruct.ConsistencyError("bytes_term", len(self.bytes_term) - 1, KaitaiStream.byte_array_index_of(self.bytes_term, 69))
        self._dirty = False

    class Foo(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.inner = self._io.read_bits_int_be(19)
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super()._write__seq(io)
            self._io.write_bits_int_be(19, self.inner)


        def _check(self):
            self._dirty = False



