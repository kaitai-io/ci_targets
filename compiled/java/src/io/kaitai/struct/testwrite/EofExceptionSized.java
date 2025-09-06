// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import io.kaitai.struct.ConsistencyError;
import java.util.Objects;

public class EofExceptionSized extends KaitaiStruct.ReadWrite {
    public static EofExceptionSized fromFile(String fileName) throws IOException {
        return new EofExceptionSized(new ByteBufferKaitaiStream(fileName));
    }
    public EofExceptionSized() {
        this(null, null, null);
    }

    public EofExceptionSized(KaitaiStream _io) {
        this(_io, null, null);
    }

    public EofExceptionSized(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public EofExceptionSized(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, EofExceptionSized _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this._raw_buf = this._io.readBytes(13);
        KaitaiStream _io__raw_buf = new ByteBufferKaitaiStream(this._raw_buf);
        this.buf = new Foo(_io__raw_buf, this, _root);
        this.buf._read();
        _dirty = false;
    }

    public void _fetchInstances() {
        this.buf._fetchInstances();
    }

    public void _write_Seq() {
        _assertNotDirty();
        final KaitaiStream _io__raw_buf = new ByteBufferKaitaiStream(13);
        this._io.addChildStream(_io__raw_buf);
        {
            long _pos2 = this._io.pos();
            this._io.seek(this._io.pos() + (13));
            final EofExceptionSized _this = this;
            _io__raw_buf.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                @Override
                protected void write(KaitaiStream parent) {
                    _this._raw_buf = _io__raw_buf.toByteArray();
                    if (_this._raw_buf.length != 13)
                        throw new ConsistencyError("raw(buf)", _this._raw_buf.length, 13);
                    parent.writeBytes(_this._raw_buf);
                }
            });
        }
        this.buf._write_Seq(_io__raw_buf);
    }

    public void _check() {
        if (!Objects.equals(this.buf._root(), _root()))
            throw new ConsistencyError("buf", this.buf._root(), _root());
        if (!Objects.equals(this.buf._parent(), this))
            throw new ConsistencyError("buf", this.buf._parent(), this);
        _dirty = false;
    }
    public static class Foo extends KaitaiStruct.ReadWrite {
        public static Foo fromFile(String fileName) throws IOException {
            return new Foo(new ByteBufferKaitaiStream(fileName));
        }
        public Foo() {
            this(null, null, null);
        }

        public Foo(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Foo(KaitaiStream _io, EofExceptionSized _parent) {
            this(_io, _parent, null);
        }

        public Foo(KaitaiStream _io, EofExceptionSized _parent, EofExceptionSized _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            _dirty = false;
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            _assertNotDirty();
        }

        public void _check() {
            _dirty = false;
        }
        private EofExceptionSized _root;
        private EofExceptionSized _parent;
        public EofExceptionSized _root() { return _root; }
        public void set_root(EofExceptionSized _v) { _dirty = true; _root = _v; }
        public EofExceptionSized _parent() { return _parent; }
        public void set_parent(EofExceptionSized _v) { _dirty = true; _parent = _v; }
    }
    private Foo buf;
    private EofExceptionSized _root;
    private KaitaiStruct.ReadWrite _parent;
    private byte[] _raw_buf;
    public Foo buf() { return buf; }
    public void setBuf(Foo _v) { _dirty = true; buf = _v; }
    public EofExceptionSized _root() { return _root; }
    public void set_root(EofExceptionSized _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    public byte[] _raw_buf() { return _raw_buf; }
    public void set_raw_Buf(byte[] _v) { _dirty = true; _raw_buf = _v; }
}
