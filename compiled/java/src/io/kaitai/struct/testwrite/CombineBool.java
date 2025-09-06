// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class CombineBool extends KaitaiStruct.ReadWrite {
    public static CombineBool fromFile(String fileName) throws IOException {
        return new CombineBool(new ByteBufferKaitaiStream(fileName));
    }
    public CombineBool() {
        this(null, null, null);
    }

    public CombineBool(KaitaiStream _io) {
        this(_io, null, null);
    }

    public CombineBool(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public CombineBool(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, CombineBool _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.boolBit = this._io.readBitsIntBe(1) != 0;
        _dirty = false;
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeBitsIntBe(1, (this.boolBit ? 1 : 0));
    }

    public void _check() {
        _dirty = false;
    }
    private Boolean boolCalc;
    public Boolean boolCalc() {
        if (this.boolCalc != null)
            return this.boolCalc;
        this.boolCalc = false;
        return this.boolCalc;
    }
    public void _invalidateBoolCalc() { this.boolCalc = null; }
    private Boolean boolCalcBit;
    public Boolean boolCalcBit() {
        if (this.boolCalcBit != null)
            return this.boolCalcBit;
        this.boolCalcBit = (true ? boolCalc() : boolBit());
        return this.boolCalcBit;
    }
    public void _invalidateBoolCalcBit() { this.boolCalcBit = null; }
    private boolean boolBit;
    private CombineBool _root;
    private KaitaiStruct.ReadWrite _parent;
    public boolean boolBit() { return boolBit; }
    public void setBoolBit(boolean _v) { _dirty = true; boolBit = _v; }
    public CombineBool _root() { return _root; }
    public void set_root(CombineBool _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
