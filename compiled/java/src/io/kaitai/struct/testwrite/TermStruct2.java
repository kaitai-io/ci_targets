// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import io.kaitai.struct.ConsistencyError;
import java.util.Objects;

public class TermStruct2 extends KaitaiStruct.ReadWrite {
    public static TermStruct2 fromFile(String fileName) throws IOException {
        return new TermStruct2(new ByteBufferKaitaiStream(fileName));
    }
    public TermStruct2() {
        this(null, null, null);
    }

    public TermStruct2(KaitaiStream _io) {
        this(_io, null, null);
    }

    public TermStruct2(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public TermStruct2(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, TermStruct2 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this._raw_s1 = this._io.readBytesTerm((byte) 124, false, true, true);
        this.s1_OuterSize = this._raw_s1.length;
        KaitaiStream _io__raw_s1 = new ByteBufferKaitaiStream(this._raw_s1);
        this.s1 = new BytesWrapper(_io__raw_s1, this, _root);
        this.s1._read();
        this._raw_s2 = this._io.readBytesTerm((byte) 124, true, true, true);
        this.s2_OuterSize = this._raw_s2.length;
        KaitaiStream _io__raw_s2 = new ByteBufferKaitaiStream(this._raw_s2);
        this.s2 = new BytesWrapper(_io__raw_s2, this, _root);
        this.s2._read();
        this._raw_s3 = this._io.readBytesTerm((byte) 64, false, false, true);
        this.s3_OuterSize = this._raw_s3.length;
        KaitaiStream _io__raw_s3 = new ByteBufferKaitaiStream(this._raw_s3);
        this.s3 = new BytesWrapper(_io__raw_s3, this, _root);
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
        final KaitaiStream _io__raw_s1 = new ByteBufferKaitaiStream(this.s1_OuterSize);
        this._io.addChildStream(_io__raw_s1);
        {
            long _pos2 = this._io.pos();
            this._io.seek(this._io.pos() + (this.s1_OuterSize));
            this._io.seek(this._io.pos() + (1));
            final TermStruct2 _this = this;
            _io__raw_s1.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                @Override
                protected void write(KaitaiStream parent) {
                    _this._raw_s1 = _io__raw_s1.toByteArray();
                    if (KaitaiStream.byteArrayIndexOf(_this._raw_s1, ((byte) 124)) != -1)
                        throw new ConsistencyError("raw(s1)", KaitaiStream.byteArrayIndexOf(_this._raw_s1, ((byte) 124)), -1);
                    parent.writeBytes(_this._raw_s1);
                    parent.writeU1(124);
                }
            });
        }
        this.s1._write_Seq(_io__raw_s1);
        final KaitaiStream _io__raw_s2 = new ByteBufferKaitaiStream(this.s2_OuterSize);
        this._io.addChildStream(_io__raw_s2);
        {
            long _pos2 = this._io.pos();
            this._io.seek(this._io.pos() + (this.s2_OuterSize));
            final TermStruct2 _this = this;
            _io__raw_s2.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                @Override
                protected void write(KaitaiStream parent) {
                    _this._raw_s2 = _io__raw_s2.toByteArray();
                    if (_this._raw_s2.length == 0)
                        throw new ConsistencyError("raw(s2)", _this._raw_s2.length, 0);
                    if (KaitaiStream.byteArrayIndexOf(_this._raw_s2, ((byte) 124)) != _this._raw_s2.length - 1)
                        throw new ConsistencyError("raw(s2)", KaitaiStream.byteArrayIndexOf(_this._raw_s2, ((byte) 124)), _this._raw_s2.length - 1);
                    parent.writeBytes(_this._raw_s2);
                }
            });
        }
        this.s2._write_Seq(_io__raw_s2);
        final KaitaiStream _io__raw_s3 = new ByteBufferKaitaiStream(this.s3_OuterSize);
        this._io.addChildStream(_io__raw_s3);
        {
            long _pos2 = this._io.pos();
            this._io.seek(this._io.pos() + (this.s3_OuterSize));
            final TermStruct2 _this = this;
            _io__raw_s3.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                @Override
                protected void write(KaitaiStream parent) {
                    _this._raw_s3 = _io__raw_s3.toByteArray();
                    if (KaitaiStream.byteArrayIndexOf(_this._raw_s3, ((byte) 64)) != -1)
                        throw new ConsistencyError("raw(s3)", KaitaiStream.byteArrayIndexOf(_this._raw_s3, ((byte) 64)), -1);
                    parent.writeBytes(_this._raw_s3);
                    {
                        long _pos = parent.pos();
                        parent.writeU1(64);
                        parent.seek(_pos);
                    }
                }
            });
        }
        this.s3._write_Seq(_io__raw_s3);
    }

    public void _check() {
        if (!Objects.equals(this.s1._root(), _root()))
            throw new ConsistencyError("s1", this.s1._root(), _root());
        if (!Objects.equals(this.s1._parent(), this))
            throw new ConsistencyError("s1", this.s1._parent(), this);
        if (!Objects.equals(this.s2._root(), _root()))
            throw new ConsistencyError("s2", this.s2._root(), _root());
        if (!Objects.equals(this.s2._parent(), this))
            throw new ConsistencyError("s2", this.s2._parent(), this);
        if (!Objects.equals(this.s3._root(), _root()))
            throw new ConsistencyError("s3", this.s3._root(), _root());
        if (!Objects.equals(this.s3._parent(), this))
            throw new ConsistencyError("s3", this.s3._parent(), this);
        _dirty = false;
    }
    public static class BytesWrapper extends KaitaiStruct.ReadWrite {
        public static BytesWrapper fromFile(String fileName) throws IOException {
            return new BytesWrapper(new ByteBufferKaitaiStream(fileName));
        }
        public BytesWrapper() {
            this(null, null, null);
        }

        public BytesWrapper(KaitaiStream _io) {
            this(_io, null, null);
        }

        public BytesWrapper(KaitaiStream _io, TermStruct2 _parent) {
            this(_io, _parent, null);
        }

        public BytesWrapper(KaitaiStream _io, TermStruct2 _parent, TermStruct2 _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.value = this._io.readBytesFull();
            _dirty = false;
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeBytes(this.value);
            if (!(this._io.isEof()))
                throw new ConsistencyError("value", this._io.size() - this._io.pos(), 0);
        }

        public void _check() {
            _dirty = false;
        }
        private byte[] value;
        private TermStruct2 _root;
        private TermStruct2 _parent;
        public byte[] value() { return value; }
        public void setValue(byte[] _v) { _dirty = true; value = _v; }
        public TermStruct2 _root() { return _root; }
        public void set_root(TermStruct2 _v) { _dirty = true; _root = _v; }
        public TermStruct2 _parent() { return _parent; }
        public void set_parent(TermStruct2 _v) { _dirty = true; _parent = _v; }
    }
    private BytesWrapper s1;
    private BytesWrapper s2;
    private BytesWrapper s3;
    private TermStruct2 _root;
    private KaitaiStruct.ReadWrite _parent;
    private byte[] _raw_s1;
    private int s1_OuterSize;
    private byte[] _raw_s2;
    private int s2_OuterSize;
    private byte[] _raw_s3;
    private int s3_OuterSize;
    public BytesWrapper s1() { return s1; }
    public void setS1(BytesWrapper _v) { _dirty = true; s1 = _v; }
    public BytesWrapper s2() { return s2; }
    public void setS2(BytesWrapper _v) { _dirty = true; s2 = _v; }
    public BytesWrapper s3() { return s3; }
    public void setS3(BytesWrapper _v) { _dirty = true; s3 = _v; }
    public TermStruct2 _root() { return _root; }
    public void set_root(TermStruct2 _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    public byte[] _raw_s1() { return _raw_s1; }
    public void set_raw_S1(byte[] _v) { _dirty = true; _raw_s1 = _v; }
    public int s1_OuterSize() { return s1_OuterSize; }
    public void setS1_OuterSize(int _v) { _dirty = true; s1_OuterSize = _v; }
    public byte[] _raw_s2() { return _raw_s2; }
    public void set_raw_S2(byte[] _v) { _dirty = true; _raw_s2 = _v; }
    public int s2_OuterSize() { return s2_OuterSize; }
    public void setS2_OuterSize(int _v) { _dirty = true; s2_OuterSize = _v; }
    public byte[] _raw_s3() { return _raw_s3; }
    public void set_raw_S3(byte[] _v) { _dirty = true; _raw_s3 = _v; }
    public int s3_OuterSize() { return s3_OuterSize; }
    public void setS3_OuterSize(int _v) { _dirty = true; s3_OuterSize = _v; }
}
