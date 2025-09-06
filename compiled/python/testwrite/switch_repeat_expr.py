# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class SwitchRepeatExpr(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(SwitchRepeatExpr, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.code = self._io.read_u1()
        self.size = self._io.read_u4le()
        self._raw_body = []
        self.body = []
        for i in range(1):
            _on = self.code
            if _on == 17:
                pass
                self._raw_body.append(self._io.read_bytes(self.size))
                _io__raw_body = KaitaiStream(BytesIO(self._raw_body[i]))
                _t_body = SwitchRepeatExpr.One(_io__raw_body, self, self._root)
                try:
                    _t_body._read()
                finally:
                    self.body.append(_t_body)
            elif _on == 34:
                pass
                self._raw_body.append(self._io.read_bytes(self.size))
                _io__raw_body = KaitaiStream(BytesIO(self._raw_body[i]))
                _t_body = SwitchRepeatExpr.Two(_io__raw_body, self, self._root)
                try:
                    _t_body._read()
                finally:
                    self.body.append(_t_body)
            else:
                pass
                self.body.append(self._io.read_bytes(self.size))

        self._dirty = False


    def _fetch_instances(self):
        pass
        for i in range(len(self.body)):
            pass
            _on = self.code
            if _on == 17:
                pass
                self.body[i]._fetch_instances()
            elif _on == 34:
                pass
                self.body[i]._fetch_instances()
            else:
                pass



    def _write__seq(self, io=None):
        super(SwitchRepeatExpr, self)._write__seq(io)
        self._io.write_u1(self.code)
        self._io.write_u4le(self.size)
        self._raw_body = []
        for i in range(len(self.body)):
            pass
            _on = self.code
            if _on == 17:
                pass
                _io__raw_body = KaitaiStream(BytesIO(bytearray(self.size)))
                self._io.add_child_stream(_io__raw_body)
                _pos2 = self._io.pos()
                self._io.seek(self._io.pos() + (self.size))
                def handler(parent, _io__raw_body=_io__raw_body, i=i):
                    self._raw_body.append(_io__raw_body.to_byte_array())
                    if len(self._raw_body[i]) != self.size:
                        raise kaitaistruct.ConsistencyError(u"raw(body)", len(self._raw_body[i]), self.size)
                    parent.write_bytes(self._raw_body[i])
                _io__raw_body.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
                self.body[i]._write__seq(_io__raw_body)
            elif _on == 34:
                pass
                _io__raw_body = KaitaiStream(BytesIO(bytearray(self.size)))
                self._io.add_child_stream(_io__raw_body)
                _pos2 = self._io.pos()
                self._io.seek(self._io.pos() + (self.size))
                def handler(parent, _io__raw_body=_io__raw_body, i=i):
                    self._raw_body.append(_io__raw_body.to_byte_array())
                    if len(self._raw_body[i]) != self.size:
                        raise kaitaistruct.ConsistencyError(u"raw(body)", len(self._raw_body[i]), self.size)
                    parent.write_bytes(self._raw_body[i])
                _io__raw_body.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
                self.body[i]._write__seq(_io__raw_body)
            else:
                pass
                self._io.write_bytes(self.body[i])



    def _check(self):
        if len(self.body) != 1:
            raise kaitaistruct.ConsistencyError(u"body", len(self.body), 1)
        for i in range(len(self.body)):
            pass
            _on = self.code
            if _on == 17:
                pass
                if self.body[i]._root != self._root:
                    raise kaitaistruct.ConsistencyError(u"body", self.body[i]._root, self._root)
                if self.body[i]._parent != self:
                    raise kaitaistruct.ConsistencyError(u"body", self.body[i]._parent, self)
            elif _on == 34:
                pass
                if self.body[i]._root != self._root:
                    raise kaitaistruct.ConsistencyError(u"body", self.body[i]._root, self._root)
                if self.body[i]._parent != self:
                    raise kaitaistruct.ConsistencyError(u"body", self.body[i]._parent, self)
            else:
                pass
                if len(self.body[i]) != self.size:
                    raise kaitaistruct.ConsistencyError(u"body", len(self.body[i]), self.size)

        self._dirty = False

    class One(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super(SwitchRepeatExpr.One, self).__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.first = self._io.read_bytes_full()
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(SwitchRepeatExpr.One, self)._write__seq(io)
            self._io.write_bytes(self.first)
            if not self._io.is_eof():
                raise kaitaistruct.ConsistencyError(u"first", self._io.size() - self._io.pos(), 0)


        def _check(self):
            self._dirty = False


    class Two(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super(SwitchRepeatExpr.Two, self).__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.second = self._io.read_bytes_full()
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(SwitchRepeatExpr.Two, self)._write__seq(io)
            self._io.write_bytes(self.second)
            if not self._io.is_eof():
                raise kaitaistruct.ConsistencyError(u"second", self._io.size() - self._io.pos(), 0)


        def _check(self):
            self._dirty = False



