// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import io.kaitai.struct.ConsistencyError;
import java.util.Objects;

public class StructPadTermEqual extends KaitaiStruct.ReadWrite {
    public static StructPadTermEqual fromFile(String fileName) throws IOException {
        return new StructPadTermEqual(new ByteBufferKaitaiStream(fileName));
    }
    public StructPadTermEqual() {
        this(null, null, null);
    }

    public StructPadTermEqual(KaitaiStream _io) {
        this(_io, null, null);
    }

    public StructPadTermEqual(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public StructPadTermEqual(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, StructPadTermEqual _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this._raw_s1 = KaitaiStream.bytesTerminate(this._io.readBytes(20), (byte) 64, false);
        this.s1_InnerSize = this._raw_s1.length;
        KaitaiStream _io__raw_s1 = new ByteBufferKaitaiStream(this._raw_s1);
        this.s1 = new BytesWrapper(_io__raw_s1, this, _root);
        this.s1._read();
        this._raw_s2 = KaitaiStream.bytesTerminate(KaitaiStream.bytesStripRight(this._io.readBytes(20), (byte) 43), (byte) 64, true);
        this.s2_InnerSize = this._raw_s2.length;
        KaitaiStream _io__raw_s2 = new ByteBufferKaitaiStream(this._raw_s2);
        this.s2 = new BytesWrapper(_io__raw_s2, this, _root);
        this.s2._read();
        this._raw_s3 = KaitaiStream.bytesTerminate(this._io.readBytes(20), (byte) 43, false);
        this.s3_InnerSize = this._raw_s3.length;
        KaitaiStream _io__raw_s3 = new ByteBufferKaitaiStream(this._raw_s3);
        this.s3 = new BytesWrapper(_io__raw_s3, this, _root);
        this.s3._read();
        this._raw_s4 = KaitaiStream.bytesTerminate(this._io.readBytes(20), (byte) 46, true);
        this.s4_InnerSize = this._raw_s4.length;
        KaitaiStream _io__raw_s4 = new ByteBufferKaitaiStream(this._raw_s4);
        this.s4 = new BytesWrapper(_io__raw_s4, this, _root);
        this.s4._read();
    }

    public void _fetchInstances() {
        this.s1._fetchInstances();
        this.s2._fetchInstances();
        this.s3._fetchInstances();
        this.s4._fetchInstances();
    }

    public void _write_Seq() {
        final KaitaiStream _io__raw_s1 = new ByteBufferKaitaiStream(this.s1_InnerSize);
        this._io.addChildStream(_io__raw_s1);
        {
            long _pos2 = this._io.pos();
            this._io.seek(this._io.pos() + (20));
            final StructPadTermEqual _this = this;
            _io__raw_s1.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                @Override
                protected void write(KaitaiStream parent) {
                    _this._raw_s1 = _io__raw_s1.toByteArray();
                    if (_this._raw_s1.length > 20)
                        throw new ConsistencyError("raw(s1)", _this._raw_s1.length, 20);
                    if (KaitaiStream.byteArrayIndexOf(_this._raw_s1, ((byte) 64)) != -1)
                        throw new ConsistencyError("raw(s1)", KaitaiStream.byteArrayIndexOf(_this._raw_s1, ((byte) 64)), -1);
                    parent.writeBytesLimit(_this._raw_s1, 20, (byte) 64, (byte) 64);
                }
            });
        }
        this.s1._write_Seq(_io__raw_s1);
        final KaitaiStream _io__raw_s2 = new ByteBufferKaitaiStream(this.s2_InnerSize);
        this._io.addChildStream(_io__raw_s2);
        {
            long _pos2 = this._io.pos();
            this._io.seek(this._io.pos() + (20));
            final StructPadTermEqual _this = this;
            _io__raw_s2.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                @Override
                protected void write(KaitaiStream parent) {
                    _this._raw_s2 = _io__raw_s2.toByteArray();
                    if (_this._raw_s2.length > 20)
                        throw new ConsistencyError("raw(s2)", _this._raw_s2.length, 20);
                    if ( ((KaitaiStream.byteArrayIndexOf(_this._raw_s2, ((byte) 64)) != -1) && (KaitaiStream.byteArrayIndexOf(_this._raw_s2, ((byte) 64)) != _this._raw_s2.length - 1)) )
                        throw new ConsistencyError("raw(s2)", KaitaiStream.byteArrayIndexOf(_this._raw_s2, ((byte) 64)), _this._raw_s2.length - 1);
                    if (KaitaiStream.byteArrayIndexOf(_this._raw_s2, ((byte) 64)) == -1) {
                        if ( ((_this._raw_s2.length != 0) && ((_this._raw_s2[((Number) (_this._raw_s2.length - 1)).intValue()] & 0xff) == 43)) )
                            throw new ConsistencyError("raw(s2)", (_this._raw_s2[((Number) (_this._raw_s2.length - 1)).intValue()] & 0xff), 43);
                    }
                    parent.writeBytesLimit(_this._raw_s2, 20, (byte) 43, (byte) 43);
                }
            });
        }
        this.s2._write_Seq(_io__raw_s2);
        final KaitaiStream _io__raw_s3 = new ByteBufferKaitaiStream(this.s3_InnerSize);
        this._io.addChildStream(_io__raw_s3);
        {
            long _pos2 = this._io.pos();
            this._io.seek(this._io.pos() + (20));
            final StructPadTermEqual _this = this;
            _io__raw_s3.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                @Override
                protected void write(KaitaiStream parent) {
                    _this._raw_s3 = _io__raw_s3.toByteArray();
                    if (_this._raw_s3.length > 20)
                        throw new ConsistencyError("raw(s3)", _this._raw_s3.length, 20);
                    if (KaitaiStream.byteArrayIndexOf(_this._raw_s3, ((byte) 43)) != -1)
                        throw new ConsistencyError("raw(s3)", KaitaiStream.byteArrayIndexOf(_this._raw_s3, ((byte) 43)), -1);
                    parent.writeBytesLimit(_this._raw_s3, 20, (byte) 43, (byte) 43);
                }
            });
        }
        this.s3._write_Seq(_io__raw_s3);
        final KaitaiStream _io__raw_s4 = new ByteBufferKaitaiStream(this.s4_InnerSize);
        this._io.addChildStream(_io__raw_s4);
        {
            long _pos2 = this._io.pos();
            this._io.seek(this._io.pos() + (20));
            final StructPadTermEqual _this = this;
            _io__raw_s4.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                @Override
                protected void write(KaitaiStream parent) {
                    _this._raw_s4 = _io__raw_s4.toByteArray();
                    if (_this._raw_s4.length > 20)
                        throw new ConsistencyError("raw(s4)", _this._raw_s4.length, 20);
                    if (_this._raw_s4.length < 20) {
                        if (_this._raw_s4.length == 0)
                            throw new ConsistencyError("raw(s4)", _this._raw_s4.length, 0);
                        if (KaitaiStream.byteArrayIndexOf(_this._raw_s4, ((byte) 46)) != _this._raw_s4.length - 1)
                            throw new ConsistencyError("raw(s4)", KaitaiStream.byteArrayIndexOf(_this._raw_s4, ((byte) 46)), _this._raw_s4.length - 1);
                    }
                    if (_this._raw_s4.length == 20) {
                        if ( ((KaitaiStream.byteArrayIndexOf(_this._raw_s4, ((byte) 46)) != -1) && (KaitaiStream.byteArrayIndexOf(_this._raw_s4, ((byte) 46)) != _this._raw_s4.length - 1)) )
                            throw new ConsistencyError("raw(s4)", KaitaiStream.byteArrayIndexOf(_this._raw_s4, ((byte) 46)), _this._raw_s4.length - 1);
                    }
                    parent.writeBytesLimit(_this._raw_s4, 20, (byte) 46, (byte) 46);
                }
            });
        }
        this.s4._write_Seq(_io__raw_s4);
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
        if (!Objects.equals(this.s4._root(), _root()))
            throw new ConsistencyError("s4", this.s4._root(), _root());
        if (!Objects.equals(this.s4._parent(), this))
            throw new ConsistencyError("s4", this.s4._parent(), this);
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

        public BytesWrapper(KaitaiStream _io, StructPadTermEqual _parent) {
            this(_io, _parent, null);
        }

        public BytesWrapper(KaitaiStream _io, StructPadTermEqual _parent, StructPadTermEqual _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.value = this._io.readBytesFull();
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            this._io.writeBytes(this.value);
            if (!(this._io.isEof()))
                throw new ConsistencyError("value", this._io.size() - this._io.pos(), 0);
        }

        public void _check() {
        }
        private byte[] value;
        private StructPadTermEqual _root;
        private StructPadTermEqual _parent;
        public byte[] value() { return value; }
        public void setValue(byte[] _v) { value = _v; }
        public StructPadTermEqual _root() { return _root; }
        public void set_root(StructPadTermEqual _v) { _root = _v; }
        public StructPadTermEqual _parent() { return _parent; }
        public void set_parent(StructPadTermEqual _v) { _parent = _v; }
    }
    private BytesWrapper s1;
    private BytesWrapper s2;
    private BytesWrapper s3;
    private BytesWrapper s4;
    private StructPadTermEqual _root;
    private KaitaiStruct.ReadWrite _parent;
    private byte[] _raw_s1;
    private int s1_InnerSize;
    private byte[] _raw_s2;
    private int s2_InnerSize;
    private byte[] _raw_s3;
    private int s3_InnerSize;
    private byte[] _raw_s4;
    private int s4_InnerSize;
    public BytesWrapper s1() { return s1; }
    public void setS1(BytesWrapper _v) { s1 = _v; }
    public BytesWrapper s2() { return s2; }
    public void setS2(BytesWrapper _v) { s2 = _v; }
    public BytesWrapper s3() { return s3; }
    public void setS3(BytesWrapper _v) { s3 = _v; }
    public BytesWrapper s4() { return s4; }
    public void setS4(BytesWrapper _v) { s4 = _v; }
    public StructPadTermEqual _root() { return _root; }
    public void set_root(StructPadTermEqual _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
    public byte[] _raw_s1() { return _raw_s1; }
    public void set_raw_S1(byte[] _v) { _raw_s1 = _v; }
    public int s1_InnerSize() { return s1_InnerSize; }
    public void setS1_InnerSize(int _v) { s1_InnerSize = _v; }
    public byte[] _raw_s2() { return _raw_s2; }
    public void set_raw_S2(byte[] _v) { _raw_s2 = _v; }
    public int s2_InnerSize() { return s2_InnerSize; }
    public void setS2_InnerSize(int _v) { s2_InnerSize = _v; }
    public byte[] _raw_s3() { return _raw_s3; }
    public void set_raw_S3(byte[] _v) { _raw_s3 = _v; }
    public int s3_InnerSize() { return s3_InnerSize; }
    public void setS3_InnerSize(int _v) { s3_InnerSize = _v; }
    public byte[] _raw_s4() { return _raw_s4; }
    public void set_raw_S4(byte[] _v) { _raw_s4 = _v; }
    public int s4_InnerSize() { return s4_InnerSize; }
    public void setS4_InnerSize(int _v) { s4_InnerSize = _v; }
}
