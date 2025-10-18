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

public class TermStrz4 extends KaitaiStruct.ReadWrite {
    public static TermStrz4 fromFile(String fileName) throws IOException {
        return new TermStrz4(new ByteBufferKaitaiStream(fileName));
    }
    public TermStrz4() {
        this(null, null, null);
    }

    public TermStrz4(KaitaiStream _io) {
        this(_io, null, null);
    }

    public TermStrz4(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public TermStrz4(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, TermStrz4 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this._raw_s1 = this._io.readBytes(3);
        KaitaiStream _io__raw_s1 = new ByteBufferKaitaiStream(this._raw_s1);
        this.s1 = new S1Type(_io__raw_s1, this, _root);
        this.s1._read();
        this.skipTerm1 = this._io.readU1();
        this._raw_s2 = this._io.readBytes(3);
        KaitaiStream _io__raw_s2 = new ByteBufferKaitaiStream(this._raw_s2);
        this.s2 = new S2Type(_io__raw_s2, this, _root);
        this.s2._read();
        this.skipTerm2 = this._io.readU1();
        this._raw_s3 = this._io.readBytes(3);
        KaitaiStream _io__raw_s3 = new ByteBufferKaitaiStream(this._raw_s3);
        this.s3 = new S3Type(_io__raw_s3, this, _root);
        this.s3._read();
        _dirty = false;
    }

    public void _fetchInstances() {
        this.s1._fetchInstances();
        this.s2._fetchInstances();
        this.s3._fetchInstances();
    }

    public void _write_Seq() {
        _assertNotDirty();
        final KaitaiStream _io__raw_s1 = new ByteBufferKaitaiStream(3);
        this._io.addChildStream(_io__raw_s1);
        {
            long _pos2 = this._io.pos();
            this._io.seek(this._io.pos() + (3));
            final TermStrz4 _this = this;
            _io__raw_s1.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                @Override
                protected void write(KaitaiStream parent) {
                    _this._raw_s1 = _io__raw_s1.toByteArray();
                    if (_this._raw_s1.length != 3)
                        throw new ConsistencyError("raw(s1)", 3, _this._raw_s1.length);
                    parent.writeBytes(_this._raw_s1);
                }
            });
        }
        this.s1._write_Seq(_io__raw_s1);
        this._io.writeU1(this.skipTerm1);
        final KaitaiStream _io__raw_s2 = new ByteBufferKaitaiStream(3);
        this._io.addChildStream(_io__raw_s2);
        {
            long _pos2 = this._io.pos();
            this._io.seek(this._io.pos() + (3));
            final TermStrz4 _this = this;
            _io__raw_s2.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                @Override
                protected void write(KaitaiStream parent) {
                    _this._raw_s2 = _io__raw_s2.toByteArray();
                    if (_this._raw_s2.length != 3)
                        throw new ConsistencyError("raw(s2)", 3, _this._raw_s2.length);
                    parent.writeBytes(_this._raw_s2);
                }
            });
        }
        this.s2._write_Seq(_io__raw_s2);
        this._io.writeU1(this.skipTerm2);
        final KaitaiStream _io__raw_s3 = new ByteBufferKaitaiStream(3);
        this._io.addChildStream(_io__raw_s3);
        {
            long _pos2 = this._io.pos();
            this._io.seek(this._io.pos() + (3));
            final TermStrz4 _this = this;
            _io__raw_s3.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                @Override
                protected void write(KaitaiStream parent) {
                    _this._raw_s3 = _io__raw_s3.toByteArray();
                    if (_this._raw_s3.length != 3)
                        throw new ConsistencyError("raw(s3)", 3, _this._raw_s3.length);
                    parent.writeBytes(_this._raw_s3);
                }
            });
        }
        this.s3._write_Seq(_io__raw_s3);
    }

    public void _check() {
        if (!Objects.equals(this.s1._root(), _root()))
            throw new ConsistencyError("s1", _root(), this.s1._root());
        if (!Objects.equals(this.s1._parent(), this))
            throw new ConsistencyError("s1", this, this.s1._parent());
        if (!Objects.equals(this.s2._root(), _root()))
            throw new ConsistencyError("s2", _root(), this.s2._root());
        if (!Objects.equals(this.s2._parent(), this))
            throw new ConsistencyError("s2", this, this.s2._parent());
        if (!Objects.equals(this.s3._root(), _root()))
            throw new ConsistencyError("s3", _root(), this.s3._root());
        if (!Objects.equals(this.s3._parent(), this))
            throw new ConsistencyError("s3", this, this.s3._parent());
        _dirty = false;
    }
    public static class S1Type extends KaitaiStruct.ReadWrite {
        public static S1Type fromFile(String fileName) throws IOException {
            return new S1Type(new ByteBufferKaitaiStream(fileName));
        }
        public S1Type() {
            this(null, null, null);
        }

        public S1Type(KaitaiStream _io) {
            this(_io, null, null);
        }

        public S1Type(KaitaiStream _io, TermStrz4 _parent) {
            this(_io, _parent, null);
        }

        public S1Type(KaitaiStream _io, TermStrz4 _parent, TermStrz4 _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.value = new String(this._io.readBytesTerm((byte) 124, false, true, false), StandardCharsets.UTF_8);
            _dirty = false;
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeBytes((this.value).getBytes(Charset.forName("UTF-8")));
            if (!(this._io.isEof())) {
                this._io.writeU1(124);
            }
        }

        public void _check() {
            if (KaitaiStream.byteArrayIndexOf((this.value).getBytes(Charset.forName("UTF-8")), ((byte) 124)) != -1)
                throw new ConsistencyError("value", -1, KaitaiStream.byteArrayIndexOf((this.value).getBytes(Charset.forName("UTF-8")), ((byte) 124)));
            _dirty = false;
        }
        public String value() { return value; }
        public void setValue(String _v) { _dirty = true; value = _v; }
        public TermStrz4 _root() { return _root; }
        public void set_root(TermStrz4 _v) { _dirty = true; _root = _v; }
        public TermStrz4 _parent() { return _parent; }
        public void set_parent(TermStrz4 _v) { _dirty = true; _parent = _v; }
        private String value;
        private TermStrz4 _root;
        private TermStrz4 _parent;
    }
    public static class S2Type extends KaitaiStruct.ReadWrite {
        public static S2Type fromFile(String fileName) throws IOException {
            return new S2Type(new ByteBufferKaitaiStream(fileName));
        }
        public S2Type() {
            this(null, null, null);
        }

        public S2Type(KaitaiStream _io) {
            this(_io, null, null);
        }

        public S2Type(KaitaiStream _io, TermStrz4 _parent) {
            this(_io, _parent, null);
        }

        public S2Type(KaitaiStream _io, TermStrz4 _parent, TermStrz4 _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.value = new String(this._io.readBytesTerm((byte) 124, false, false, false), StandardCharsets.UTF_8);
            _dirty = false;
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeBytes((this.value).getBytes(Charset.forName("UTF-8")));
            if (!(this._io.isEof())) {
                long _pos = this._io.pos();
                this._io.writeU1(124);
                this._io.seek(_pos);
            }
        }

        public void _check() {
            if (KaitaiStream.byteArrayIndexOf((this.value).getBytes(Charset.forName("UTF-8")), ((byte) 124)) != -1)
                throw new ConsistencyError("value", -1, KaitaiStream.byteArrayIndexOf((this.value).getBytes(Charset.forName("UTF-8")), ((byte) 124)));
            _dirty = false;
        }
        public String value() { return value; }
        public void setValue(String _v) { _dirty = true; value = _v; }
        public TermStrz4 _root() { return _root; }
        public void set_root(TermStrz4 _v) { _dirty = true; _root = _v; }
        public TermStrz4 _parent() { return _parent; }
        public void set_parent(TermStrz4 _v) { _dirty = true; _parent = _v; }
        private String value;
        private TermStrz4 _root;
        private TermStrz4 _parent;
    }
    public static class S3Type extends KaitaiStruct.ReadWrite {
        public static S3Type fromFile(String fileName) throws IOException {
            return new S3Type(new ByteBufferKaitaiStream(fileName));
        }
        public S3Type() {
            this(null, null, null);
        }

        public S3Type(KaitaiStream _io) {
            this(_io, null, null);
        }

        public S3Type(KaitaiStream _io, TermStrz4 _parent) {
            this(_io, _parent, null);
        }

        public S3Type(KaitaiStream _io, TermStrz4 _parent, TermStrz4 _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.value = new String(this._io.readBytesTerm((byte) 64, true, true, false), StandardCharsets.UTF_8);
            _dirty = false;
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeBytes((this.value).getBytes(Charset.forName("UTF-8")));
            if (KaitaiStream.byteArrayIndexOf((this.value).getBytes(Charset.forName("UTF-8")), ((byte) 64)) == -1) {
                if (!(this._io.isEof()))
                    throw new ConsistencyError("value", 0, this._io.size() - this._io.pos());
            }
        }

        public void _check() {
            if ( ((KaitaiStream.byteArrayIndexOf((this.value).getBytes(Charset.forName("UTF-8")), ((byte) 64)) != -1) && (KaitaiStream.byteArrayIndexOf((this.value).getBytes(Charset.forName("UTF-8")), ((byte) 64)) != (this.value).getBytes(Charset.forName("UTF-8")).length - 1)) )
                throw new ConsistencyError("value", (this.value).getBytes(Charset.forName("UTF-8")).length - 1, KaitaiStream.byteArrayIndexOf((this.value).getBytes(Charset.forName("UTF-8")), ((byte) 64)));
            _dirty = false;
        }
        public String value() { return value; }
        public void setValue(String _v) { _dirty = true; value = _v; }
        public TermStrz4 _root() { return _root; }
        public void set_root(TermStrz4 _v) { _dirty = true; _root = _v; }
        public TermStrz4 _parent() { return _parent; }
        public void set_parent(TermStrz4 _v) { _dirty = true; _parent = _v; }
        private String value;
        private TermStrz4 _root;
        private TermStrz4 _parent;
    }
    public S1Type s1() { return s1; }
    public void setS1(S1Type _v) { _dirty = true; s1 = _v; }
    public int skipTerm1() { return skipTerm1; }
    public void setSkipTerm1(int _v) { _dirty = true; skipTerm1 = _v; }
    public S2Type s2() { return s2; }
    public void setS2(S2Type _v) { _dirty = true; s2 = _v; }
    public int skipTerm2() { return skipTerm2; }
    public void setSkipTerm2(int _v) { _dirty = true; skipTerm2 = _v; }
    public S3Type s3() { return s3; }
    public void setS3(S3Type _v) { _dirty = true; s3 = _v; }
    public TermStrz4 _root() { return _root; }
    public void set_root(TermStrz4 _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    public byte[] _raw_s1() { return _raw_s1; }
    public void set_raw_S1(byte[] _v) { _dirty = true; _raw_s1 = _v; }
    public byte[] _raw_s2() { return _raw_s2; }
    public void set_raw_S2(byte[] _v) { _dirty = true; _raw_s2 = _v; }
    public byte[] _raw_s3() { return _raw_s3; }
    public void set_raw_S3(byte[] _v) { _dirty = true; _raw_s3 = _v; }
    private S1Type s1;
    private int skipTerm1;
    private S2Type s2;
    private int skipTerm2;
    private S3Type s3;
    private TermStrz4 _root;
    private KaitaiStruct.ReadWrite _parent;
    private byte[] _raw_s1;
    private byte[] _raw_s2;
    private byte[] _raw_s3;
}
