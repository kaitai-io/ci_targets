// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;

public class ExprStrOps extends KaitaiStruct {
    public static ExprStrOps fromFile(String fileName) throws IOException {
        return new ExprStrOps(new ByteBufferKaitaiStream(fileName));
    }

    public ExprStrOps(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ExprStrOps(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ExprStrOps(KaitaiStream _io, KaitaiStruct _parent, ExprStrOps _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.one = new String(this._io.readBytes(5), StandardCharsets.US_ASCII);
    }
    private String oneSubstr3To3;
    public String oneSubstr3To3() {
        if (this.oneSubstr3To3 != null)
            return this.oneSubstr3To3;
        this.oneSubstr3To3 = one().substring(3, 3);
        return this.oneSubstr3To3;
    }
    private Integer toIR8;
    public Integer toIR8() {
        if (this.toIR8 != null)
            return this.toIR8;
        int _tmp = (int) (Long.parseLong("721", 8));
        this.toIR8 = _tmp;
        return this.toIR8;
    }
    private Integer toIR16;
    public Integer toIR16() {
        if (this.toIR16 != null)
            return this.toIR16;
        int _tmp = (int) (Long.parseLong("47cf", 16));
        this.toIR16 = _tmp;
        return this.toIR16;
    }
    private String twoSubstr0To10;
    public String twoSubstr0To10() {
        if (this.twoSubstr0To10 != null)
            return this.twoSubstr0To10;
        this.twoSubstr0To10 = two().substring(0, 10);
        return this.twoSubstr0To10;
    }
    private Integer oneLen;
    public Integer oneLen() {
        if (this.oneLen != null)
            return this.oneLen;
        int _tmp = (int) (one().length());
        this.oneLen = _tmp;
        return this.oneLen;
    }
    private Integer twoLen;
    public Integer twoLen() {
        if (this.twoLen != null)
            return this.twoLen;
        int _tmp = (int) (two().length());
        this.twoLen = _tmp;
        return this.twoLen;
    }
    private String oneSubstr2To5;
    public String oneSubstr2To5() {
        if (this.oneSubstr2To5 != null)
            return this.oneSubstr2To5;
        this.oneSubstr2To5 = one().substring(2, 5);
        return this.oneSubstr2To5;
    }
    private Integer toIR2;
    public Integer toIR2() {
        if (this.toIR2 != null)
            return this.toIR2;
        int _tmp = (int) (Long.parseLong("1010110", 2));
        this.toIR2 = _tmp;
        return this.toIR2;
    }
    private String twoRev;
    public String twoRev() {
        if (this.twoRev != null)
            return this.twoRev;
        this.twoRev = new StringBuilder(two()).reverse().toString();
        return this.twoRev;
    }
    private String two;
    public String two() {
        if (this.two != null)
            return this.two;
        this.two = "0123456789";
        return this.two;
    }
    private String twoSubstr4To10;
    public String twoSubstr4To10() {
        if (this.twoSubstr4To10 != null)
            return this.twoSubstr4To10;
        this.twoSubstr4To10 = two().substring(4, 10);
        return this.twoSubstr4To10;
    }
    private Integer toIR10;
    public Integer toIR10() {
        if (this.toIR10 != null)
            return this.toIR10;
        int _tmp = (int) (Long.parseLong("-072", 10));
        this.toIR10 = _tmp;
        return this.toIR10;
    }
    private String twoSubstr0To7;
    public String twoSubstr0To7() {
        if (this.twoSubstr0To7 != null)
            return this.twoSubstr0To7;
        this.twoSubstr0To7 = two().substring(0, 7);
        return this.twoSubstr0To7;
    }
    private Integer toIAttr;
    public Integer toIAttr() {
        if (this.toIAttr != null)
            return this.toIAttr;
        int _tmp = (int) (Long.parseLong("9173", 10));
        this.toIAttr = _tmp;
        return this.toIAttr;
    }
    private String oneSubstr0To3;
    public String oneSubstr0To3() {
        if (this.oneSubstr0To3 != null)
            return this.oneSubstr0To3;
        this.oneSubstr0To3 = one().substring(0, 3);
        return this.oneSubstr0To3;
    }
    private String oneRev;
    public String oneRev() {
        if (this.oneRev != null)
            return this.oneRev;
        this.oneRev = new StringBuilder(one()).reverse().toString();
        return this.oneRev;
    }
    private String one;
    private ExprStrOps _root;
    private KaitaiStruct _parent;
    public String one() { return one; }
    public ExprStrOps _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
