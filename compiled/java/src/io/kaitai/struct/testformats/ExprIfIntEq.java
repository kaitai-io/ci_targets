// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ExprIfIntEq extends KaitaiStruct {
    public static ExprIfIntEq fromFile(String fileName) throws IOException {
        return new ExprIfIntEq(new ByteBufferKaitaiStream(fileName));
    }

    public ExprIfIntEq(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ExprIfIntEq(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ExprIfIntEq(KaitaiStream _io, KaitaiStruct _parent, ExprIfIntEq _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.skip = this._io.readBytes(2);
        this.seq = this._io.readS2le();
        if (true) {
            this.seqIf = this._io.readS2le();
        }
    }

    public void _fetchInstances() {
        if (true) {
        }
    }
    private Integer calc;
    public Integer calc() {
        if (this.calc != null)
            return this.calc;
        this.calc = ((int) 16705);
        return this.calc;
    }
    private Boolean calcEqCalcIf;
    public Boolean calcEqCalcIf() {
        if (this.calcEqCalcIf != null)
            return this.calcEqCalcIf;
        this.calcEqCalcIf = calc() == calcIf();
        return this.calcEqCalcIf;
    }
    private Boolean calcEqLit;
    public Boolean calcEqLit() {
        if (this.calcEqLit != null)
            return this.calcEqLit;
        this.calcEqLit = calc() == 16705;
        return this.calcEqLit;
    }
    private Boolean calcEqSeqIf;
    public Boolean calcEqSeqIf() {
        if (this.calcEqSeqIf != null)
            return this.calcEqSeqIf;
        this.calcEqSeqIf = calc() == seqIf();
        return this.calcEqSeqIf;
    }
    private Integer calcIf;
    public Integer calcIf() {
        if (this.calcIf != null)
            return this.calcIf;
        if (true) {
            this.calcIf = ((int) 16705);
        }
        return this.calcIf;
    }
    private Boolean calcIfEqLit;
    public Boolean calcIfEqLit() {
        if (this.calcIfEqLit != null)
            return this.calcIfEqLit;
        this.calcIfEqLit = calcIf() == 16705;
        return this.calcIfEqLit;
    }
    private Boolean calcIfEqSeqIf;
    public Boolean calcIfEqSeqIf() {
        if (this.calcIfEqSeqIf != null)
            return this.calcIfEqSeqIf;
        this.calcIfEqSeqIf = calcIf() == seqIf();
        return this.calcIfEqSeqIf;
    }
    private Boolean seqEqCalc;
    public Boolean seqEqCalc() {
        if (this.seqEqCalc != null)
            return this.seqEqCalc;
        this.seqEqCalc = seq() == calc();
        return this.seqEqCalc;
    }
    private Boolean seqEqCalcIf;
    public Boolean seqEqCalcIf() {
        if (this.seqEqCalcIf != null)
            return this.seqEqCalcIf;
        this.seqEqCalcIf = seq() == calcIf();
        return this.seqEqCalcIf;
    }
    private Boolean seqEqLit;
    public Boolean seqEqLit() {
        if (this.seqEqLit != null)
            return this.seqEqLit;
        this.seqEqLit = seq() == 16705;
        return this.seqEqLit;
    }
    private Boolean seqEqSeqIf;
    public Boolean seqEqSeqIf() {
        if (this.seqEqSeqIf != null)
            return this.seqEqSeqIf;
        this.seqEqSeqIf = seq() == seqIf();
        return this.seqEqSeqIf;
    }
    private Boolean seqIfEqLit;
    public Boolean seqIfEqLit() {
        if (this.seqIfEqLit != null)
            return this.seqIfEqLit;
        this.seqIfEqLit = seqIf() == 16705;
        return this.seqIfEqLit;
    }
    private byte[] skip;
    private short seq;
    private Short seqIf;
    private ExprIfIntEq _root;
    private KaitaiStruct _parent;
    public byte[] skip() { return skip; }
    public short seq() { return seq; }
    public Short seqIf() { return seqIf; }
    public ExprIfIntEq _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
