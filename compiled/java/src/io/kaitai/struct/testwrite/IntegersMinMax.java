// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Objects;
import io.kaitai.struct.ConsistencyError;

public class IntegersMinMax extends KaitaiStruct.ReadWrite {
    public static IntegersMinMax fromFile(String fileName) throws IOException {
        return new IntegersMinMax(new ByteBufferKaitaiStream(fileName));
    }
    public IntegersMinMax() {
        this(null, null, null);
    }

    public IntegersMinMax(KaitaiStream _io) {
        this(_io, null, null);
    }

    public IntegersMinMax(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public IntegersMinMax(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, IntegersMinMax _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.unsignedMin = new Unsigned(this._io, this, _root);
        this.unsignedMin._read();
        this.unsignedMax = new Unsigned(this._io, this, _root);
        this.unsignedMax._read();
        this.signedMin = new Signed(this._io, this, _root);
        this.signedMin._read();
        this.signedMax = new Signed(this._io, this, _root);
        this.signedMax._read();
        _dirty = false;
    }

    public void _fetchInstances() {
        this.unsignedMin._fetchInstances();
        this.unsignedMax._fetchInstances();
        this.signedMin._fetchInstances();
        this.signedMax._fetchInstances();
    }

    public void _write_Seq() {
        _assertNotDirty();
        this.unsignedMin._write_Seq(this._io);
        this.unsignedMax._write_Seq(this._io);
        this.signedMin._write_Seq(this._io);
        this.signedMax._write_Seq(this._io);
    }

    public void _check() {
        if (!Objects.equals(this.unsignedMin._root(), _root()))
            throw new ConsistencyError("unsigned_min", _root(), this.unsignedMin._root());
        if (!Objects.equals(this.unsignedMin._parent(), this))
            throw new ConsistencyError("unsigned_min", this, this.unsignedMin._parent());
        if (!Objects.equals(this.unsignedMax._root(), _root()))
            throw new ConsistencyError("unsigned_max", _root(), this.unsignedMax._root());
        if (!Objects.equals(this.unsignedMax._parent(), this))
            throw new ConsistencyError("unsigned_max", this, this.unsignedMax._parent());
        if (!Objects.equals(this.signedMin._root(), _root()))
            throw new ConsistencyError("signed_min", _root(), this.signedMin._root());
        if (!Objects.equals(this.signedMin._parent(), this))
            throw new ConsistencyError("signed_min", this, this.signedMin._parent());
        if (!Objects.equals(this.signedMax._root(), _root()))
            throw new ConsistencyError("signed_max", _root(), this.signedMax._root());
        if (!Objects.equals(this.signedMax._parent(), this))
            throw new ConsistencyError("signed_max", this, this.signedMax._parent());
        _dirty = false;
    }
    public static class Signed extends KaitaiStruct.ReadWrite {
        public static Signed fromFile(String fileName) throws IOException {
            return new Signed(new ByteBufferKaitaiStream(fileName));
        }
        public Signed() {
            this(null, null, null);
        }

        public Signed(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Signed(KaitaiStream _io, IntegersMinMax _parent) {
            this(_io, _parent, null);
        }

        public Signed(KaitaiStream _io, IntegersMinMax _parent, IntegersMinMax _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.s1 = this._io.readS1();
            this.s2le = this._io.readS2le();
            this.s4le = this._io.readS4le();
            this.s8le = this._io.readS8le();
            this.s2be = this._io.readS2be();
            this.s4be = this._io.readS4be();
            this.s8be = this._io.readS8be();
            _dirty = false;
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeS1(this.s1);
            this._io.writeS2le(this.s2le);
            this._io.writeS4le(this.s4le);
            this._io.writeS8le(this.s8le);
            this._io.writeS2be(this.s2be);
            this._io.writeS4be(this.s4be);
            this._io.writeS8be(this.s8be);
        }

        public void _check() {
            _dirty = false;
        }
        private byte s1;
        private short s2le;
        private int s4le;
        private long s8le;
        private short s2be;
        private int s4be;
        private long s8be;
        private IntegersMinMax _root;
        private IntegersMinMax _parent;
        public byte s1() { return s1; }
        public void setS1(byte _v) { _dirty = true; s1 = _v; }
        public short s2le() { return s2le; }
        public void setS2le(short _v) { _dirty = true; s2le = _v; }
        public int s4le() { return s4le; }
        public void setS4le(int _v) { _dirty = true; s4le = _v; }
        public long s8le() { return s8le; }
        public void setS8le(long _v) { _dirty = true; s8le = _v; }
        public short s2be() { return s2be; }
        public void setS2be(short _v) { _dirty = true; s2be = _v; }
        public int s4be() { return s4be; }
        public void setS4be(int _v) { _dirty = true; s4be = _v; }
        public long s8be() { return s8be; }
        public void setS8be(long _v) { _dirty = true; s8be = _v; }
        public IntegersMinMax _root() { return _root; }
        public void set_root(IntegersMinMax _v) { _dirty = true; _root = _v; }
        public IntegersMinMax _parent() { return _parent; }
        public void set_parent(IntegersMinMax _v) { _dirty = true; _parent = _v; }
    }
    public static class Unsigned extends KaitaiStruct.ReadWrite {
        public static Unsigned fromFile(String fileName) throws IOException {
            return new Unsigned(new ByteBufferKaitaiStream(fileName));
        }
        public Unsigned() {
            this(null, null, null);
        }

        public Unsigned(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Unsigned(KaitaiStream _io, IntegersMinMax _parent) {
            this(_io, _parent, null);
        }

        public Unsigned(KaitaiStream _io, IntegersMinMax _parent, IntegersMinMax _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.u1 = this._io.readU1();
            this.u2le = this._io.readU2le();
            this.u4le = this._io.readU4le();
            this.u8le = this._io.readU8le();
            this.u2be = this._io.readU2be();
            this.u4be = this._io.readU4be();
            this.u8be = this._io.readU8be();
            _dirty = false;
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeU1(this.u1);
            this._io.writeU2le(this.u2le);
            this._io.writeU4le(this.u4le);
            this._io.writeU8le(this.u8le);
            this._io.writeU2be(this.u2be);
            this._io.writeU4be(this.u4be);
            this._io.writeU8be(this.u8be);
        }

        public void _check() {
            _dirty = false;
        }
        private int u1;
        private int u2le;
        private long u4le;
        private long u8le;
        private int u2be;
        private long u4be;
        private long u8be;
        private IntegersMinMax _root;
        private IntegersMinMax _parent;
        public int u1() { return u1; }
        public void setU1(int _v) { _dirty = true; u1 = _v; }
        public int u2le() { return u2le; }
        public void setU2le(int _v) { _dirty = true; u2le = _v; }
        public long u4le() { return u4le; }
        public void setU4le(long _v) { _dirty = true; u4le = _v; }
        public long u8le() { return u8le; }
        public void setU8le(long _v) { _dirty = true; u8le = _v; }
        public int u2be() { return u2be; }
        public void setU2be(int _v) { _dirty = true; u2be = _v; }
        public long u4be() { return u4be; }
        public void setU4be(long _v) { _dirty = true; u4be = _v; }
        public long u8be() { return u8be; }
        public void setU8be(long _v) { _dirty = true; u8be = _v; }
        public IntegersMinMax _root() { return _root; }
        public void set_root(IntegersMinMax _v) { _dirty = true; _root = _v; }
        public IntegersMinMax _parent() { return _parent; }
        public void set_parent(IntegersMinMax _v) { _dirty = true; _parent = _v; }
    }
    private Unsigned unsignedMin;
    private Unsigned unsignedMax;
    private Signed signedMin;
    private Signed signedMax;
    private IntegersMinMax _root;
    private KaitaiStruct.ReadWrite _parent;
    public Unsigned unsignedMin() { return unsignedMin; }
    public void setUnsignedMin(Unsigned _v) { _dirty = true; unsignedMin = _v; }
    public Unsigned unsignedMax() { return unsignedMax; }
    public void setUnsignedMax(Unsigned _v) { _dirty = true; unsignedMax = _v; }
    public Signed signedMin() { return signedMin; }
    public void setSignedMin(Signed _v) { _dirty = true; signedMin = _v; }
    public Signed signedMax() { return signedMax; }
    public void setSignedMax(Signed _v) { _dirty = true; signedMax = _v; }
    public IntegersMinMax _root() { return _root; }
    public void set_root(IntegersMinMax _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
