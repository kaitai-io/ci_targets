// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ExprOpsParens extends KaitaiStruct {
    public static ExprOpsParens fromFile(String fileName) throws IOException {
        return new ExprOpsParens(new ByteBufferKaitaiStream(fileName));
    }

    public ExprOpsParens(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ExprOpsParens(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ExprOpsParens(KaitaiStream _io, KaitaiStruct _parent, ExprOpsParens _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
    }
    private Integer boolAnd;
    public Integer boolAnd() {
        if (this.boolAnd != null)
            return this.boolAnd;
        int _tmp = (int) (( ((false) && (true))  ? 1 : 0));
        this.boolAnd = _tmp;
        return this.boolAnd;
    }
    private String str0To4;
    public String str0To4() {
        if (this.str0To4 != null)
            return this.str0To4;
        this.str0To4 = "01234";
        return this.str0To4;
    }
    private Integer boolOr;
    public Integer boolOr() {
        if (this.boolOr != null)
            return this.boolOr;
        int _tmp = (int) (( ((!(false)) || (false))  ? 1 : 0));
        this.boolOr = _tmp;
        return this.boolOr;
    }
    private Double fE;
    public Double fE() {
        if (this.fE != null)
            return this.fE;
        double _tmp = (double) (2.72);
        this.fE = _tmp;
        return this.fE;
    }
    private Integer fSumToInt;
    public Integer fSumToInt() {
        if (this.fSumToInt != null)
            return this.fSumToInt;
        int _tmp = (int) ((int) ((f2pi() + fE()) + 0));
        this.fSumToInt = _tmp;
        return this.fSumToInt;
    }
    private Double f2pi;
    public Double f2pi() {
        if (this.f2pi != null)
            return this.f2pi;
        double _tmp = (double) (6.28);
        this.f2pi = _tmp;
        return this.f2pi;
    }
    private String strConcatRev;
    public String strConcatRev() {
        if (this.strConcatRev != null)
            return this.strConcatRev;
        this.strConcatRev = new StringBuilder(str0To4() + str5To9()).reverse().toString();
        return this.strConcatRev;
    }
    private Integer iM13;
    public Integer iM13() {
        if (this.iM13 != null)
            return this.iM13;
        int _tmp = (int) (-13);
        this.iM13 = _tmp;
        return this.iM13;
    }
    private Integer strConcatLen;
    public Integer strConcatLen() {
        if (this.strConcatLen != null)
            return this.strConcatLen;
        int _tmp = (int) (str0To4() + str5To9().length());
        this.strConcatLen = _tmp;
        return this.strConcatLen;
    }
    private Integer strConcatToI;
    public Integer strConcatToI() {
        if (this.strConcatToI != null)
            return this.strConcatToI;
        int _tmp = (int) (Long.parseLong(str0To4() + str5To9(), 10));
        this.strConcatToI = _tmp;
        return this.strConcatToI;
    }
    private Byte i42;
    public Byte i42() {
        if (this.i42 != null)
            return this.i42;
        byte _tmp = (byte) (42);
        this.i42 = _tmp;
        return this.i42;
    }
    private String iSumToStr;
    public String iSumToStr() {
        if (this.iSumToStr != null)
            return this.iSumToStr;
        this.iSumToStr = Long.toString((i42() + iM13()), 10);
        return this.iSumToStr;
    }
    private Integer boolEq;
    public Integer boolEq() {
        if (this.boolEq != null)
            return this.boolEq;
        int _tmp = (int) ((false == true ? 1 : 0));
        this.boolEq = _tmp;
        return this.boolEq;
    }
    private String str5To9;
    public String str5To9() {
        if (this.str5To9 != null)
            return this.str5To9;
        this.str5To9 = "56789";
        return this.str5To9;
    }
    private String strConcatSubstr2To7;
    public String strConcatSubstr2To7() {
        if (this.strConcatSubstr2To7 != null)
            return this.strConcatSubstr2To7;
        this.strConcatSubstr2To7 = str0To4() + str5To9().substring(2, 7);
        return this.strConcatSubstr2To7;
    }
    private ExprOpsParens _root;
    private KaitaiStruct _parent;
    public ExprOpsParens _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
