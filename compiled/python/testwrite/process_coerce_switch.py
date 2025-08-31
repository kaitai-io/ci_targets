# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ProcessCoerceSwitch(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.buf_type = self._io.read_u1()
        self.flag = self._io.read_u1()
        if self.flag == 0:
            pass
            _on = self.buf_type
            if _on == 0:
                pass
                self._raw_buf_unproc = self._io.read_bytes(4)
                _io__raw_buf_unproc = KaitaiStream(BytesIO(self._raw_buf_unproc))
                self.buf_unproc = ProcessCoerceSwitch.Foo(_io__raw_buf_unproc, self, self._root)
                self.buf_unproc._read()
            else:
                pass
                self.buf_unproc = self._io.read_bytes(4)

        if self.flag != 0:
            pass
            _on = self.buf_type
            if _on == 0:
                pass
                self._raw__raw_buf_proc = self._io.read_bytes(4)
                self._raw_buf_proc = KaitaiStream.process_xor_one(self._raw__raw_buf_proc, 170)
                _io__raw_buf_proc = KaitaiStream(BytesIO(self._raw_buf_proc))
                self.buf_proc = ProcessCoerceSwitch.Foo(_io__raw_buf_proc, self, self._root)
                self.buf_proc._read()
            else:
                pass
                self._raw_buf_proc = self._io.read_bytes(4)
                self.buf_proc = KaitaiStream.process_xor_one(self._raw_buf_proc, 170)



    def _fetch_instances(self):
        pass
        if self.flag == 0:
            pass
            _on = self.buf_type
            if _on == 0:
                pass
                self.buf_unproc._fetch_instances()
            else:
                pass

        if self.flag != 0:
            pass
            _on = self.buf_type
            if _on == 0:
                pass
                self.buf_proc._fetch_instances()
            else:
                pass



    def _write__seq(self, io=None):
        super(ProcessCoerceSwitch, self)._write__seq(io)
        self._io.write_u1(self.buf_type)
        self._io.write_u1(self.flag)
        if self.flag == 0:
            pass
            _on = self.buf_type
            if _on == 0:
                pass
                _io__raw_buf_unproc = KaitaiStream(BytesIO(bytearray(4)))
                self._io.add_child_stream(_io__raw_buf_unproc)
                _pos2 = self._io.pos()
                self._io.seek(self._io.pos() + (4))
                def handler(parent, _io__raw_buf_unproc=_io__raw_buf_unproc):
                    self._raw_buf_unproc = _io__raw_buf_unproc.to_byte_array()
                    if len(self._raw_buf_unproc) != 4:
                        raise kaitaistruct.ConsistencyError(u"raw(buf_unproc)", len(self._raw_buf_unproc), 4)
                    parent.write_bytes(self._raw_buf_unproc)
                _io__raw_buf_unproc.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
                self.buf_unproc._write__seq(_io__raw_buf_unproc)
            else:
                pass
                self._io.write_bytes(self.buf_unproc)

        if self.flag != 0:
            pass
            _on = self.buf_type
            if _on == 0:
                pass
                _io__raw_buf_proc = KaitaiStream(BytesIO(bytearray(4)))
                self._io.add_child_stream(_io__raw_buf_proc)
                _pos2 = self._io.pos()
                self._io.seek(self._io.pos() + (4))
                _process_val = 170
                def handler(parent, _io__raw_buf_proc=_io__raw_buf_proc, _process_val=_process_val):
                    self._raw_buf_proc = _io__raw_buf_proc.to_byte_array()
                    self._raw__raw_buf_proc = KaitaiStream.process_xor_one(self._raw_buf_proc, _process_val)
                    if len(self._raw__raw_buf_proc) != 4:
                        raise kaitaistruct.ConsistencyError(u"raw(buf_proc)", len(self._raw__raw_buf_proc), 4)
                    parent.write_bytes(self._raw__raw_buf_proc)
                _io__raw_buf_proc.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
                self.buf_proc._write__seq(_io__raw_buf_proc)
            else:
                pass
                self._raw_buf_proc = KaitaiStream.process_xor_one(self.buf_proc, 170)
                if len(self._raw_buf_proc) != 4:
                    raise kaitaistruct.ConsistencyError(u"buf_proc", len(self._raw_buf_proc), 4)
                self._io.write_bytes(self._raw_buf_proc)



    def _check(self):
        pass
        if self.flag == 0:
            pass
            _on = self.buf_type
            if _on == 0:
                pass
                if self.buf_unproc._root != self._root:
                    raise kaitaistruct.ConsistencyError(u"buf_unproc", self.buf_unproc._root, self._root)
                if self.buf_unproc._parent != self:
                    raise kaitaistruct.ConsistencyError(u"buf_unproc", self.buf_unproc._parent, self)
            else:
                pass
                if len(self.buf_unproc) != 4:
                    raise kaitaistruct.ConsistencyError(u"buf_unproc", len(self.buf_unproc), 4)

        if self.flag != 0:
            pass
            _on = self.buf_type
            if _on == 0:
                pass
                if self.buf_proc._root != self._root:
                    raise kaitaistruct.ConsistencyError(u"buf_proc", self.buf_proc._root, self._root)
                if self.buf_proc._parent != self:
                    raise kaitaistruct.ConsistencyError(u"buf_proc", self.buf_proc._parent, self)
            else:
                pass


    class Foo(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.bar = self._io.read_bytes(4)


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(ProcessCoerceSwitch.Foo, self)._write__seq(io)
            self._io.write_bytes(self.bar)


        def _check(self):
            pass
            if len(self.bar) != 4:
                raise kaitaistruct.ConsistencyError(u"bar", len(self.bar), 4)


    @property
    def buf(self):
        if hasattr(self, '_m_buf'):
            return self._m_buf

        self._m_buf = (self.buf_unproc if self.flag == 0 else self.buf_proc)
        return getattr(self, '_m_buf', None)

    def _invalidate_buf(self):
        del self._m_buf

