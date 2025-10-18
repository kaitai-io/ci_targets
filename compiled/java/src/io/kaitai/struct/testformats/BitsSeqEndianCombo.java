// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class BitsSeqEndianCombo extends KaitaiStruct {
    public static BitsSeqEndianCombo fromFile(String fileName) throws IOException {
        return new BitsSeqEndianCombo(new ByteBufferKaitaiStream(fileName));
    }

    public BitsSeqEndianCombo(KaitaiStream _io) {
        this(_io, null, null);
    }

    public BitsSeqEndianCombo(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public BitsSeqEndianCombo(KaitaiStream _io, KaitaiStruct _parent, BitsSeqEndianCombo _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.be1 = this._io.readBitsIntBe(6);
        this.be2 = this._io.readBitsIntBe(10);
        this.le3 = this._io.readBitsIntLe(8);
        this.be4 = this._io.readBitsIntBe(8);
        this.le5 = this._io.readBitsIntLe(5);
        this.le6 = this._io.readBitsIntLe(6);
        this.le7 = this._io.readBitsIntLe(5);
        this.be8 = this._io.readBitsIntBe(1) != 0;
    }

    public void _fetchInstances() {
    }
    public long be1() { return be1; }
    public long be2() { return be2; }
    public long le3() { return le3; }
    public long be4() { return be4; }
    public long le5() { return le5; }
    public long le6() { return le6; }
    public long le7() { return le7; }
    public boolean be8() { return be8; }
    public BitsSeqEndianCombo _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private long be1;
    private long be2;
    private long le3;
    private long be4;
    private long le5;
    private long le6;
    private long le7;
    private boolean be8;
    private BitsSeqEndianCombo _root;
    private KaitaiStruct _parent;
}
