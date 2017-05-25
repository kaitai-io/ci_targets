// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class BitsByteAligned extends KaitaiStruct {
    public static BitsByteAligned fromFile(String fileName) throws IOException {
        return new BitsByteAligned(new KaitaiStream(fileName));
    }

    public BitsByteAligned(KaitaiStream _io) {
        super(_io);
        this._root = this;
        _init();
    }

    public BitsByteAligned(KaitaiStream _io, KaitaiStruct _parent) {
        super(_io);
        this._parent = _parent;
        this._root = this;
        _init();
    }

    public BitsByteAligned(KaitaiStream _io, KaitaiStruct _parent, BitsByteAligned _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root;
        _init();
    }

    private void _init() {
        _read();
    }
    private void _read() {
        this.one = this._io.readBitsInt(6);
        this._io.alignToByte();
        this.byte1 = this._io.readU1();
        this.two = this._io.readBitsInt(3);
        this.three = this._io.readBitsInt(1) != 0;
        this._io.alignToByte();
        this.byte2 = this._io.readU1();
        this.four = this._io.readBitsInt(14);
        this._io.alignToByte();
        this.byte3 = this._io.readBytes(1);
        this.fullByte = this._io.readBitsInt(8);
        this._io.alignToByte();
        this.byte4 = this._io.readU1();
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
    private KaitaiStruct _parent;
    public long one() { return one; }
    public int byte1() { return byte1; }
    public long two() { return two; }
    public boolean three() { return three; }
    public int byte2() { return byte2; }
    public long four() { return four; }
    public byte[] byte3() { return byte3; }
    public long fullByte() { return fullByte; }
    public int byte4() { return byte4; }
    public BitsByteAligned _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
