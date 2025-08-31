// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import io.kaitai.struct.ConsistencyError;

public class ExprIfIntEq extends KaitaiStruct.ReadWrite {
    public static ExprIfIntEq fromFile(String fileName) throws IOException {
        return new ExprIfIntEq(new ByteBufferKaitaiStream(fileName));
    }
    public ExprIfIntEq() {
        this(null, null, null);
    }

    public ExprIfIntEq(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ExprIfIntEq(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ExprIfIntEq(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ExprIfIntEq _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
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

    public void _write_Seq() {
        this._io.writeBytes(this.skip);
        this._io.writeS2le(this.seq);
        if (true) {
            this._io.writeS2le(this.seqIf);
        }
    }

    public void _check() {
        if (this.skip.length != 2)
            throw new ConsistencyError("skip", this.skip.length, 2);
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
    public void _invalidateCalc() { this.calc = null; }
    private Boolean calcEqCalcIf;
    public Boolean calcEqCalcIf() {
        if (this.calcEqCalcIf != null)
            return this.calcEqCalcIf;
        this.calcEqCalcIf = calc() == calcIf();
        return this.calcEqCalcIf;
    }
    public void _invalidateCalcEqCalcIf() { this.calcEqCalcIf = null; }
    private Boolean calcEqLit;
    public Boolean calcEqLit() {
        if (this.calcEqLit != null)
            return this.calcEqLit;
        this.calcEqLit = calc() == 16705;
        return this.calcEqLit;
    }
    public void _invalidateCalcEqLit() { this.calcEqLit = null; }
    private Boolean calcEqSeqIf;
    public Boolean calcEqSeqIf() {
        if (this.calcEqSeqIf != null)
            return this.calcEqSeqIf;
        this.calcEqSeqIf = calc() == seqIf();
        return this.calcEqSeqIf;
    }
    public void _invalidateCalcEqSeqIf() { this.calcEqSeqIf = null; }
    private Integer calcIf;
    public Integer calcIf() {
        if (this.calcIf != null)
            return this.calcIf;
        if (true) {
            this.calcIf = ((int) 16705);
        }
        return this.calcIf;
    }
    public void _invalidateCalcIf() { this.calcIf = null; }
    private Boolean calcIfEqLit;
    public Boolean calcIfEqLit() {
        if (this.calcIfEqLit != null)
            return this.calcIfEqLit;
        this.calcIfEqLit = calcIf() == 16705;
        return this.calcIfEqLit;
    }
    public void _invalidateCalcIfEqLit() { this.calcIfEqLit = null; }
    private Boolean calcIfEqSeqIf;
    public Boolean calcIfEqSeqIf() {
        if (this.calcIfEqSeqIf != null)
            return this.calcIfEqSeqIf;
        this.calcIfEqSeqIf = calcIf() == seqIf();
        return this.calcIfEqSeqIf;
    }
    public void _invalidateCalcIfEqSeqIf() { this.calcIfEqSeqIf = null; }
    private Boolean seqEqCalc;
    public Boolean seqEqCalc() {
        if (this.seqEqCalc != null)
            return this.seqEqCalc;
        this.seqEqCalc = seq() == calc();
        return this.seqEqCalc;
    }
    public void _invalidateSeqEqCalc() { this.seqEqCalc = null; }
    private Boolean seqEqCalcIf;
    public Boolean seqEqCalcIf() {
        if (this.seqEqCalcIf != null)
            return this.seqEqCalcIf;
        this.seqEqCalcIf = seq() == calcIf();
        return this.seqEqCalcIf;
    }
    public void _invalidateSeqEqCalcIf() { this.seqEqCalcIf = null; }
    private Boolean seqEqLit;
    public Boolean seqEqLit() {
        if (this.seqEqLit != null)
            return this.seqEqLit;
        this.seqEqLit = seq() == 16705;
        return this.seqEqLit;
    }
    public void _invalidateSeqEqLit() { this.seqEqLit = null; }
    private Boolean seqEqSeqIf;
    public Boolean seqEqSeqIf() {
        if (this.seqEqSeqIf != null)
            return this.seqEqSeqIf;
        this.seqEqSeqIf = seq() == seqIf();
        return this.seqEqSeqIf;
    }
    public void _invalidateSeqEqSeqIf() { this.seqEqSeqIf = null; }
    private Boolean seqIfEqLit;
    public Boolean seqIfEqLit() {
        if (this.seqIfEqLit != null)
            return this.seqIfEqLit;
        this.seqIfEqLit = seqIf() == 16705;
        return this.seqIfEqLit;
    }
    public void _invalidateSeqIfEqLit() { this.seqIfEqLit = null; }
    private byte[] skip;
    private short seq;
    private Short seqIf;
    private ExprIfIntEq _root;
    private KaitaiStruct.ReadWrite _parent;
    public byte[] skip() { return skip; }
    public void setSkip(byte[] _v) { skip = _v; }
    public short seq() { return seq; }
    public void setSeq(short _v) { seq = _v; }
    public Short seqIf() { return seqIf; }
    public void setSeqIf(Short _v) { seqIf = _v; }
    public ExprIfIntEq _root() { return _root; }
    public void set_root(ExprIfIntEq _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
