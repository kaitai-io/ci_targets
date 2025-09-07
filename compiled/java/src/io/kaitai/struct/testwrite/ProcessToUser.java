// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import io.kaitai.struct.ConsistencyError;
import java.util.Objects;
import java.nio.charset.StandardCharsets;
import java.nio.charset.Charset;

public class ProcessToUser extends KaitaiStruct.ReadWrite {
    public static ProcessToUser fromFile(String fileName) throws IOException {
        return new ProcessToUser(new ByteBufferKaitaiStream(fileName));
    }
    public ProcessToUser() {
        this(null, null, null);
    }

    public ProcessToUser(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ProcessToUser(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ProcessToUser(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ProcessToUser _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this._raw__raw_buf1 = this._io.readBytes(5);
        this._raw_buf1 = KaitaiStream.processRotateLeft(this._raw__raw_buf1, 3, 1);
        KaitaiStream _io__raw_buf1 = new ByteBufferKaitaiStream(this._raw_buf1);
        this.buf1 = new JustStr(_io__raw_buf1, this, _root);
        this.buf1._read();
        _dirty = false;
    }

    public void _fetchInstances() {
        this.buf1._fetchInstances();
    }

    public void _write_Seq() {
        _assertNotDirty();
        final KaitaiStream _io__raw_buf1 = new ByteBufferKaitaiStream(5);
        this._io.addChildStream(_io__raw_buf1);
        {
            long _pos2 = this._io.pos();
            this._io.seek(this._io.pos() + (5));
            final byte _processRotateArg = 3;
            final ProcessToUser _this = this;
            _io__raw_buf1.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                @Override
                protected void write(KaitaiStream parent) {
                    _this._raw_buf1 = _io__raw_buf1.toByteArray();
                    _this._raw__raw_buf1 = KaitaiStream.processRotateLeft(_this._raw_buf1, 8 - (_processRotateArg), 1);
                    if (_this._raw__raw_buf1.length != 5)
                        throw new ConsistencyError("raw(buf1)", 5, _this._raw__raw_buf1.length);
                    parent.writeBytes(_this._raw__raw_buf1);
                }
            });
        }
        this.buf1._write_Seq(_io__raw_buf1);
    }

    public void _check() {
        if (!Objects.equals(this.buf1._root(), _root()))
            throw new ConsistencyError("buf1", _root(), this.buf1._root());
        if (!Objects.equals(this.buf1._parent(), this))
            throw new ConsistencyError("buf1", this, this.buf1._parent());
        _dirty = false;
    }
    public static class JustStr extends KaitaiStruct.ReadWrite {
        public static JustStr fromFile(String fileName) throws IOException {
            return new JustStr(new ByteBufferKaitaiStream(fileName));
        }
        public JustStr() {
            this(null, null, null);
        }

        public JustStr(KaitaiStream _io) {
            this(_io, null, null);
        }

        public JustStr(KaitaiStream _io, ProcessToUser _parent) {
            this(_io, _parent, null);
        }

        public JustStr(KaitaiStream _io, ProcessToUser _parent, ProcessToUser _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.str = new String(this._io.readBytesFull(), StandardCharsets.UTF_8);
            _dirty = false;
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeBytes((this.str).getBytes(Charset.forName("UTF-8")));
            if (!(this._io.isEof()))
                throw new ConsistencyError("str", 0, this._io.size() - this._io.pos());
        }

        public void _check() {
            _dirty = false;
        }
        private String str;
        private ProcessToUser _root;
        private ProcessToUser _parent;
        public String str() { return str; }
        public void setStr(String _v) { _dirty = true; str = _v; }
        public ProcessToUser _root() { return _root; }
        public void set_root(ProcessToUser _v) { _dirty = true; _root = _v; }
        public ProcessToUser _parent() { return _parent; }
        public void set_parent(ProcessToUser _v) { _dirty = true; _parent = _v; }
    }
    private JustStr buf1;
    private ProcessToUser _root;
    private KaitaiStruct.ReadWrite _parent;
    private byte[] _raw_buf1;
    private byte[] _raw__raw_buf1;
    public JustStr buf1() { return buf1; }
    public void setBuf1(JustStr _v) { _dirty = true; buf1 = _v; }
    public ProcessToUser _root() { return _root; }
    public void set_root(ProcessToUser _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    public byte[] _raw_buf1() { return _raw_buf1; }
    public void set_raw_Buf1(byte[] _v) { _dirty = true; _raw_buf1 = _v; }
    public byte[] _raw__raw_buf1() { return _raw__raw_buf1; }
    public void set_raw__raw_Buf1(byte[] _v) { _dirty = true; _raw__raw_buf1 = _v; }
}
