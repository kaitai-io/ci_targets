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

public class ParamsCall extends KaitaiStruct.ReadWrite {
    public static ParamsCall fromFile(String fileName) throws IOException {
        return new ParamsCall(new ByteBufferKaitaiStream(fileName));
    }
    public ParamsCall() {
        this(null, null, null);
    }

    public ParamsCall(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ParamsCall(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ParamsCall(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ParamsCall _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.buf1 = new MyStr1(this._io, this, _root, 5);
        this.buf1._read();
        this.buf2 = new MyStr2(this._io, this, _root, 2 + 3, true);
        this.buf2._read();
        _dirty = false;
    }

    public void _fetchInstances() {
        this.buf1._fetchInstances();
        this.buf2._fetchInstances();
    }

    public void _write_Seq() {
        _assertNotDirty();
        this.buf1._write_Seq(this._io);
        this.buf2._write_Seq(this._io);
    }

    public void _check() {
        if (!Objects.equals(this.buf1._root(), _root()))
            throw new ConsistencyError("buf1", _root(), this.buf1._root());
        if (!Objects.equals(this.buf1._parent(), this))
            throw new ConsistencyError("buf1", this, this.buf1._parent());
        if (this.buf1.len() != 5)
            throw new ConsistencyError("buf1", 5, this.buf1.len());
        if (!Objects.equals(this.buf2._root(), _root()))
            throw new ConsistencyError("buf2", _root(), this.buf2._root());
        if (!Objects.equals(this.buf2._parent(), this))
            throw new ConsistencyError("buf2", this, this.buf2._parent());
        if (this.buf2.len() != 2 + 3)
            throw new ConsistencyError("buf2", 2 + 3, this.buf2.len());
        if (this.buf2.hasTrailer() != true)
            throw new ConsistencyError("buf2", true, this.buf2.hasTrailer());
        _dirty = false;
    }
    public static class MyStr1 extends KaitaiStruct.ReadWrite {
        public MyStr1(long len) {
            this(null, null, null, len);
        }

        public MyStr1(KaitaiStream _io, long len) {
            this(_io, null, null, len);
        }

        public MyStr1(KaitaiStream _io, ParamsCall _parent, long len) {
            this(_io, _parent, null, len);
        }

        public MyStr1(KaitaiStream _io, ParamsCall _parent, ParamsCall _root, long len) {
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
        public String body() { return body; }
        public void setBody(String _v) { _dirty = true; body = _v; }
        public long len() { return len; }
        public void setLen(long _v) { _dirty = true; len = _v; }
        public ParamsCall _root() { return _root; }
        public void set_root(ParamsCall _v) { _dirty = true; _root = _v; }
        public ParamsCall _parent() { return _parent; }
        public void set_parent(ParamsCall _v) { _dirty = true; _parent = _v; }
        private String body;
        private long len;
        private ParamsCall _root;
        private ParamsCall _parent;
    }
    public static class MyStr2 extends KaitaiStruct.ReadWrite {
        public MyStr2(long len, boolean hasTrailer) {
            this(null, null, null, len, hasTrailer);
        }

        public MyStr2(KaitaiStream _io, long len, boolean hasTrailer) {
            this(_io, null, null, len, hasTrailer);
        }

        public MyStr2(KaitaiStream _io, ParamsCall _parent, long len, boolean hasTrailer) {
            this(_io, _parent, null, len, hasTrailer);
        }

        public MyStr2(KaitaiStream _io, ParamsCall _parent, ParamsCall _root, long len, boolean hasTrailer) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            this.len = len;
            this.hasTrailer = hasTrailer;
        }
        public void _read() {
            this.body = new String(this._io.readBytes(len()), StandardCharsets.UTF_8);
            if (hasTrailer()) {
                this.trailer = this._io.readU1();
            }
            _dirty = false;
        }

        public void _fetchInstances() {
            if (hasTrailer()) {
            }
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeBytes((this.body).getBytes(Charset.forName("UTF-8")));
            if (hasTrailer()) {
                this._io.writeU1(this.trailer);
            }
        }

        public void _check() {
            if ((this.body).getBytes(Charset.forName("UTF-8")).length != len())
                throw new ConsistencyError("body", len(), (this.body).getBytes(Charset.forName("UTF-8")).length);
            if (hasTrailer()) {
            }
            _dirty = false;
        }
        public String body() { return body; }
        public void setBody(String _v) { _dirty = true; body = _v; }
        public Integer trailer() { return trailer; }
        public void setTrailer(Integer _v) { _dirty = true; trailer = _v; }
        public long len() { return len; }
        public void setLen(long _v) { _dirty = true; len = _v; }
        public boolean hasTrailer() { return hasTrailer; }
        public void setHasTrailer(boolean _v) { _dirty = true; hasTrailer = _v; }
        public ParamsCall _root() { return _root; }
        public void set_root(ParamsCall _v) { _dirty = true; _root = _v; }
        public ParamsCall _parent() { return _parent; }
        public void set_parent(ParamsCall _v) { _dirty = true; _parent = _v; }
        private String body;
        private Integer trailer;
        private long len;
        private boolean hasTrailer;
        private ParamsCall _root;
        private ParamsCall _parent;
    }
    public MyStr1 buf1() { return buf1; }
    public void setBuf1(MyStr1 _v) { _dirty = true; buf1 = _v; }
    public MyStr2 buf2() { return buf2; }
    public void setBuf2(MyStr2 _v) { _dirty = true; buf2 = _v; }
    public ParamsCall _root() { return _root; }
    public void set_root(ParamsCall _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    private MyStr1 buf1;
    private MyStr2 buf2;
    private ParamsCall _root;
    private KaitaiStruct.ReadWrite _parent;
}
