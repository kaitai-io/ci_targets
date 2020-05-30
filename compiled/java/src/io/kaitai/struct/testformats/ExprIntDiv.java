// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ExprIntDiv extends KaitaiStruct {
    public static ExprIntDiv fromFile(String fileName) throws IOException {
        return new ExprIntDiv(new ByteBufferKaitaiStream(fileName));
    }

    public ExprIntDiv(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ExprIntDiv(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ExprIntDiv(KaitaiStream _io, KaitaiStruct _parent, ExprIntDiv _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.intU = this._io.readU4le();
        this.intS = this._io.readS4le();
    }
    private Integer divPosConst;
    public Integer divPosConst() {
        if (this.divPosConst != null)
            return this.divPosConst;
        int _tmp = (int) ((9837 / 13));
        this.divPosConst = _tmp;
        return this.divPosConst;
    }
    private Integer divNegConst;
    public Integer divNegConst() {
        if (this.divNegConst != null)
            return this.divNegConst;
        int _tmp = (int) ((-9837 / 13));
        this.divNegConst = _tmp;
        return this.divNegConst;
    }
    private Integer divPosSeq;
    public Integer divPosSeq() {
        if (this.divPosSeq != null)
            return this.divPosSeq;
        int _tmp = (int) ((intU() / 13));
        this.divPosSeq = _tmp;
        return this.divPosSeq;
    }
    private Integer divNegSeq;
    public Integer divNegSeq() {
        if (this.divNegSeq != null)
            return this.divNegSeq;
        int _tmp = (int) ((intS() / 13));
        this.divNegSeq = _tmp;
        return this.divNegSeq;
    }
    private long intU;
    private int intS;
    private ExprIntDiv _root;
    private KaitaiStruct _parent;
    public long intU() { return intU; }
    public int intS() { return intS; }
    public ExprIntDiv _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
