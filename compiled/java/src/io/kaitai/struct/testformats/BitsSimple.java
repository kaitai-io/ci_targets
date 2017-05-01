// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class BitsSimple extends KaitaiStruct {
    public static BitsSimple fromFile(String fileName) throws IOException {
        return new BitsSimple(new KaitaiStream(fileName));
    }

    public BitsSimple(KaitaiStream _io) {
        super(_io);
        this._root = this;
        _read();
    }

    public BitsSimple(KaitaiStream _io, KaitaiStruct _parent) {
        super(_io);
        this._parent = _parent;
        this._root = this;
        _read();
    }

    public BitsSimple(KaitaiStream _io, KaitaiStruct _parent, BitsSimple _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root;
        _read();
    }
    private void _read() {
        this.byte1 = this._io.readBitsInt(8);
        this.byte2 = this._io.readBitsInt(8);
        this.bitsA = this._io.readBitsInt(1) != 0;
        this.bitsB = this._io.readBitsInt(3);
        this.bitsC = this._io.readBitsInt(4);
        this.largeBits1 = this._io.readBitsInt(10);
        this.spacer = this._io.readBitsInt(3);
        this.largeBits2 = this._io.readBitsInt(11);
        this._io.alignToByte();
        this.normalS2 = this._io.readS2be();
        this.byte8910 = this._io.readBitsInt(24);
        this.byte11To14 = this._io.readBitsInt(32);
        this.byte15To19 = this._io.readBitsInt(40);
        this.byte20To27 = this._io.readBitsInt(64);
    }
    private Byte testIfB1;
    public Byte testIfB1() {
        if (this.testIfB1 != null)
            return this.testIfB1;
        if (bitsA() == false) {
            byte _tmp = (byte) (123);
            this.testIfB1 = _tmp;
        }
        return this.testIfB1;
    }
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
    private BitsSimple _root;
    private KaitaiStruct _parent;
    public long byte1() { return byte1; }
    public long byte2() { return byte2; }
    public boolean bitsA() { return bitsA; }
    public long bitsB() { return bitsB; }
    public long bitsC() { return bitsC; }
    public long largeBits1() { return largeBits1; }
    public long spacer() { return spacer; }
    public long largeBits2() { return largeBits2; }
    public short normalS2() { return normalS2; }
    public long byte8910() { return byte8910; }
    public long byte11To14() { return byte11To14; }
    public long byte15To19() { return byte15To19; }
    public long byte20To27() { return byte20To27; }
    public BitsSimple _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
