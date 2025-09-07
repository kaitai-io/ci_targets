# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class IoLocalVar(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(IoLocalVar, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._should_write_mess_up = False
        self.mess_up__enabled = True

    def _read(self):
        self.skip = self._io.read_bytes(20)
        if self.mess_up._io.pos() < 0:
            pass
            self.always_null = self._io.read_u1()

        self.followup = self._io.read_u1()
        self._dirty = False


    def _fetch_instances(self):
        pass
        if self.mess_up._io.pos() < 0:
            pass

        _ = self.mess_up
        if hasattr(self, '_m_mess_up'):
            pass
            _on = 2
            if _on == 1:
                pass
                self._m_mess_up._fetch_instances()
            elif _on == 2:
                pass
                self._m_mess_up._fetch_instances()
            else:
                pass



    def _write__seq(self, io=None):
        super(IoLocalVar, self)._write__seq(io)
        self._should_write_mess_up = self.mess_up__enabled
        self._io.write_bytes(self.skip)
        if self.mess_up._io.pos() < 0:
            pass
            self._io.write_u1(self.always_null)

        self._io.write_u1(self.followup)


    def _check(self):
        if len(self.skip) != 20:
            raise kaitaistruct.ConsistencyError(u"skip", 20, len(self.skip))
        if self.mess_up__enabled:
            pass
            _on = 2
            if _on == 1:
                pass
                if self._m_mess_up._root != self._root:
                    raise kaitaistruct.ConsistencyError(u"mess_up", self._root, self._m_mess_up._root)
                if self._m_mess_up._parent != self:
                    raise kaitaistruct.ConsistencyError(u"mess_up", self, self._m_mess_up._parent)
            elif _on == 2:
                pass
                if self._m_mess_up._root != self._root:
                    raise kaitaistruct.ConsistencyError(u"mess_up", self._root, self._m_mess_up._root)
                if self._m_mess_up._parent != self:
                    raise kaitaistruct.ConsistencyError(u"mess_up", self, self._m_mess_up._parent)
            else:
                pass
                if len(self._m_mess_up) != 2:
                    raise kaitaistruct.ConsistencyError(u"mess_up", 2, len(self._m_mess_up))

        self._dirty = False

    class Dummy(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super(IoLocalVar.Dummy, self).__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            pass
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(IoLocalVar.Dummy, self)._write__seq(io)


        def _check(self):
            self._dirty = False


    @property
    def mess_up(self):
        if self._should_write_mess_up:
            self._write_mess_up()
        if hasattr(self, '_m_mess_up'):
            return self._m_mess_up

        if not self.mess_up__enabled:
            return None

        io = self._root._io
        _pos = io.pos()
        io.seek(8)
        _on = 2
        if _on == 1:
            pass
            self._raw__m_mess_up = io.read_bytes(2)
            _io__raw__m_mess_up = KaitaiStream(BytesIO(self._raw__m_mess_up))
            self._m_mess_up = IoLocalVar.Dummy(_io__raw__m_mess_up, self, self._root)
            self._m_mess_up._read()
        elif _on == 2:
            pass
            self._raw__m_mess_up = io.read_bytes(2)
            _io__raw__m_mess_up = KaitaiStream(BytesIO(self._raw__m_mess_up))
            self._m_mess_up = IoLocalVar.Dummy(_io__raw__m_mess_up, self, self._root)
            self._m_mess_up._read()
        else:
            pass
            self._m_mess_up = io.read_bytes(2)
        io.seek(_pos)
        return getattr(self, '_m_mess_up', None)

    @mess_up.setter
    def mess_up(self, v):
        self._dirty = True
        self._m_mess_up = v

    def _write_mess_up(self):
        self._should_write_mess_up = False
        io = self._root._io
        _pos = io.pos()
        io.seek(8)
        _on = 2
        if _on == 1:
            pass
            _io__raw__m_mess_up = KaitaiStream(BytesIO(bytearray(2)))
            io.add_child_stream(_io__raw__m_mess_up)
            _pos2 = io.pos()
            io.seek(io.pos() + (2))
            def handler(parent, _io__raw__m_mess_up=_io__raw__m_mess_up):
                self._raw__m_mess_up = _io__raw__m_mess_up.to_byte_array()
                if len(self._raw__m_mess_up) != 2:
                    raise kaitaistruct.ConsistencyError(u"raw(mess_up)", 2, len(self._raw__m_mess_up))
                parent.write_bytes(self._raw__m_mess_up)
            _io__raw__m_mess_up.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
            self._m_mess_up._write__seq(_io__raw__m_mess_up)
        elif _on == 2:
            pass
            _io__raw__m_mess_up = KaitaiStream(BytesIO(bytearray(2)))
            io.add_child_stream(_io__raw__m_mess_up)
            _pos2 = io.pos()
            io.seek(io.pos() + (2))
            def handler(parent, _io__raw__m_mess_up=_io__raw__m_mess_up):
                self._raw__m_mess_up = _io__raw__m_mess_up.to_byte_array()
                if len(self._raw__m_mess_up) != 2:
                    raise kaitaistruct.ConsistencyError(u"raw(mess_up)", 2, len(self._raw__m_mess_up))
                parent.write_bytes(self._raw__m_mess_up)
            _io__raw__m_mess_up.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
            self._m_mess_up._write__seq(_io__raw__m_mess_up)
        else:
            pass
            io.write_bytes(self._m_mess_up)
        io.seek(_pos)


