# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class NavParentSwitchCast(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.main = NavParentSwitchCast.Foo(self._io, self, self._root)
        self.main._read()


    def _fetch_instances(self):
        pass
        self.main._fetch_instances()


    def _write__seq(self, io=None):
        super(NavParentSwitchCast, self)._write__seq(io)
        self.main._write__seq(self._io)


    def _check(self):
        pass
        if self.main._root != self._root:
            raise kaitaistruct.ConsistencyError(u"main", self.main._root, self._root)
        if self.main._parent != self:
            raise kaitaistruct.ConsistencyError(u"main", self.main._parent, self)

    class Foo(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.buf_type = self._io.read_u1()
            self.flag = self._io.read_u1()
            _on = self.buf_type
            if _on == 0:
                pass
                self._raw_buf = self._io.read_bytes(4)
                _io__raw_buf = KaitaiStream(BytesIO(self._raw_buf))
                self.buf = NavParentSwitchCast.Foo.Zero(_io__raw_buf, self, self._root)
                self.buf._read()
            elif _on == 1:
                pass
                self._raw_buf = self._io.read_bytes(4)
                _io__raw_buf = KaitaiStream(BytesIO(self._raw_buf))
                self.buf = NavParentSwitchCast.Foo.One(_io__raw_buf, self, self._root)
                self.buf._read()
            else:
                pass
                self.buf = self._io.read_bytes(4)


        def _fetch_instances(self):
            pass
            _on = self.buf_type
            if _on == 0:
                pass
                self.buf._fetch_instances()
            elif _on == 1:
                pass
                self.buf._fetch_instances()
            else:
                pass


        def _write__seq(self, io=None):
            super(NavParentSwitchCast.Foo, self)._write__seq(io)
            self._io.write_u1(self.buf_type)
            self._io.write_u1(self.flag)
            _on = self.buf_type
            if _on == 0:
                pass
                _io__raw_buf = KaitaiStream(BytesIO(bytearray(4)))
                self._io.add_child_stream(_io__raw_buf)
                _pos2 = self._io.pos()
                self._io.seek(self._io.pos() + (4))
                def handler(parent, _io__raw_buf=_io__raw_buf):
                    self._raw_buf = _io__raw_buf.to_byte_array()
                    if len(self._raw_buf) != 4:
                        raise kaitaistruct.ConsistencyError(u"raw(buf)", len(self._raw_buf), 4)
                    parent.write_bytes(self._raw_buf)
                _io__raw_buf.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
                self.buf._write__seq(_io__raw_buf)
            elif _on == 1:
                pass
                _io__raw_buf = KaitaiStream(BytesIO(bytearray(4)))
                self._io.add_child_stream(_io__raw_buf)
                _pos2 = self._io.pos()
                self._io.seek(self._io.pos() + (4))
                def handler(parent, _io__raw_buf=_io__raw_buf):
                    self._raw_buf = _io__raw_buf.to_byte_array()
                    if len(self._raw_buf) != 4:
                        raise kaitaistruct.ConsistencyError(u"raw(buf)", len(self._raw_buf), 4)
                    parent.write_bytes(self._raw_buf)
                _io__raw_buf.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
                self.buf._write__seq(_io__raw_buf)
            else:
                pass
                self._io.write_bytes(self.buf)


        def _check(self):
            pass
            _on = self.buf_type
            if _on == 0:
                pass
                if self.buf._root != self._root:
                    raise kaitaistruct.ConsistencyError(u"buf", self.buf._root, self._root)
                if self.buf._parent != self:
                    raise kaitaistruct.ConsistencyError(u"buf", self.buf._parent, self)
            elif _on == 1:
                pass
                if self.buf._root != self._root:
                    raise kaitaistruct.ConsistencyError(u"buf", self.buf._root, self._root)
                if self.buf._parent != self:
                    raise kaitaistruct.ConsistencyError(u"buf", self.buf._parent, self)
            else:
                pass
                if len(self.buf) != 4:
                    raise kaitaistruct.ConsistencyError(u"buf", len(self.buf), 4)

        class Common(ReadWriteKaitaiStruct):
            def __init__(self, _io=None, _parent=None, _root=None):
                self._io = _io
                self._parent = _parent
                self._root = _root

            def _read(self):
                pass


            def _fetch_instances(self):
                pass


            def _write__seq(self, io=None):
                super(NavParentSwitchCast.Foo.Common, self)._write__seq(io)


            def _check(self):
                pass

            @property
            def flag(self):
                if hasattr(self, '_m_flag'):
                    return self._m_flag

                self._m_flag = self._parent._parent.flag
                return getattr(self, '_m_flag', None)

            def _invalidate_flag(self):
                del self._m_flag

        class One(ReadWriteKaitaiStruct):
            def __init__(self, _io=None, _parent=None, _root=None):
                self._io = _io
                self._parent = _parent
                self._root = _root

            def _read(self):
                self.branch = NavParentSwitchCast.Foo.Common(self._io, self, self._root)
                self.branch._read()


            def _fetch_instances(self):
                pass
                self.branch._fetch_instances()


            def _write__seq(self, io=None):
                super(NavParentSwitchCast.Foo.One, self)._write__seq(io)
                self.branch._write__seq(self._io)


            def _check(self):
                pass
                if self.branch._root != self._root:
                    raise kaitaistruct.ConsistencyError(u"branch", self.branch._root, self._root)
                if self.branch._parent != self:
                    raise kaitaistruct.ConsistencyError(u"branch", self.branch._parent, self)


        class Zero(ReadWriteKaitaiStruct):
            def __init__(self, _io=None, _parent=None, _root=None):
                self._io = _io
                self._parent = _parent
                self._root = _root

            def _read(self):
                self.branch = NavParentSwitchCast.Foo.Common(self._io, self, self._root)
                self.branch._read()


            def _fetch_instances(self):
                pass
                self.branch._fetch_instances()


            def _write__seq(self, io=None):
                super(NavParentSwitchCast.Foo.Zero, self)._write__seq(io)
                self.branch._write__seq(self._io)


            def _check(self):
                pass
                if self.branch._root != self._root:
                    raise kaitaistruct.ConsistencyError(u"branch", self.branch._root, self._root)
                if self.branch._parent != self:
                    raise kaitaistruct.ConsistencyError(u"branch", self.branch._parent, self)




