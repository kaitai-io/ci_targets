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
    private Integer modPosConst;
    public Integer modPosConst() {
        if (this.modPosConst != null)
            return this.modPosConst;
        int _tmp = (int) (KaitaiStream.mod(9837, 13));
        this.modPosConst = _tmp;
        return this.modPosConst;
    }
    private Integer modNegConst;
    public Integer modNegConst() {
        if (this.modNegConst != null)
            return this.modNegConst;
        int _tmp = (int) (KaitaiStream.mod(-9837, 13));
        this.modNegConst = _tmp;
        return this.modNegConst;
    }
    private Integer modPosSeq;
    public Integer modPosSeq() {
        if (this.modPosSeq != null)
            return this.modPosSeq;
        int _tmp = (int) (KaitaiStream.mod(intU(), 13));
        this.modPosSeq = _tmp;
        return this.modPosSeq;
    }
    private Integer modNegSeq;
    public Integer modNegSeq() {
        if (this.modNegSeq != null)
            return this.modNegSeq;
        int _tmp = (int) (KaitaiStream.mod(intS(), 13));
        this.modNegSeq = _tmp;
        return this.modNegSeq;
    }
    private long intU;
    private int intS;
    private ExprMod _root;
    private KaitaiStruct _parent;
    public long intU() { return intU; }
    public int intS() { return intS; }
    public ExprMod _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
