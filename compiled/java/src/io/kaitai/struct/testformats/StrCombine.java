// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.nio.charset.Charset;

public class StrCombine extends KaitaiStruct {
    public static StrCombine fromFile(String fileName) throws IOException {
        return new StrCombine(new ByteBufferKaitaiStream(fileName));
    }

    public StrCombine(KaitaiStream _io) {
        this(_io, null, null);
    }

    public StrCombine(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public StrCombine(KaitaiStream _io, KaitaiStruct _parent, StrCombine _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.strTerm = new String(this._io.readBytesTerm(124, false, true, true), Charset.forName("ASCII"));
        this.strLimit = new String(this._io.readBytes(4), Charset.forName("ASCII"));
        this.strEos = new String(this._io.readBytesFull(), Charset.forName("ASCII"));
    }
    private String limitOrCalcBytes;
    public String limitOrCalcBytes() {
        if (this.limitOrCalcBytes != null)
            return this.limitOrCalcBytes;
        this.limitOrCalcBytes = (true ? strLimit() : strCalcBytes());
        return this.limitOrCalcBytes;
    }
    private String limitOrCalc;
    public String limitOrCalc() {
        if (this.limitOrCalc != null)
            return this.limitOrCalc;
        this.limitOrCalc = (false ? strLimit() : strCalc());
        return this.limitOrCalc;
    }
    private String termOrLimit;
    public String termOrLimit() {
        if (this.termOrLimit != null)
            return this.termOrLimit;
        this.termOrLimit = (true ? strTerm() : strLimit());
        return this.termOrLimit;
    }
    private String limitOrEos;
    public String limitOrEos() {
        if (this.limitOrEos != null)
            return this.limitOrEos;
        this.limitOrEos = (true ? strLimit() : strEos());
        return this.limitOrEos;
    }
    private String calcOrCalcBytes;
    public String calcOrCalcBytes() {
        if (this.calcOrCalcBytes != null)
            return this.calcOrCalcBytes;
        this.calcOrCalcBytes = (false ? strCalc() : strCalcBytes());
        return this.calcOrCalcBytes;
    }
    private String strCalcBytes;
    public String strCalcBytes() {
        if (this.strCalcBytes != null)
            return this.strCalcBytes;
        this.strCalcBytes = new String(calcBytes(), Charset.forName("ASCII"));
        return this.strCalcBytes;
    }
    private String eosOrCalc;
    public String eosOrCalc() {
        if (this.eosOrCalc != null)
            return this.eosOrCalc;
        this.eosOrCalc = (false ? strEos() : strCalc());
        return this.eosOrCalc;
    }
    private String termOrCalc;
    public String termOrCalc() {
        if (this.termOrCalc != null)
            return this.termOrCalc;
        this.termOrCalc = (true ? strTerm() : strCalc());
        return this.termOrCalc;
    }
    private String termOrCalcBytes;
    public String termOrCalcBytes() {
        if (this.termOrCalcBytes != null)
            return this.termOrCalcBytes;
        this.termOrCalcBytes = (false ? strTerm() : strCalcBytes());
        return this.termOrCalcBytes;
    }
    private String termOrEos;
    public String termOrEos() {
        if (this.termOrEos != null)
            return this.termOrEos;
        this.termOrEos = (false ? strTerm() : strEos());
        return this.termOrEos;
    }
    private String strCalc;
    public String strCalc() {
        if (this.strCalc != null)
            return this.strCalc;
        this.strCalc = "bar";
        return this.strCalc;
    }
    private String eosOrCalcBytes;
    public String eosOrCalcBytes() {
        if (this.eosOrCalcBytes != null)
            return this.eosOrCalcBytes;
        this.eosOrCalcBytes = (true ? strEos() : strCalcBytes());
        return this.eosOrCalcBytes;
    }
    private byte[] calcBytes;
    public byte[] calcBytes() {
        if (this.calcBytes != null)
            return this.calcBytes;
        this.calcBytes = new byte[] { 98, 97, 122 };
        return this.calcBytes;
    }
    private String strTerm;
    private String strLimit;
    private String strEos;
    private StrCombine _root;
    private KaitaiStruct _parent;
    public String strTerm() { return strTerm; }
    public String strLimit() { return strLimit; }
    public String strEos() { return strEos; }
    public StrCombine _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
