// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ExprMod extends KaitaiStruct {
    public static ExprMod fromFile(String fileName) throws IOException {
        return new ExprMod(new ByteBufferKaitaiStream(fileName));
    }

    public ExprMod(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ExprMod(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ExprMod(KaitaiStream _io, KaitaiStruct _parent, ExprMod _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.intU = this._io.readU4le();
        this.intS = this._io.readS4le();
    }

    public void _fetchInstances() {
    }
    public Integer modNegConst() {
        if (this.modNegConst != null)
            return this.modNegConst;
        this.modNegConst = ((Number) (KaitaiStream.mod(-9837, 13))).intValue();
        return this.modNegConst;
    }
    public Integer modNegSeq() {
        if (this.modNegSeq != null)
            return this.modNegSeq;
        this.modNegSeq = ((Number) (KaitaiStream.mod(intS(), 13))).intValue();
        return this.modNegSeq;
    }
    public Integer modPosConst() {
        if (this.modPosConst != null)
            return this.modPosConst;
        this.modPosConst = ((Number) (KaitaiStream.mod(9837, 13))).intValue();
        return this.modPosConst;
    }
    public Integer modPosSeq() {
        if (this.modPosSeq != null)
            return this.modPosSeq;
        this.modPosSeq = ((Number) (KaitaiStream.mod(intU(), 13))).intValue();
        return this.modPosSeq;
    }
    public long intU() { return intU; }
    public int intS() { return intS; }
    public ExprMod _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private Integer modNegConst;
    private Integer modNegSeq;
    private Integer modPosConst;
    private Integer modPosSeq;
    private long intU;
    private int intS;
    private ExprMod _root;
    private KaitaiStruct _parent;
}
