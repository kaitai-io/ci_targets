// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Objects;
import io.kaitai.struct.ConsistencyError;
import java.nio.charset.StandardCharsets;
import java.nio.charset.Charset;

public class ParamsCallExtraParens extends KaitaiStruct.ReadWrite {
    public static ParamsCallExtraParens fromFile(String fileName) throws IOException {
        return new ParamsCallExtraParens(new ByteBufferKaitaiStream(fileName));
    }
    public ParamsCallExtraParens() {
        this(null, null, null);
    }

    public ParamsCallExtraParens(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ParamsCallExtraParens(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ParamsCallExtraParens(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ParamsCallExtraParens _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.buf1 = new MyStr1(this._io, this, _root, 5);
        this.buf1._read();
        _dirty = false;
    }

    public void _fetchInstances() {
        this.buf1._fetchInstances();
    }

    public void _write_Seq() {
        _assertNotDirty();
        this.buf1._write_Seq(this._io);
    }

    public void _check() {
        if (!Objects.equals(this.buf1._root(), _root()))
            throw new ConsistencyError("buf1", _root(), this.buf1._root());
        if (!Objects.equals(this.buf1._parent(), this))
            throw new ConsistencyError("buf1", this, this.buf1._parent());
        if (this.buf1.len() != 5)
            throw new ConsistencyError("buf1", 5, this.buf1.len());
        _dirty = false;
    }
    public static class MyStr1 extends KaitaiStruct.ReadWrite {
        public MyStr1(long len) {
            this(null, null, null, len);
        }

        public MyStr1(KaitaiStream _io, long len) {
            this(_io, null, null, len);
        }

        public MyStr1(KaitaiStream _io, ParamsCallExtraParens _parent, long len) {
            this(_io, _parent, null, len);
        }

        public MyStr1(KaitaiStream _io, ParamsCallExtraParens _parent, ParamsCallExtraParens _root, long len) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            this.len = len;
        }
        public void _read() {
            this.body = new String(this._io.readBytes(len()), StandardCharsets.UTF_8);
            _dirty = false;
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeBytes((this.body).getBytes(Charset.forName("UTF-8")));
        }

        public void _check() {
            if ((this.body).getBytes(Charset.forName("UTF-8")).length != len())
                throw new ConsistencyError("body", len(), (this.body).getBytes(Charset.forName("UTF-8")).length);
            _dirty = false;
        }
        private String body;
        private long len;
        private ParamsCallExtraParens _root;
        private ParamsCallExtraParens _parent;
        public String body() { return body; }
        public void setBody(String _v) { _dirty = true; body = _v; }
        public long len() { return len; }
        public void setLen(long _v) { _dirty = true; len = _v; }
        public ParamsCallExtraParens _root() { return _root; }
        public void set_root(ParamsCallExtraParens _v) { _dirty = true; _root = _v; }
        public ParamsCallExtraParens _parent() { return _parent; }
        public void set_parent(ParamsCallExtraParens _v) { _dirty = true; _parent = _v; }
    }
    private MyStr1 buf1;
    private ParamsCallExtraParens _root;
    private KaitaiStruct.ReadWrite _parent;
    public MyStr1 buf1() { return buf1; }
    public void setBuf1(MyStr1 _v) { _dirty = true; buf1 = _v; }
    public ParamsCallExtraParens _root() { return _root; }
    public void set_root(ParamsCallExtraParens _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
