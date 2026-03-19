// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import io.kaitai.struct.ConsistencyError;
import java.util.Objects;

public class BitsByteAligned extends KaitaiStruct.ReadWrite {
    public static BitsByteAligned fromFile(String fileName) throws IOException {
        return new BitsByteAligned(new ByteBufferKaitaiStream(fileName));
    }
    public BitsByteAligned() {
        this(null, null, null);
    }

    public BitsByteAligned(KaitaiStream _io) {
        this(_io, null, null);
    }

    public BitsByteAligned(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public BitsByteAligned(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, BitsByteAligned _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.one = this._io.readBitsIntBe(6);
        this.byte1 = this._io.readU1();
        this.two = this._io.readBitsIntBe(3);
        this.three = this._io.readBitsIntBe(1) != 0;
        this.byte2 = this._io.readBytes(1);
        this.four = this._io.readBitsIntBe(14);
        this._raw_byte3 = this._io.readBytes(3);
        KaitaiStream _io__raw_byte3 = new ByteBufferKaitaiStream(this._raw_byte3);
        this.byte3 = new Foo(_io__raw_byte3, this, _root);
        this.byte3._read();
        this.fullByte = this._io.readBitsIntBe(8);
        this.byte4 = this._io.readU1();
        this.five = this._io.readBitsIntBe(22);
        this.bytesTerm = this._io.readBytesTerm((byte) 69, true, true, true);
        this.six = this._io.readBitsIntBe(8);
        _dirty = false;
    }

    public void _fetchInstances() {
        this.byte3._fetchInstances();
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeBitsIntBe(6, this.one);
        this._io.writeU1(this.byte1);
        this._io.writeBitsIntBe(3, this.two);
        this._io.writeBitsIntBe(1, (this.three ? 1 : 0));
        this._io.writeBytes(this.byte2);
        this._io.writeBitsIntBe(14, this.four);
        final KaitaiStream _io__raw_byte3 = new ByteBufferKaitaiStream(3);
        this._io.addChildStream(_io__raw_byte3);
        {
            long _pos2 = this._io.pos();
            this._io.seek(this._io.pos() + (3));
            final BitsByteAligned _this = this;
            _io__raw_byte3.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                @Override
                protected void write(KaitaiStream parent) {
                    _this._raw_byte3 = _io__raw_byte3.toByteArray();
                    if (_this._raw_byte3.length != 3)
                        throw new ConsistencyError("raw(byte_3)", 3, _this._raw_byte3.length);
                    parent.writeBytes(_this._raw_byte3);
                }
            });
        }
        this.byte3._write_Seq(_io__raw_byte3);
        this._io.writeBitsIntBe(8, this.fullByte);
        this._io.writeU1(this.byte4);
        this._io.writeBitsIntBe(22, this.five);
        this._io.writeBytes(this.bytesTerm);
        this._io.writeBitsIntBe(8, this.six);
    }

    public void _check() {
        if (this.byte2.length != 1)
            throw new ConsistencyError("byte_2", 1, this.byte2.length);
        if (!Objects.equals(this.byte3._root(), _root()))
            throw new ConsistencyError("byte_3", _root(), this.byte3._root());
        if (!Objects.equals(this.byte3._parent(), this))
            throw new ConsistencyError("byte_3", this, this.byte3._parent());
        if (this.bytesTerm.length == 0)
            throw new ConsistencyError("bytes_term", 0, this.bytesTerm.length);
        if (KaitaiStream.byteArrayIndexOf(this.bytesTerm, ((byte) 69)) != this.bytesTerm.length - 1)
            throw new ConsistencyError("bytes_term", this.bytesTerm.length - 1, KaitaiStream.byteArrayIndexOf(this.bytesTerm, ((byte) 69)));
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

        public Foo(KaitaiStream _io, BitsByteAligned _parent) {
            this(_io, _parent, null);
        }

        public Foo(KaitaiStream _io, BitsByteAligned _parent, BitsByteAligned _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.inner = this._io.readBitsIntBe(19);
            _dirty = false;
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeBitsIntBe(19, this.inner);
        }

        public void _check() {
            _dirty = false;
        }
        public long inner() { return inner; }
        public void setInner(long _v) { _dirty = true; inner = _v; }
        public BitsByteAligned _root() { return _root; }
        public void set_root(BitsByteAligned _v) { _dirty = true; _root = _v; }
        public BitsByteAligned _parent() { return _parent; }
        public void set_parent(BitsByteAligned _v) { _dirty = true; _parent = _v; }
        private long inner;
        private BitsByteAligned _root;
        private BitsByteAligned _parent;
    }
    public long one() { return one; }
    public void setOne(long _v) { _dirty = true; one = _v; }
    public int byte1() { return byte1; }
    public void setByte1(int _v) { _dirty = true; byte1 = _v; }
    public long two() { return two; }
    public void setTwo(long _v) { _dirty = true; two = _v; }
    public boolean three() { return three; }
    public void setThree(boolean _v) { _dirty = true; three = _v; }
    public byte[] byte2() { return byte2; }
    public void setByte2(byte[] _v) { _dirty = true; byte2 = _v; }
    public long four() { return four; }
    public void setFour(long _v) { _dirty = true; four = _v; }
    public Foo byte3() { return byte3; }
    public void setByte3(Foo _v) { _dirty = true; byte3 = _v; }
    public long fullByte() { return fullByte; }
    public void setFullByte(long _v) { _dirty = true; fullByte = _v; }
    public int byte4() { return byte4; }
    public void setByte4(int _v) { _dirty = true; byte4 = _v; }
    public long five() { return five; }
    public void setFive(long _v) { _dirty = true; five = _v; }
    public byte[] bytesTerm() { return bytesTerm; }
    public void setBytesTerm(byte[] _v) { _dirty = true; bytesTerm = _v; }
    public long six() { return six; }
    public void setSix(long _v) { _dirty = true; six = _v; }
    public BitsByteAligned _root() { return _root; }
    public void set_root(BitsByteAligned _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    public byte[] _raw_byte3() { return _raw_byte3; }
    public void set_raw_Byte3(byte[] _v) { _dirty = true; _raw_byte3 = _v; }
    private long one;
    private int byte1;
    private long two;
    private boolean three;
    private byte[] byte2;
    private long four;
    private Foo byte3;
    private long fullByte;
    private int byte4;
    private long five;
    private byte[] bytesTerm;
    private long six;
    private BitsByteAligned _root;
    private KaitaiStruct.ReadWrite _parent;
    private byte[] _raw_byte3;
}
