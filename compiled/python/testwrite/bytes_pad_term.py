# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class BytesPadTerm(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.str_pad = KaitaiStream.bytes_strip_right(self._io.read_bytes(20), 64)
        self.str_term = KaitaiStream.bytes_terminate(self._io.read_bytes(20), 64, False)
        self.str_term_and_pad = KaitaiStream.bytes_terminate(KaitaiStream.bytes_strip_right(self._io.read_bytes(20), 43), 64, False)
        self.str_term_include = KaitaiStream.bytes_terminate(self._io.read_bytes(20), 64, True)
        self._dirty = False


    def _fetch_instances(self):
        pass


    def _write__seq(self, io=None):
        super()._write__seq(io)
        self._io.write_bytes_limit(self.str_pad, 20, 64, 64)
        self._io.write_bytes_limit(self.str_term, 20, 64, 0)
        self._io.write_bytes_limit(self.str_term_and_pad, 20, 64, 43)
        self._io.write_bytes_limit(self.str_term_include, 20, 0, 0)


    def _check(self):
        if len(self.str_pad) > 20:
            raise kaitaistruct.ConsistencyError("str_pad", 20, len(self.str_pad))
        if  ((len(self.str_pad) != 0) and (self.str_pad[-1] == 64)) :
            raise kaitaistruct.ConsistencyError("str_pad", 64, self.str_pad[-1])
        if len(self.str_term) > 20:
            raise kaitaistruct.ConsistencyError("str_term", 20, len(self.str_term))
        if KaitaiStream.byte_array_index_of(self.str_term, 64) != -1:
            raise kaitaistruct.ConsistencyError("str_term", -1, KaitaiStream.byte_array_index_of(self.str_term, 64))
        if len(self.str_term_and_pad) > 20:
            raise kaitaistruct.ConsistencyError("str_term_and_pad", 20, len(self.str_term_and_pad))
        if KaitaiStream.byte_array_index_of(self.str_term_and_pad, 64) != -1:
            raise kaitaistruct.ConsistencyError("str_term_and_pad", -1, KaitaiStream.byte_array_index_of(self.str_term_and_pad, 64))
        if len(self.str_term_and_pad) == 20:
            pass
            if  ((len(self.str_term_and_pad) != 0) and (self.str_term_and_pad[-1] == 43)) :
                raise kaitaistruct.ConsistencyError("str_term_and_pad", 43, self.str_term_and_pad[-1])

        if len(self.str_term_include) > 20:
            raise kaitaistruct.ConsistencyError("str_term_include", 20, len(self.str_term_include))
        if len(self.str_term_include) < 20:
            pass
            if len(self.str_term_include) == 0:
                raise kaitaistruct.ConsistencyError("str_term_include", 0, len(self.str_term_include))
            if KaitaiStream.byte_array_index_of(self.str_term_include, 64) != len(self.str_term_include) - 1:
                raise kaitaistruct.ConsistencyError("str_term_include", len(self.str_term_include) - 1, KaitaiStream.byte_array_index_of(self.str_term_include, 64))

        if len(self.str_term_include) == 20:
            pass
            if  ((KaitaiStream.byte_array_index_of(self.str_term_include, 64) != -1) and (KaitaiStream.byte_array_index_of(self.str_term_include, 64) != len(self.str_term_include) - 1)) :
                raise kaitaistruct.ConsistencyError("str_term_include", len(self.str_term_include) - 1, KaitaiStream.byte_array_index_of(self.str_term_include, 64))

        self._dirty = False


