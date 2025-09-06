// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.charset.Charset;
import io.kaitai.struct.ConsistencyError;

public class ExprStrEncodings extends KaitaiStruct.ReadWrite {
    public static ExprStrEncodings fromFile(String fileName) throws IOException {
        return new ExprStrEncodings(new ByteBufferKaitaiStream(fileName));
    }
    public ExprStrEncodings() {
        this(null, null, null);
    }

    public ExprStrEncodings(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ExprStrEncodings(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ExprStrEncodings(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ExprStrEncodings _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.lenOf1 = this._io.readU2le();
        this.str1 = new String(this._io.readBytes(lenOf1()), StandardCharsets.US_ASCII);
        this.lenOf2 = this._io.readU2le();
        this.str2 = new String(this._io.readBytes(lenOf2()), StandardCharsets.UTF_8);
        this.lenOf3 = this._io.readU2le();
        this.str3 = new String(this._io.readBytes(lenOf3()), Charset.forName("Shift_JIS"));
        this.lenOf4 = this._io.readU2le();
        this.str4 = new String(this._io.readBytes(lenOf4()), Charset.forName("IBM437"));
        _dirty = false;
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeU2le(this.lenOf1);
        this._io.writeBytes((this.str1).getBytes(Charset.forName("ASCII")));
        this._io.writeU2le(this.lenOf2);
        this._io.writeBytes((this.str2).getBytes(Charset.forName("UTF-8")));
        this._io.writeU2le(this.lenOf3);
        this._io.writeBytes((this.str3).getBytes(Charset.forName("Shift_JIS")));
        this._io.writeU2le(this.lenOf4);
        this._io.writeBytes((this.str4).getBytes(Charset.forName("IBM437")));
    }

    public void _check() {
        if ((this.str1).getBytes(Charset.forName("ASCII")).length != lenOf1())
            throw new ConsistencyError("str1", (this.str1).getBytes(Charset.forName("ASCII")).length, lenOf1());
        if ((this.str2).getBytes(Charset.forName("UTF-8")).length != lenOf2())
            throw new ConsistencyError("str2", (this.str2).getBytes(Charset.forName("UTF-8")).length, lenOf2());
        if ((this.str3).getBytes(Charset.forName("Shift_JIS")).length != lenOf3())
            throw new ConsistencyError("str3", (this.str3).getBytes(Charset.forName("Shift_JIS")).length, lenOf3());
        if ((this.str4).getBytes(Charset.forName("IBM437")).length != lenOf4())
            throw new ConsistencyError("str4", (this.str4).getBytes(Charset.forName("IBM437")).length, lenOf4());
        _dirty = false;
    }
    private Boolean str1Eq;
    public Boolean str1Eq() {
        if (this.str1Eq != null)
            return this.str1Eq;
        this.str1Eq = str1().equals("Some ASCII");
        return this.str1Eq;
    }
    public void _invalidateStr1Eq() { this.str1Eq = null; }
    private Boolean str2Eq;
    public Boolean str2Eq() {
        if (this.str2Eq != null)
            return this.str2Eq;
        this.str2Eq = str2().equals("\u3053\u3093\u306b\u3061\u306f");
        return this.str2Eq;
    }
    public void _invalidateStr2Eq() { this.str2Eq = null; }
    private Boolean str3Eq;
    public Boolean str3Eq() {
        if (this.str3Eq != null)
            return this.str3Eq;
        this.str3Eq = str3().equals("\u3053\u3093\u306b\u3061\u306f");
        return this.str3Eq;
    }
    public void _invalidateStr3Eq() { this.str3Eq = null; }
    private Boolean str3EqStr2;
    public Boolean str3EqStr2() {
        if (this.str3EqStr2 != null)
            return this.str3EqStr2;
        this.str3EqStr2 = str3().equals(str2());
        return this.str3EqStr2;
    }
    public void _invalidateStr3EqStr2() { this.str3EqStr2 = null; }
    private Boolean str4Eq;
    public Boolean str4Eq() {
        if (this.str4Eq != null)
            return this.str4Eq;
        this.str4Eq = str4().equals("\u2591\u2592\u2593");
        return this.str4Eq;
    }
    public void _invalidateStr4Eq() { this.str4Eq = null; }
    private Boolean str4GtStrCalc;
    public Boolean str4GtStrCalc() {
        if (this.str4GtStrCalc != null)
            return this.str4GtStrCalc;
        this.str4GtStrCalc = (str4().compareTo("\u2524") > 0);
        return this.str4GtStrCalc;
    }
    public void _invalidateStr4GtStrCalc() { this.str4GtStrCalc = null; }
    private Boolean str4GtStrFromBytes;
    public Boolean str4GtStrFromBytes() {
        if (this.str4GtStrFromBytes != null)
            return this.str4GtStrFromBytes;
        this.str4GtStrFromBytes = (str4().compareTo(new String(new byte[] { -76 }, Charset.forName("IBM437"))) > 0);
        return this.str4GtStrFromBytes;
    }
    public void _invalidateStr4GtStrFromBytes() { this.str4GtStrFromBytes = null; }
    private int lenOf1;
    private String str1;
    private int lenOf2;
    private String str2;
    private int lenOf3;
    private String str3;
    private int lenOf4;
    private String str4;
    private ExprStrEncodings _root;
    private KaitaiStruct.ReadWrite _parent;
    public int lenOf1() { return lenOf1; }
    public void setLenOf1(int _v) { _dirty = true; lenOf1 = _v; }
    public String str1() { return str1; }
    public void setStr1(String _v) { _dirty = true; str1 = _v; }
    public int lenOf2() { return lenOf2; }
    public void setLenOf2(int _v) { _dirty = true; lenOf2 = _v; }
    public String str2() { return str2; }
    public void setStr2(String _v) { _dirty = true; str2 = _v; }
    public int lenOf3() { return lenOf3; }
    public void setLenOf3(int _v) { _dirty = true; lenOf3 = _v; }
    public String str3() { return str3; }
    public void setStr3(String _v) { _dirty = true; str3 = _v; }
    public int lenOf4() { return lenOf4; }
    public void setLenOf4(int _v) { _dirty = true; lenOf4 = _v; }
    public String str4() { return str4; }
    public void setStr4(String _v) { _dirty = true; str4 = _v; }
    public ExprStrEncodings _root() { return _root; }
    public void set_root(ExprStrEncodings _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
