// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import io.kaitai.struct.ConsistencyError;

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
        this.byte2 = this._io.readU1();
        this.four = this._io.readBitsIntBe(14);
        this.byte3 = this._io.readBytes(1);
        this.fullByte = this._io.readBitsIntBe(8);
        this.byte4 = this._io.readU1();
        _dirty = false;
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeBitsIntBe(6, this.one);
        this._io.writeU1(this.byte1);
        this._io.writeBitsIntBe(3, this.two);
        this._io.writeBitsIntBe(1, (this.three ? 1 : 0));
        this._io.writeU1(this.byte2);
        this._io.writeBitsIntBe(14, this.four);
        this._io.writeBytes(this.byte3);
        this._io.writeBitsIntBe(8, this.fullByte);
        this._io.writeU1(this.byte4);
    }

    public void _check() {
        if (this.byte3.length != 1)
            throw new ConsistencyError("byte_3", this.byte3.length, 1);
        _dirty = false;
    }
    private long one;
    private int byte1;
    private long two;
    private boolean three;
    private int byte2;
    private long four;
    private byte[] byte3;
    private long fullByte;
    private int byte4;
    private BitsByteAligned _root;
    private KaitaiStruct.ReadWrite _parent;
    public long one() { return one; }
    public void setOne(long _v) { _dirty = true; one = _v; }
    public int byte1() { return byte1; }
    public void setByte1(int _v) { _dirty = true; byte1 = _v; }
    public long two() { return two; }
    public void setTwo(long _v) { _dirty = true; two = _v; }
    public boolean three() { return three; }
    public void setThree(boolean _v) { _dirty = true; three = _v; }
    public int byte2() { return byte2; }
    public void setByte2(int _v) { _dirty = true; byte2 = _v; }
    public long four() { return four; }
    public void setFour(long _v) { _dirty = true; four = _v; }
    public byte[] byte3() { return byte3; }
    public void setByte3(byte[] _v) { _dirty = true; byte3 = _v; }
    public long fullByte() { return fullByte; }
    public void setFullByte(long _v) { _dirty = true; fullByte = _v; }
    public int byte4() { return byte4; }
    public void setByte4(int _v) { _dirty = true; byte4 = _v; }
    public BitsByteAligned _root() { return _root; }
    public void set_root(BitsByteAligned _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
