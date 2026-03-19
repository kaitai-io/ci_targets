# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class SwitchRepeatExpr(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.codes = []
        for i in range(3):
            self.codes.append(self._io.read_u1())

        self._raw_body = []
        self.body = []
        for i in range(3):
            _on = self.codes[i]
            if _on == 1:
                pass
                self._raw_body.append(self._io.read_bytes(4))
                _io__raw_body = KaitaiStream(BytesIO(self._raw_body[i]))
                _t_body = SwitchRepeatExpr.One(_io__raw_body, self, self._root)
                try:
                    _t_body._read()
                finally:
                    self.body.append(_t_body)
            elif _on == 2:
                pass
                self._raw_body.append(self._io.read_bytes(4))
                _io__raw_body = KaitaiStream(BytesIO(self._raw_body[i]))
                _t_body = SwitchRepeatExpr.One(_io__raw_body, self, self._root)
                try:
                    _t_body._read()
                finally:
                    self.body.append(_t_body)
            elif _on == 7:
                pass
                self._raw_body.append(self._io.read_bytes(4))
                _io__raw_body = KaitaiStream(BytesIO(self._raw_body[i]))
                _t_body = SwitchRepeatExpr.Two(_io__raw_body, self, self._root)
                try:
                    _t_body._read()
                finally:
                    self.body.append(_t_body)
            else:
                pass
                self.body.append(self._io.read_bytes(4))

        self._dirty = False


    def _fetch_instances(self):
        pass
        for i in range(len(self.codes)):
            pass

        for i in range(len(self.body)):
            pass
            _on = self.codes[i]
            if _on == 1:
                pass
                self.body[i]._fetch_instances()
            elif _on == 2:
                pass
                self.body[i]._fetch_instances()
            elif _on == 7:
                pass
                self.body[i]._fetch_instances()
            else:
                pass



    def _write__seq(self, io=None):
        super()._write__seq(io)
        for i in range(len(self.codes)):
            pass
            self._io.write_u1(self.codes[i])

        self._raw_body = []
        for i in range(len(self.body)):
            pass
            _on = self.codes[i]
            if _on == 1:
                pass
                _io__raw_body = KaitaiStream(BytesIO(bytes(4)))
                self._io.add_child_stream(_io__raw_body)
                _pos2 = self._io.pos()
                self._io.seek(self._io.pos() + (4))
                def handler(parent, _io__raw_body=_io__raw_body, i=i):
                    self._raw_body.append(_io__raw_body.to_byte_array())
                    if len(self._raw_body[i]) != 4:
                        raise kaitaistruct.ConsistencyError("raw(body)", 4, len(self._raw_body[i]))
                    parent.write_bytes(self._raw_body[i])
                _io__raw_body.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
                self.body[i]._write__seq(_io__raw_body)
            elif _on == 2:
                pass
                _io__raw_body = KaitaiStream(BytesIO(bytes(4)))
                self._io.add_child_stream(_io__raw_body)
                _pos2 = self._io.pos()
                self._io.seek(self._io.pos() + (4))
                def handler(parent, _io__raw_body=_io__raw_body, i=i):
                    self._raw_body.append(_io__raw_body.to_byte_array())
                    if len(self._raw_body[i]) != 4:
                        raise kaitaistruct.ConsistencyError("raw(body)", 4, len(self._raw_body[i]))
                    parent.write_bytes(self._raw_body[i])
                _io__raw_body.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
                self.body[i]._write__seq(_io__raw_body)
            elif _on == 7:
                pass
                _io__raw_body = KaitaiStream(BytesIO(bytes(4)))
                self._io.add_child_stream(_io__raw_body)
                _pos2 = self._io.pos()
                self._io.seek(self._io.pos() + (4))
                def handler(parent, _io__raw_body=_io__raw_body, i=i):
                    self._raw_body.append(_io__raw_body.to_byte_array())
                    if len(self._raw_body[i]) != 4:
                        raise kaitaistruct.ConsistencyError("raw(body)", 4, len(self._raw_body[i]))
                    parent.write_bytes(self._raw_body[i])
                _io__raw_body.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
                self.body[i]._write__seq(_io__raw_body)
            else:
                pass
                self._io.write_bytes(self.body[i])



    def _check(self):
        if len(self.codes) != 3:
            raise kaitaistruct.ConsistencyError("codes", 3, len(self.codes))
        for i in range(len(self.codes)):
            pass

        if len(self.body) != 3:
            raise kaitaistruct.ConsistencyError("body", 3, len(self.body))
        for i in range(len(self.body)):
            pass
            _on = self.codes[i]
            if _on == 1:
                pass
                if self.body[i]._root != self._root:
                    raise kaitaistruct.ConsistencyError("body", self._root, self.body[i]._root)
                if self.body[i]._parent != self:
                    raise kaitaistruct.ConsistencyError("body", self, self.body[i]._parent)
            elif _on == 2:
                pass
                if self.body[i]._root != self._root:
                    raise kaitaistruct.ConsistencyError("body", self._root, self.body[i]._root)
                if self.body[i]._parent != self:
                    raise kaitaistruct.ConsistencyError("body", self, self.body[i]._parent)
            elif _on == 7:
                pass
                if self.body[i]._root != self._root:
                    raise kaitaistruct.ConsistencyError("body", self._root, self.body[i]._root)
                if self.body[i]._parent != self:
                    raise kaitaistruct.ConsistencyError("body", self, self.body[i]._parent)
            else:
                pass
                if len(self.body[i]) != 4:
                    raise kaitaistruct.ConsistencyError("body", 4, len(self.body[i]))

        self._dirty = False

    class One(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.first = self._io.read_bytes_full()
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super()._write__seq(io)
            self._io.write_bytes(self.first)
            if not self._io.is_eof():
                raise kaitaistruct.ConsistencyError("first", 0, self._io.size() - self._io.pos())


        def _check(self):
            self._dirty = False


    class Two(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super().__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.second = self._io.read_bytes_full()
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super()._write__seq(io)
            self._io.write_bytes(self.second)
            if not self._io.is_eof():
                raise kaitaistruct.ConsistencyError("second", 0, self._io.size() - self._io.pos())


        def _check(self):
            self._dirty = False



