# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ProcessBytesPadTerm(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self._raw_str_pad = KaitaiStream.bytes_strip_right(self._io.read_bytes(20), 64)
        self.str_pad = KaitaiStream.process_xor_one(self._raw_str_pad, 21)
        self._raw_str_term = KaitaiStream.bytes_terminate(self._io.read_bytes(20), 64, False)
        self.str_term = KaitaiStream.process_xor_one(self._raw_str_term, 21)
        self._raw_str_term_and_pad = KaitaiStream.bytes_terminate(KaitaiStream.bytes_strip_right(self._io.read_bytes(20), 43), 64, False)
        self.str_term_and_pad = KaitaiStream.process_xor_one(self._raw_str_term_and_pad, 21)
        self._raw_str_term_include = KaitaiStream.bytes_terminate(self._io.read_bytes(20), 64, True)
        self.str_term_include = KaitaiStream.process_xor_one(self._raw_str_term_include, 21)


    def _fetch_instances(self):
        pass


    def _write__seq(self, io=None):
        super(ProcessBytesPadTerm, self)._write__seq(io)
        self._raw_str_pad = KaitaiStream.process_xor_one(self.str_pad, 21)
        if len(self._raw_str_pad) > 20:
            raise kaitaistruct.ConsistencyError(u"str_pad", len(self._raw_str_pad), 20)
        if  ((len(self._raw_str_pad) != 0) and (KaitaiStream.byte_array_index(self._raw_str_pad, -1) == 64)) :
            raise kaitaistruct.ConsistencyError(u"str_pad", KaitaiStream.byte_array_index(self._raw_str_pad, -1), 64)
        self._io.write_bytes_limit(self._raw_str_pad, 20, 64, 64)
        self._raw_str_term = KaitaiStream.process_xor_one(self.str_term, 21)
        if len(self._raw_str_term) > 20:
            raise kaitaistruct.ConsistencyError(u"str_term", len(self._raw_str_term), 20)
        if KaitaiStream.byte_array_index_of(self._raw_str_term, 64) != -1:
            raise kaitaistruct.ConsistencyError(u"str_term", KaitaiStream.byte_array_index_of(self._raw_str_term, 64), -1)
        self._io.write_bytes_limit(self._raw_str_term, 20, 64, 0)
        self._raw_str_term_and_pad = KaitaiStream.process_xor_one(self.str_term_and_pad, 21)
        if len(self._raw_str_term_and_pad) > 20:
            raise kaitaistruct.ConsistencyError(u"str_term_and_pad", len(self._raw_str_term_and_pad), 20)
        if KaitaiStream.byte_array_index_of(self._raw_str_term_and_pad, 64) != -1:
            raise kaitaistruct.ConsistencyError(u"str_term_and_pad", KaitaiStream.byte_array_index_of(self._raw_str_term_and_pad, 64), -1)
        if len(self._raw_str_term_and_pad) == 20:
            pass
            if  ((len(self._raw_str_term_and_pad) != 0) and (KaitaiStream.byte_array_index(self._raw_str_term_and_pad, -1) == 43)) :
                raise kaitaistruct.ConsistencyError(u"str_term_and_pad", KaitaiStream.byte_array_index(self._raw_str_term_and_pad, -1), 43)

        self._io.write_bytes_limit(self._raw_str_term_and_pad, 20, 64, 43)
        self._raw_str_term_include = KaitaiStream.process_xor_one(self.str_term_include, 21)
        if len(self._raw_str_term_include) > 20:
            raise kaitaistruct.ConsistencyError(u"str_term_include", len(self._raw_str_term_include), 20)
        if len(self._raw_str_term_include) < 20:
            pass
            if len(self._raw_str_term_include) == 0:
                raise kaitaistruct.ConsistencyError(u"str_term_include", len(self._raw_str_term_include), 0)
            if KaitaiStream.byte_array_index_of(self._raw_str_term_include, 64) != len(self._raw_str_term_include) - 1:
                raise kaitaistruct.ConsistencyError(u"str_term_include", KaitaiStream.byte_array_index_of(self._raw_str_term_include, 64), len(self._raw_str_term_include) - 1)

        if len(self._raw_str_term_include) == 20:
            pass
            if  ((KaitaiStream.byte_array_index_of(self._raw_str_term_include, 64) != -1) and (KaitaiStream.byte_array_index_of(self._raw_str_term_include, 64) != len(self._raw_str_term_include) - 1)) :
                raise kaitaistruct.ConsistencyError(u"str_term_include", KaitaiStream.byte_array_index_of(self._raw_str_term_include, 64), len(self._raw_str_term_include) - 1)

        self._io.write_bytes_limit(self._raw_str_term_include, 20, 0, 0)


    def _check(self):
        pass


