// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class CombineBool extends KaitaiStruct {
    public static CombineBool fromFile(String fileName) throws IOException {
        return new CombineBool(new ByteBufferKaitaiStream(fileName));
    }

    public CombineBool(KaitaiStream _io) {
        this(_io, null, null);
    }

    public CombineBool(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public CombineBool(KaitaiStream _io, KaitaiStruct _parent, CombineBool _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.boolBit = this._io.readBitsIntBe(1) != 0;
    }

    public void _fetchInstances() {
    }
    public Boolean boolCalc() {
        if (this.boolCalc != null)
            return this.boolCalc;
        this.boolCalc = false;
        return this.boolCalc;
    }
    public Boolean boolCalcBit() {
        if (this.boolCalcBit != null)
            return this.boolCalcBit;
        this.boolCalcBit = (true ? boolCalc() : boolBit());
        return this.boolCalcBit;
    }
    public boolean boolBit() { return boolBit; }
    public CombineBool _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private Boolean boolCalc;
    private Boolean boolCalcBit;
    private boolean boolBit;
    private CombineBool _root;
    private KaitaiStruct _parent;
}
