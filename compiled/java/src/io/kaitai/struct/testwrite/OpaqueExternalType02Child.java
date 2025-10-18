// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.charset.Charset;
import io.kaitai.struct.ConsistencyError;
import java.util.Objects;

public class OpaqueExternalType02Child extends KaitaiStruct.ReadWrite {
    public static OpaqueExternalType02Child fromFile(String fileName) throws IOException {
        return new OpaqueExternalType02Child(new ByteBufferKaitaiStream(fileName));
    }
    public OpaqueExternalType02Child() {
        this(null, null, null);
    }

    public OpaqueExternalType02Child(KaitaiStream _io) {
        this(_io, null, null);
    }

    public OpaqueExternalType02Child(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public OpaqueExternalType02Child(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, OpaqueExternalType02Child _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.s1 = new String(this._io.readBytesTerm((byte) 124, false, true, true), StandardCharsets.UTF_8);
        this.s2 = new String(this._io.readBytesTerm((byte) 124, false, false, true), StandardCharsets.UTF_8);
        this.s3 = new OpaqueExternalType02ChildChild(this._io, this, _root);
        this.s3._read();
        _dirty = false;
    }

    public void _fetchInstances() {
        this.s3._fetchInstances();
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeBytes((this.s1).getBytes(Charset.forName("UTF-8")));
        this._io.writeU1(124);
        this._io.writeBytes((this.s2).getBytes(Charset.forName("UTF-8")));
        {
            long _pos = this._io.pos();
            this._io.writeU1(124);
            this._io.seek(_pos);
        }
        this.s3._write_Seq(this._io);
    }

    public void _check() {
        if (KaitaiStream.byteArrayIndexOf((this.s1).getBytes(Charset.forName("UTF-8")), ((byte) 124)) != -1)
            throw new ConsistencyError("s1", -1, KaitaiStream.byteArrayIndexOf((this.s1).getBytes(Charset.forName("UTF-8")), ((byte) 124)));
        if (KaitaiStream.byteArrayIndexOf((this.s2).getBytes(Charset.forName("UTF-8")), ((byte) 124)) != -1)
            throw new ConsistencyError("s2", -1, KaitaiStream.byteArrayIndexOf((this.s2).getBytes(Charset.forName("UTF-8")), ((byte) 124)));
        if (!Objects.equals(this.s3._root(), _root()))
            throw new ConsistencyError("s3", _root(), this.s3._root());
        if (!Objects.equals(this.s3._parent(), this))
            throw new ConsistencyError("s3", this, this.s3._parent());
        _dirty = false;
    }
    public static class OpaqueExternalType02ChildChild extends KaitaiStruct.ReadWrite {
        public static OpaqueExternalType02ChildChild fromFile(String fileName) throws IOException {
            return new OpaqueExternalType02ChildChild(new ByteBufferKaitaiStream(fileName));
        }
        public OpaqueExternalType02ChildChild() {
            this(null, null, null);
        }

        public OpaqueExternalType02ChildChild(KaitaiStream _io) {
            this(_io, null, null);
        }

        public OpaqueExternalType02ChildChild(KaitaiStream _io, OpaqueExternalType02Child _parent) {
            this(_io, _parent, null);
        }

        public OpaqueExternalType02ChildChild(KaitaiStream _io, OpaqueExternalType02Child _parent, OpaqueExternalType02Child _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            if (_root().someMethod()) {
                this.s3 = new String(this._io.readBytesTerm((byte) 64, true, true, true), StandardCharsets.UTF_8);
            }
            _dirty = false;
        }

        public void _fetchInstances() {
            if (_root().someMethod()) {
            }
        }

        public void _write_Seq() {
            _assertNotDirty();
            if (_root().someMethod()) {
                this._io.writeBytes((this.s3).getBytes(Charset.forName("UTF-8")));
            }
        }

        public void _check() {
            if (_root().someMethod()) {
                if ((this.s3).getBytes(Charset.forName("UTF-8")).length == 0)
                    throw new ConsistencyError("s3", 0, (this.s3).getBytes(Charset.forName("UTF-8")).length);
                if (KaitaiStream.byteArrayIndexOf((this.s3).getBytes(Charset.forName("UTF-8")), ((byte) 64)) != (this.s3).getBytes(Charset.forName("UTF-8")).length - 1)
                    throw new ConsistencyError("s3", (this.s3).getBytes(Charset.forName("UTF-8")).length - 1, KaitaiStream.byteArrayIndexOf((this.s3).getBytes(Charset.forName("UTF-8")), ((byte) 64)));
            }
            _dirty = false;
        }
        public String s3() { return s3; }
        public void setS3(String _v) { _dirty = true; s3 = _v; }
        public OpaqueExternalType02Child _root() { return _root; }
        public void set_root(OpaqueExternalType02Child _v) { _dirty = true; _root = _v; }
        public OpaqueExternalType02Child _parent() { return _parent; }
        public void set_parent(OpaqueExternalType02Child _v) { _dirty = true; _parent = _v; }
        private String s3;
        private OpaqueExternalType02Child _root;
        private OpaqueExternalType02Child _parent;
    }
    public Boolean someMethod() {
        if (this.someMethod != null)
            return this.someMethod;
        this.someMethod = true;
        return this.someMethod;
    }
    public void _invalidateSomeMethod() { this.someMethod = null; }
    public String s1() { return s1; }
    public void setS1(String _v) { _dirty = true; s1 = _v; }
    public String s2() { return s2; }
    public void setS2(String _v) { _dirty = true; s2 = _v; }
    public OpaqueExternalType02ChildChild s3() { return s3; }
    public void setS3(OpaqueExternalType02ChildChild _v) { _dirty = true; s3 = _v; }
    public OpaqueExternalType02Child _root() { return _root; }
    public void set_root(OpaqueExternalType02Child _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    private Boolean someMethod;
    private String s1;
    private String s2;
    private OpaqueExternalType02ChildChild s3;
    private OpaqueExternalType02Child _root;
    private KaitaiStruct.ReadWrite _parent;
}
