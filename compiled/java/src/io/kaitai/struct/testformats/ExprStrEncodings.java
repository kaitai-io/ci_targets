// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.nio.charset.Charset;

public class ExprStrEncodings extends KaitaiStruct {
    public static ExprStrEncodings fromFile(String fileName) throws IOException {
        return new ExprStrEncodings(new ByteBufferKaitaiStream(fileName));
    }

    public ExprStrEncodings(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ExprStrEncodings(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ExprStrEncodings(KaitaiStream _io, KaitaiStruct _parent, ExprStrEncodings _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.lenOf1 = this._io.readU2le();
        this.str1 = new String(this._io.readBytes(lenOf1()), Charset.forName("ASCII"));
        this.lenOf2 = this._io.readU2le();
        this.str2 = new String(this._io.readBytes(lenOf2()), Charset.forName("UTF-8"));
        this.lenOf3 = this._io.readU2le();
        this.str3 = new String(this._io.readBytes(lenOf3()), Charset.forName("SJIS"));
        this.lenOf4 = this._io.readU2le();
        this.str4 = new String(this._io.readBytes(lenOf4()), Charset.forName("CP437"));
    }
    private Boolean str4GtStrFromBytes;
    public Boolean str4GtStrFromBytes() {
        if (this.str4GtStrFromBytes != null)
            return this.str4GtStrFromBytes;
        boolean _tmp = (boolean) ((str4().compareTo(new String(new byte[] { -76 }, Charset.forName("CP437"))) > 0));
        this.str4GtStrFromBytes = _tmp;
        return this.str4GtStrFromBytes;
    }
    private Boolean str1Eq;
    public Boolean str1Eq() {
        if (this.str1Eq != null)
            return this.str1Eq;
        boolean _tmp = (boolean) (str1().equals("Some ASCII"));
        this.str1Eq = _tmp;
        return this.str1Eq;
    }
    private Boolean str4Eq;
    public Boolean str4Eq() {
        if (this.str4Eq != null)
            return this.str4Eq;
        boolean _tmp = (boolean) (str4().equals("\u2591\u2592\u2593"));
        this.str4Eq = _tmp;
        return this.str4Eq;
    }
    private Boolean str3EqStr2;
    public Boolean str3EqStr2() {
        if (this.str3EqStr2 != null)
            return this.str3EqStr2;
        boolean _tmp = (boolean) (str3().equals(str2()));
        this.str3EqStr2 = _tmp;
        return this.str3EqStr2;
    }
    private Boolean str4GtStrCalc;
    public Boolean str4GtStrCalc() {
        if (this.str4GtStrCalc != null)
            return this.str4GtStrCalc;
        boolean _tmp = (boolean) ((str4().compareTo("\u2524") > 0));
        this.str4GtStrCalc = _tmp;
        return this.str4GtStrCalc;
    }
    private Boolean str2Eq;
    public Boolean str2Eq() {
        if (this.str2Eq != null)
            return this.str2Eq;
        boolean _tmp = (boolean) (str2().equals("\u3053\u3093\u306b\u3061\u306f"));
        this.str2Eq = _tmp;
        return this.str2Eq;
    }
    private Boolean str3Eq;
    public Boolean str3Eq() {
        if (this.str3Eq != null)
            return this.str3Eq;
        boolean _tmp = (boolean) (str3().equals("\u3053\u3093\u306b\u3061\u306f"));
        this.str3Eq = _tmp;
        return this.str3Eq;
    }
    private int lenOf1;
    private String str1;
    private int lenOf2;
    private String str2;
    private int lenOf3;
    private String str3;
    private int lenOf4;
    private String str4;
    private ExprStrEncodings _root;
    private KaitaiStruct _parent;
    public int lenOf1() { return lenOf1; }
    public String str1() { return str1; }
    public int lenOf2() { return lenOf2; }
    public String str2() { return str2; }
    public int lenOf3() { return lenOf3; }
    public String str3() { return str3; }
    public int lenOf4() { return lenOf4; }
    public String str4() { return str4; }
    public ExprStrEncodings _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
