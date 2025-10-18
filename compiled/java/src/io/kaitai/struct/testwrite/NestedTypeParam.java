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

public class NestedTypeParam extends KaitaiStruct.ReadWrite {
    public static NestedTypeParam fromFile(String fileName) throws IOException {
        return new NestedTypeParam(new ByteBufferKaitaiStream(fileName));
    }
    public NestedTypeParam() {
        this(null, null, null);
    }

    public NestedTypeParam(KaitaiStream _io) {
        this(_io, null, null);
    }

    public NestedTypeParam(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public NestedTypeParam(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, NestedTypeParam _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.mainSeq = new Nested.MyType(this._io, this, _root, 5);
        this.mainSeq._read();
        _dirty = false;
    }

    public void _fetchInstances() {
        this.mainSeq._fetchInstances();
    }

    public void _write_Seq() {
        _assertNotDirty();
        this.mainSeq._write_Seq(this._io);
    }

    public void _check() {
        if (!Objects.equals(this.mainSeq._root(), _root()))
            throw new ConsistencyError("main_seq", _root(), this.mainSeq._root());
        if (!Objects.equals(this.mainSeq._parent(), this))
            throw new ConsistencyError("main_seq", this, this.mainSeq._parent());
        if (this.mainSeq.myLen() != 5)
            throw new ConsistencyError("main_seq", 5, this.mainSeq.myLen());
        _dirty = false;
    }
    public static class Nested extends KaitaiStruct.ReadWrite {
        public static Nested fromFile(String fileName) throws IOException {
            return new Nested(new ByteBufferKaitaiStream(fileName));
        }
        public Nested() {
            this(null, null, null);
        }

        public Nested(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Nested(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
            this(_io, _parent, null);
        }

        public Nested(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, NestedTypeParam _root) {
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
        public static class MyType extends KaitaiStruct.ReadWrite {
            public MyType(long myLen) {
                this(null, null, null, myLen);
            }

            public MyType(KaitaiStream _io, long myLen) {
                this(_io, null, null, myLen);
            }

            public MyType(KaitaiStream _io, NestedTypeParam _parent, long myLen) {
                this(_io, _parent, null, myLen);
            }

            public MyType(KaitaiStream _io, NestedTypeParam _parent, NestedTypeParam _root, long myLen) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
                this.myLen = myLen;
            }
            public void _read() {
                this.body = new String(this._io.readBytes(myLen()), StandardCharsets.US_ASCII);
                _dirty = false;
            }

            public void _fetchInstances() {
            }

            public void _write_Seq() {
                _assertNotDirty();
                this._io.writeBytes((this.body).getBytes(Charset.forName("ASCII")));
            }

            public void _check() {
                if ((this.body).getBytes(Charset.forName("ASCII")).length != myLen())
                    throw new ConsistencyError("body", myLen(), (this.body).getBytes(Charset.forName("ASCII")).length);
                _dirty = false;
            }
            public String body() { return body; }
            public void setBody(String _v) { _dirty = true; body = _v; }
            public long myLen() { return myLen; }
            public void setMyLen(long _v) { _dirty = true; myLen = _v; }
            public NestedTypeParam _root() { return _root; }
            public void set_root(NestedTypeParam _v) { _dirty = true; _root = _v; }
            public NestedTypeParam _parent() { return _parent; }
            public void set_parent(NestedTypeParam _v) { _dirty = true; _parent = _v; }
            private String body;
            private long myLen;
            private NestedTypeParam _root;
            private NestedTypeParam _parent;
        }
        public NestedTypeParam _root() { return _root; }
        public void set_root(NestedTypeParam _v) { _dirty = true; _root = _v; }
        public KaitaiStruct.ReadWrite _parent() { return _parent; }
        public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
        private NestedTypeParam _root;
        private KaitaiStruct.ReadWrite _parent;
    }
    public Nested.MyType mainSeq() { return mainSeq; }
    public void setMainSeq(Nested.MyType _v) { _dirty = true; mainSeq = _v; }
    public NestedTypeParam _root() { return _root; }
    public void set_root(NestedTypeParam _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    private Nested.MyType mainSeq;
    private NestedTypeParam _root;
    private KaitaiStruct.ReadWrite _parent;
}
