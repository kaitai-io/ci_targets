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

    public void _fetchInstances() {
    }
    public Integer divNegConst() {
        if (this.divNegConst != null)
            return this.divNegConst;
        this.divNegConst = ((Number) (-9837 / 13)).intValue();
        return this.divNegConst;
    }
    public Integer divNegSeq() {
        if (this.divNegSeq != null)
            return this.divNegSeq;
        this.divNegSeq = ((Number) (intS() / 13)).intValue();
        return this.divNegSeq;
    }
    public Integer divPosConst() {
        if (this.divPosConst != null)
            return this.divPosConst;
        this.divPosConst = ((Number) (9837 / 13)).intValue();
        return this.divPosConst;
    }
    public Integer divPosSeq() {
        if (this.divPosSeq != null)
            return this.divPosSeq;
        this.divPosSeq = ((Number) (intU() / 13)).intValue();
        return this.divPosSeq;
    }
    public long intU() { return intU; }
    public int intS() { return intS; }
    public ExprIntDiv _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private Integer divNegConst;
    private Integer divNegSeq;
    private Integer divPosConst;
    private Integer divPosSeq;
    private long intU;
    private int intS;
    private ExprIntDiv _root;
    private KaitaiStruct _parent;
}
