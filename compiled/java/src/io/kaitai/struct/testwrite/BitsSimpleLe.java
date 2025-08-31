// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class BitsSimpleLe extends KaitaiStruct.ReadWrite {
    public static BitsSimpleLe fromFile(String fileName) throws IOException {
        return new BitsSimpleLe(new ByteBufferKaitaiStream(fileName));
    }
    public BitsSimpleLe() {
        this(null, null, null);
    }

    public BitsSimpleLe(KaitaiStream _io) {
        this(_io, null, null);
    }

    public BitsSimpleLe(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public BitsSimpleLe(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, BitsSimpleLe _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.byte1 = this._io.readBitsIntLe(8);
        this.byte2 = this._io.readBitsIntLe(8);
        this.bitsA = this._io.readBitsIntLe(1) != 0;
        this.bitsB = this._io.readBitsIntLe(3);
        this.bitsC = this._io.readBitsIntLe(4);
        this.largeBits1 = this._io.readBitsIntLe(10);
        this.spacer = this._io.readBitsIntLe(3);
        this.largeBits2 = this._io.readBitsIntLe(11);
        this.normalS2 = this._io.readS2be();
        this.byte8910 = this._io.readBitsIntLe(24);
        this.byte11To14 = this._io.readBitsIntLe(32);
        this.byte15To19 = this._io.readBitsIntLe(40);
        this.byte20To27 = this._io.readBitsIntLe(64);
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        this._io.writeBitsIntLe(8, this.byte1);
        this._io.writeBitsIntLe(8, this.byte2);
        this._io.writeBitsIntLe(1, (this.bitsA ? 1 : 0));
        this._io.writeBitsIntLe(3, this.bitsB);
        this._io.writeBitsIntLe(4, this.bitsC);
        this._io.writeBitsIntLe(10, this.largeBits1);
        this._io.writeBitsIntLe(3, this.spacer);
        this._io.writeBitsIntLe(11, this.largeBits2);
        this._io.writeS2be(this.normalS2);
        this._io.writeBitsIntLe(24, this.byte8910);
        this._io.writeBitsIntLe(32, this.byte11To14);
        this._io.writeBitsIntLe(40, this.byte15To19);
        this._io.writeBitsIntLe(64, this.byte20To27);
    }

    public void _check() {
    }
    private Byte testIfB1;
    public Byte testIfB1() {
        if (this.testIfB1 != null)
            return this.testIfB1;
        if (bitsA() == true) {
            this.testIfB1 = ((byte) 123);
        }
        return this.testIfB1;
    }
    public void _invalidateTestIfB1() { this.testIfB1 = null; }
    private long byte1;
    private long byte2;
    private boolean bitsA;
    private long bitsB;
    private long bitsC;
    private long largeBits1;
    private long spacer;
    private long largeBits2;
    private short normalS2;
    private long byte8910;
    private long byte11To14;
    private long byte15To19;
    private long byte20To27;
    private BitsSimpleLe _root;
    private KaitaiStruct.ReadWrite _parent;
    public long byte1() { return byte1; }
    public void setByte1(long _v) { byte1 = _v; }
    public long byte2() { return byte2; }
    public void setByte2(long _v) { byte2 = _v; }
    public boolean bitsA() { return bitsA; }
    public void setBitsA(boolean _v) { bitsA = _v; }
    public long bitsB() { return bitsB; }
    public void setBitsB(long _v) { bitsB = _v; }
    public long bitsC() { return bitsC; }
    public void setBitsC(long _v) { bitsC = _v; }
    public long largeBits1() { return largeBits1; }
    public void setLargeBits1(long _v) { largeBits1 = _v; }
    public long spacer() { return spacer; }
    public void setSpacer(long _v) { spacer = _v; }
    public long largeBits2() { return largeBits2; }
    public void setLargeBits2(long _v) { largeBits2 = _v; }
    public short normalS2() { return normalS2; }
    public void setNormalS2(short _v) { normalS2 = _v; }
    public long byte8910() { return byte8910; }
    public void setByte8910(long _v) { byte8910 = _v; }
    public long byte11To14() { return byte11To14; }
    public void setByte11To14(long _v) { byte11To14 = _v; }
    public long byte15To19() { return byte15To19; }
    public void setByte15To19(long _v) { byte15To19 = _v; }
    public long byte20To27() { return byte20To27; }
    public void setByte20To27(long _v) { byte20To27 = _v; }
    public BitsSimpleLe _root() { return _root; }
    public void set_root(BitsSimpleLe _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
