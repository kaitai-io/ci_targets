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

public class StrEosPadTermEqual extends KaitaiStruct.ReadWrite {
    public static StrEosPadTermEqual fromFile(String fileName) throws IOException {
        return new StrEosPadTermEqual(new ByteBufferKaitaiStream(fileName));
    }
    public StrEosPadTermEqual() {
        this(null, null, null);
    }

    public StrEosPadTermEqual(KaitaiStream _io) {
        this(_io, null, null);
    }

    public StrEosPadTermEqual(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public StrEosPadTermEqual(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, StrEosPadTermEqual _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this._raw_s1 = this._io.readBytes(20);
        KaitaiStream _io__raw_s1 = new ByteBufferKaitaiStream(this._raw_s1);
        this.s1 = new S1Type(_io__raw_s1, this, _root);
        this.s1._read();
        this._raw_s2 = this._io.readBytes(20);
        KaitaiStream _io__raw_s2 = new ByteBufferKaitaiStream(this._raw_s2);
        this.s2 = new S2Type(_io__raw_s2, this, _root);
        this.s2._read();
        this._raw_s3 = this._io.readBytes(20);
        KaitaiStream _io__raw_s3 = new ByteBufferKaitaiStream(this._raw_s3);
        this.s3 = new S3Type(_io__raw_s3, this, _root);
        this.s3._read();
        this._raw_s4 = this._io.readBytes(20);
        KaitaiStream _io__raw_s4 = new ByteBufferKaitaiStream(this._raw_s4);
        this.s4 = new S4Type(_io__raw_s4, this, _root);
        this.s4._read();
        _dirty = false;
    }

    public void _fetchInstances() {
        this.s1._fetchInstances();
        this.s2._fetchInstances();
        this.s3._fetchInstances();
        this.s4._fetchInstances();
    }

    public void _write_Seq() {
        _assertNotDirty();
        final KaitaiStream _io__raw_s1 = new ByteBufferKaitaiStream(20);
        this._io.addChildStream(_io__raw_s1);
        {
            long _pos2 = this._io.pos();
            this._io.seek(this._io.pos() + (20));
            final StrEosPadTermEqual _this = this;
            _io__raw_s1.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                @Override
                protected void write(KaitaiStream parent) {
                    _this._raw_s1 = _io__raw_s1.toByteArray();
                    if (_this._raw_s1.length != 20)
                        throw new ConsistencyError("raw(s1)", _this._raw_s1.length, 20);
                    parent.writeBytes(_this._raw_s1);
                }
            });
        }
        this.s1._write_Seq(_io__raw_s1);
        final KaitaiStream _io__raw_s2 = new ByteBufferKaitaiStream(20);
        this._io.addChildStream(_io__raw_s2);
        {
            long _pos2 = this._io.pos();
            this._io.seek(this._io.pos() + (20));
            final StrEosPadTermEqual _this = this;
            _io__raw_s2.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                @Override
                protected void write(KaitaiStream parent) {
                    _this._raw_s2 = _io__raw_s2.toByteArray();
                    if (_this._raw_s2.length != 20)
                        throw new ConsistencyError("raw(s2)", _this._raw_s2.length, 20);
                    parent.writeBytes(_this._raw_s2);
                }
            });
        }
        this.s2._write_Seq(_io__raw_s2);
        final KaitaiStream _io__raw_s3 = new ByteBufferKaitaiStream(20);
        this._io.addChildStream(_io__raw_s3);
        {
            long _pos2 = this._io.pos();
            this._io.seek(this._io.pos() + (20));
            final StrEosPadTermEqual _this = this;
            _io__raw_s3.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                @Override
                protected void write(KaitaiStream parent) {
                    _this._raw_s3 = _io__raw_s3.toByteArray();
                    if (_this._raw_s3.length != 20)
                        throw new ConsistencyError("raw(s3)", _this._raw_s3.length, 20);
                    parent.writeBytes(_this._raw_s3);
                }
            });
        }
        this.s3._write_Seq(_io__raw_s3);
        final KaitaiStream _io__raw_s4 = new ByteBufferKaitaiStream(20);
        this._io.addChildStream(_io__raw_s4);
        {
            long _pos2 = this._io.pos();
            this._io.seek(this._io.pos() + (20));
            final StrEosPadTermEqual _this = this;
            _io__raw_s4.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                @Override
                protected void write(KaitaiStream parent) {
                    _this._raw_s4 = _io__raw_s4.toByteArray();
                    if (_this._raw_s4.length != 20)
                        throw new ConsistencyError("raw(s4)", _this._raw_s4.length, 20);
                    parent.writeBytes(_this._raw_s4);
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

        public S1Type(KaitaiStream _io, StrEosPadTermEqual _parent) {
            this(_io, _parent, null);
        }

        public S1Type(KaitaiStream _io, StrEosPadTermEqual _parent, StrEosPadTermEqual _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.value = new String(KaitaiStream.bytesTerminate(this._io.readBytesFull(), (byte) 64, false), StandardCharsets.UTF_8);
            _dirty = false;
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeBytesLimit((this.value).getBytes(Charset.forName("UTF-8")), this._io.size() - this._io.pos(), (byte) 64, (byte) 64);
            if (!(this._io.isEof()))
                throw new ConsistencyError("value", this._io.size() - this._io.pos(), 0);
        }

        public void _check() {
            _dirty = false;
        }
        private String value;
        private StrEosPadTermEqual _root;
        private StrEosPadTermEqual _parent;
        public String value() { return value; }
        public void setValue(String _v) { _dirty = true; value = _v; }
        public StrEosPadTermEqual _root() { return _root; }
        public void set_root(StrEosPadTermEqual _v) { _dirty = true; _root = _v; }
        public StrEosPadTermEqual _parent() { return _parent; }
        public void set_parent(StrEosPadTermEqual _v) { _dirty = true; _parent = _v; }
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

        public S2Type(KaitaiStream _io, StrEosPadTermEqual _parent) {
            this(_io, _parent, null);
        }

        public S2Type(KaitaiStream _io, StrEosPadTermEqual _parent, StrEosPadTermEqual _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.value = new String(KaitaiStream.bytesTerminate(KaitaiStream.bytesStripRight(this._io.readBytesFull(), (byte) 43), (byte) 64, true), StandardCharsets.UTF_8);
            _dirty = false;
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeBytesLimit((this.value).getBytes(Charset.forName("UTF-8")), this._io.size() - this._io.pos(), (byte) 43, (byte) 43);
            if (!(this._io.isEof()))
                throw new ConsistencyError("value", this._io.size() - this._io.pos(), 0);
        }

        public void _check() {
            _dirty = false;
        }
        private String value;
        private StrEosPadTermEqual _root;
        private StrEosPadTermEqual _parent;
        public String value() { return value; }
        public void setValue(String _v) { _dirty = true; value = _v; }
        public StrEosPadTermEqual _root() { return _root; }
        public void set_root(StrEosPadTermEqual _v) { _dirty = true; _root = _v; }
        public StrEosPadTermEqual _parent() { return _parent; }
        public void set_parent(StrEosPadTermEqual _v) { _dirty = true; _parent = _v; }
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

        public S3Type(KaitaiStream _io, StrEosPadTermEqual _parent) {
            this(_io, _parent, null);
        }

        public S3Type(KaitaiStream _io, StrEosPadTermEqual _parent, StrEosPadTermEqual _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.value = new String(KaitaiStream.bytesTerminate(this._io.readBytesFull(), (byte) 43, false), StandardCharsets.UTF_8);
            _dirty = false;
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeBytesLimit((this.value).getBytes(Charset.forName("UTF-8")), this._io.size() - this._io.pos(), (byte) 43, (byte) 43);
            if (!(this._io.isEof()))
                throw new ConsistencyError("value", this._io.size() - this._io.pos(), 0);
        }

        public void _check() {
            _dirty = false;
        }
        private String value;
        private StrEosPadTermEqual _root;
        private StrEosPadTermEqual _parent;
        public String value() { return value; }
        public void setValue(String _v) { _dirty = true; value = _v; }
        public StrEosPadTermEqual _root() { return _root; }
        public void set_root(StrEosPadTermEqual _v) { _dirty = true; _root = _v; }
        public StrEosPadTermEqual _parent() { return _parent; }
        public void set_parent(StrEosPadTermEqual _v) { _dirty = true; _parent = _v; }
    }
    public static class S4Type extends KaitaiStruct.ReadWrite {
        public static S4Type fromFile(String fileName) throws IOException {
            return new S4Type(new ByteBufferKaitaiStream(fileName));
        }
        public S4Type() {
            this(null, null, null);
        }

        public S4Type(KaitaiStream _io) {
            this(_io, null, null);
        }

        public S4Type(KaitaiStream _io, StrEosPadTermEqual _parent) {
            this(_io, _parent, null);
        }

        public S4Type(KaitaiStream _io, StrEosPadTermEqual _parent, StrEosPadTermEqual _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.value = new String(KaitaiStream.bytesTerminate(this._io.readBytesFull(), (byte) 46, true), StandardCharsets.UTF_8);
            _dirty = false;
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeBytesLimit((this.value).getBytes(Charset.forName("UTF-8")), this._io.size() - this._io.pos(), (byte) 46, (byte) 46);
            if (!(this._io.isEof()))
                throw new ConsistencyError("value", this._io.size() - this._io.pos(), 0);
        }

        public void _check() {
            _dirty = false;
        }
        private String value;
        private StrEosPadTermEqual _root;
        private StrEosPadTermEqual _parent;
        public String value() { return value; }
        public void setValue(String _v) { _dirty = true; value = _v; }
        public StrEosPadTermEqual _root() { return _root; }
        public void set_root(StrEosPadTermEqual _v) { _dirty = true; _root = _v; }
        public StrEosPadTermEqual _parent() { return _parent; }
        public void set_parent(StrEosPadTermEqual _v) { _dirty = true; _parent = _v; }
    }
    private S1Type s1;
    private S2Type s2;
    private S3Type s3;
    private S4Type s4;
    private StrEosPadTermEqual _root;
    private KaitaiStruct.ReadWrite _parent;
    private byte[] _raw_s1;
    private byte[] _raw_s2;
    private byte[] _raw_s3;
    private byte[] _raw_s4;
    public S1Type s1() { return s1; }
    public void setS1(S1Type _v) { _dirty = true; s1 = _v; }
    public S2Type s2() { return s2; }
    public void setS2(S2Type _v) { _dirty = true; s2 = _v; }
    public S3Type s3() { return s3; }
    public void setS3(S3Type _v) { _dirty = true; s3 = _v; }
    public S4Type s4() { return s4; }
    public void setS4(S4Type _v) { _dirty = true; s4 = _v; }
    public StrEosPadTermEqual _root() { return _root; }
    public void set_root(StrEosPadTermEqual _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    public byte[] _raw_s1() { return _raw_s1; }
    public void set_raw_S1(byte[] _v) { _dirty = true; _raw_s1 = _v; }
    public byte[] _raw_s2() { return _raw_s2; }
    public void set_raw_S2(byte[] _v) { _dirty = true; _raw_s2 = _v; }
    public byte[] _raw_s3() { return _raw_s3; }
    public void set_raw_S3(byte[] _v) { _dirty = true; _raw_s3 = _v; }
    public byte[] _raw_s4() { return _raw_s4; }
    public void set_raw_S4(byte[] _v) { _dirty = true; _raw_s4 = _v; }
}
