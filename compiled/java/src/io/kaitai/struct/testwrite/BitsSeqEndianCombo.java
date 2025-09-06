// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class BitsSeqEndianCombo extends KaitaiStruct.ReadWrite {
    public static BitsSeqEndianCombo fromFile(String fileName) throws IOException {
        return new BitsSeqEndianCombo(new ByteBufferKaitaiStream(fileName));
    }
    public BitsSeqEndianCombo() {
        this(null, null, null);
    }

    public BitsSeqEndianCombo(KaitaiStream _io) {
        this(_io, null, null);
    }

    public BitsSeqEndianCombo(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public BitsSeqEndianCombo(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, BitsSeqEndianCombo _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.be1 = this._io.readBitsIntBe(6);
        this.be2 = this._io.readBitsIntBe(10);
        this.le3 = this._io.readBitsIntLe(8);
        this.be4 = this._io.readBitsIntBe(8);
        this.le5 = this._io.readBitsIntLe(5);
        this.le6 = this._io.readBitsIntLe(6);
        this.le7 = this._io.readBitsIntLe(5);
        this.be8 = this._io.readBitsIntBe(1) != 0;
        _dirty = false;
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeBitsIntBe(6, this.be1);
        this._io.writeBitsIntBe(10, this.be2);
        this._io.writeBitsIntLe(8, this.le3);
        this._io.writeBitsIntBe(8, this.be4);
        this._io.writeBitsIntLe(5, this.le5);
        this._io.writeBitsIntLe(6, this.le6);
        this._io.writeBitsIntLe(5, this.le7);
        this._io.writeBitsIntBe(1, (this.be8 ? 1 : 0));
    }

    public void _check() {
        _dirty = false;
    }
    private long be1;
    private long be2;
    private long le3;
    private long be4;
    private long le5;
    private long le6;
    private long le7;
    private boolean be8;
    private BitsSeqEndianCombo _root;
    private KaitaiStruct.ReadWrite _parent;
    public long be1() { return be1; }
    public void setBe1(long _v) { _dirty = true; be1 = _v; }
    public long be2() { return be2; }
    public void setBe2(long _v) { _dirty = true; be2 = _v; }
    public long le3() { return le3; }
    public void setLe3(long _v) { _dirty = true; le3 = _v; }
    public long be4() { return be4; }
    public void setBe4(long _v) { _dirty = true; be4 = _v; }
    public long le5() { return le5; }
    public void setLe5(long _v) { _dirty = true; le5 = _v; }
    public long le6() { return le6; }
    public void setLe6(long _v) { _dirty = true; le6 = _v; }
    public long le7() { return le7; }
    public void setLe7(long _v) { _dirty = true; le7 = _v; }
    public boolean be8() { return be8; }
    public void setBe8(boolean _v) { _dirty = true; be8 = _v; }
    public BitsSeqEndianCombo _root() { return _root; }
    public void set_root(BitsSeqEndianCombo _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
