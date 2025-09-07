// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.charset.Charset;
import io.kaitai.struct.ConsistencyError;

public class ExprStrOps extends KaitaiStruct.ReadWrite {
    public static ExprStrOps fromFile(String fileName) throws IOException {
        return new ExprStrOps(new ByteBufferKaitaiStream(fileName));
    }
    public ExprStrOps() {
        this(null, null, null);
    }

    public ExprStrOps(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ExprStrOps(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ExprStrOps(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ExprStrOps _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.one = new String(this._io.readBytes(5), StandardCharsets.US_ASCII);
        _dirty = false;
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeBytes((this.one).getBytes(Charset.forName("ASCII")));
    }

    public void _check() {
        if ((this.one).getBytes(Charset.forName("ASCII")).length != 5)
            throw new ConsistencyError("one", 5, (this.one).getBytes(Charset.forName("ASCII")).length);
        _dirty = false;
    }
    private Integer oneLen;
    public Integer oneLen() {
        if (this.oneLen != null)
            return this.oneLen;
        this.oneLen = ((Number) (one().length())).intValue();
        return this.oneLen;
    }
    public void _invalidateOneLen() { this.oneLen = null; }
    private String oneRev;
    public String oneRev() {
        if (this.oneRev != null)
            return this.oneRev;
        this.oneRev = new StringBuilder(one()).reverse().toString();
        return this.oneRev;
    }
    public void _invalidateOneRev() { this.oneRev = null; }
    private String oneSubstr0To0;
    public String oneSubstr0To0() {
        if (this.oneSubstr0To0 != null)
            return this.oneSubstr0To0;
        this.oneSubstr0To0 = one().substring(0, 0);
        return this.oneSubstr0To0;
    }
    public void _invalidateOneSubstr0To0() { this.oneSubstr0To0 = null; }
    private String oneSubstr0To3;
    public String oneSubstr0To3() {
        if (this.oneSubstr0To3 != null)
            return this.oneSubstr0To3;
        this.oneSubstr0To3 = one().substring(0, 3);
        return this.oneSubstr0To3;
    }
    public void _invalidateOneSubstr0To3() { this.oneSubstr0To3 = null; }
    private String oneSubstr2To5;
    public String oneSubstr2To5() {
        if (this.oneSubstr2To5 != null)
            return this.oneSubstr2To5;
        this.oneSubstr2To5 = one().substring(2, 5);
        return this.oneSubstr2To5;
    }
    public void _invalidateOneSubstr2To5() { this.oneSubstr2To5 = null; }
    private String oneSubstr3To3;
    public String oneSubstr3To3() {
        if (this.oneSubstr3To3 != null)
            return this.oneSubstr3To3;
        this.oneSubstr3To3 = one().substring(3, 3);
        return this.oneSubstr3To3;
    }
    public void _invalidateOneSubstr3To3() { this.oneSubstr3To3 = null; }
    private Integer toIAttr;
    public Integer toIAttr() {
        if (this.toIAttr != null)
            return this.toIAttr;
        this.toIAttr = ((Number) (Long.parseLong("9173", 10))).intValue();
        return this.toIAttr;
    }
    public void _invalidateToIAttr() { this.toIAttr = null; }
    private Integer toIR10;
    public Integer toIR10() {
        if (this.toIR10 != null)
            return this.toIR10;
        this.toIR10 = ((Number) (Long.parseLong("-072", 10))).intValue();
        return this.toIR10;
    }
    public void _invalidateToIR10() { this.toIR10 = null; }
    private Integer toIR16;
    public Integer toIR16() {
        if (this.toIR16 != null)
            return this.toIR16;
        this.toIR16 = ((Number) (Long.parseLong("47cf", 16))).intValue();
        return this.toIR16;
    }
    public void _invalidateToIR16() { this.toIR16 = null; }
    private Integer toIR2;
    public Integer toIR2() {
        if (this.toIR2 != null)
            return this.toIR2;
        this.toIR2 = ((Number) (Long.parseLong("1010110", 2))).intValue();
        return this.toIR2;
    }
    public void _invalidateToIR2() { this.toIR2 = null; }
    private Integer toIR8;
    public Integer toIR8() {
        if (this.toIR8 != null)
            return this.toIR8;
        this.toIR8 = ((Number) (Long.parseLong("721", 8))).intValue();
        return this.toIR8;
    }
    public void _invalidateToIR8() { this.toIR8 = null; }
    private String two;
    public String two() {
        if (this.two != null)
            return this.two;
        this.two = "0123456789";
        return this.two;
    }
    public void _invalidateTwo() { this.two = null; }
    private Integer twoLen;
    public Integer twoLen() {
        if (this.twoLen != null)
            return this.twoLen;
        this.twoLen = ((Number) (two().length())).intValue();
        return this.twoLen;
    }
    public void _invalidateTwoLen() { this.twoLen = null; }
    private String twoRev;
    public String twoRev() {
        if (this.twoRev != null)
            return this.twoRev;
        this.twoRev = new StringBuilder(two()).reverse().toString();
        return this.twoRev;
    }
    public void _invalidateTwoRev() { this.twoRev = null; }
    private String twoSubstr0To10;
    public String twoSubstr0To10() {
        if (this.twoSubstr0To10 != null)
            return this.twoSubstr0To10;
        this.twoSubstr0To10 = two().substring(0, 10);
        return this.twoSubstr0To10;
    }
    public void _invalidateTwoSubstr0To10() { this.twoSubstr0To10 = null; }
    private String twoSubstr0To7;
    public String twoSubstr0To7() {
        if (this.twoSubstr0To7 != null)
            return this.twoSubstr0To7;
        this.twoSubstr0To7 = two().substring(0, 7);
        return this.twoSubstr0To7;
    }
    public void _invalidateTwoSubstr0To7() { this.twoSubstr0To7 = null; }
    private String twoSubstr4To10;
    public String twoSubstr4To10() {
        if (this.twoSubstr4To10 != null)
            return this.twoSubstr4To10;
        this.twoSubstr4To10 = two().substring(4, 10);
        return this.twoSubstr4To10;
    }
    public void _invalidateTwoSubstr4To10() { this.twoSubstr4To10 = null; }
    private String one;
    private ExprStrOps _root;
    private KaitaiStruct.ReadWrite _parent;
    public String one() { return one; }
    public void setOne(String _v) { _dirty = true; one = _v; }
    public ExprStrOps _root() { return _root; }
    public void set_root(ExprStrOps _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
