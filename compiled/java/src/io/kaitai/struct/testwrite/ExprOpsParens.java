// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ExprOpsParens extends KaitaiStruct.ReadWrite {
    public static ExprOpsParens fromFile(String fileName) throws IOException {
        return new ExprOpsParens(new ByteBufferKaitaiStream(fileName));
    }
    public ExprOpsParens() {
        this(null, null, null);
    }

    public ExprOpsParens(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ExprOpsParens(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ExprOpsParens(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ExprOpsParens _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
    }

    public void _check() {
    }
    private Integer boolAnd;
    public Integer boolAnd() {
        if (this.boolAnd != null)
            return this.boolAnd;
        this.boolAnd = ((Number) (( ((false) && (true))  ? 1 : 0))).intValue();
        return this.boolAnd;
    }
    public void _invalidateBoolAnd() { this.boolAnd = null; }
    private Integer boolEq;
    public Integer boolEq() {
        if (this.boolEq != null)
            return this.boolEq;
        this.boolEq = ((Number) ((false == true ? 1 : 0))).intValue();
        return this.boolEq;
    }
    public void _invalidateBoolEq() { this.boolEq = null; }
    private Integer boolOr;
    public Integer boolOr() {
        if (this.boolOr != null)
            return this.boolOr;
        this.boolOr = ((Number) (( ((!(false)) || (false))  ? 1 : 0))).intValue();
        return this.boolOr;
    }
    public void _invalidateBoolOr() { this.boolOr = null; }
    private Double f2pi;
    public Double f2pi() {
        if (this.f2pi != null)
            return this.f2pi;
        this.f2pi = ((double) 6.28);
        return this.f2pi;
    }
    public void _invalidateF2pi() { this.f2pi = null; }
    private Double fE;
    public Double fE() {
        if (this.fE != null)
            return this.fE;
        this.fE = ((double) 2.72);
        return this.fE;
    }
    public void _invalidateFE() { this.fE = null; }
    private Integer fSumToInt;
    public Integer fSumToInt() {
        if (this.fSumToInt != null)
            return this.fSumToInt;
        this.fSumToInt = ((Number) (((Number) (f2pi() + fE())).intValue())).intValue();
        return this.fSumToInt;
    }
    public void _invalidateFSumToInt() { this.fSumToInt = null; }
    private Byte i42;
    public Byte i42() {
        if (this.i42 != null)
            return this.i42;
        this.i42 = ((byte) 42);
        return this.i42;
    }
    public void _invalidateI42() { this.i42 = null; }
    private Integer iM13;
    public Integer iM13() {
        if (this.iM13 != null)
            return this.iM13;
        this.iM13 = ((Number) (-13)).intValue();
        return this.iM13;
    }
    public void _invalidateIM13() { this.iM13 = null; }
    private String iSumToStr;
    public String iSumToStr() {
        if (this.iSumToStr != null)
            return this.iSumToStr;
        this.iSumToStr = Long.toString(i42() + iM13());
        return this.iSumToStr;
    }
    public void _invalidateISumToStr() { this.iSumToStr = null; }
    private String str0To4;
    public String str0To4() {
        if (this.str0To4 != null)
            return this.str0To4;
        this.str0To4 = "01234";
        return this.str0To4;
    }
    public void _invalidateStr0To4() { this.str0To4 = null; }
    private String str5To9;
    public String str5To9() {
        if (this.str5To9 != null)
            return this.str5To9;
        this.str5To9 = "56789";
        return this.str5To9;
    }
    public void _invalidateStr5To9() { this.str5To9 = null; }
    private Integer strConcatLen;
    public Integer strConcatLen() {
        if (this.strConcatLen != null)
            return this.strConcatLen;
        this.strConcatLen = ((Number) ((str0To4() + str5To9()).length())).intValue();
        return this.strConcatLen;
    }
    public void _invalidateStrConcatLen() { this.strConcatLen = null; }
    private String strConcatRev;
    public String strConcatRev() {
        if (this.strConcatRev != null)
            return this.strConcatRev;
        this.strConcatRev = new StringBuilder(str0To4() + str5To9()).reverse().toString();
        return this.strConcatRev;
    }
    public void _invalidateStrConcatRev() { this.strConcatRev = null; }
    private String strConcatSubstr2To7;
    public String strConcatSubstr2To7() {
        if (this.strConcatSubstr2To7 != null)
            return this.strConcatSubstr2To7;
        this.strConcatSubstr2To7 = (str0To4() + str5To9()).substring(2, 7);
        return this.strConcatSubstr2To7;
    }
    public void _invalidateStrConcatSubstr2To7() { this.strConcatSubstr2To7 = null; }
    private Integer strConcatToI;
    public Integer strConcatToI() {
        if (this.strConcatToI != null)
            return this.strConcatToI;
        this.strConcatToI = ((Number) (Long.parseLong(str0To4() + str5To9(), 10))).intValue();
        return this.strConcatToI;
    }
    public void _invalidateStrConcatToI() { this.strConcatToI = null; }
    private ExprOpsParens _root;
    private KaitaiStruct.ReadWrite _parent;
    public ExprOpsParens _root() { return _root; }
    public void set_root(ExprOpsParens _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
