// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;

public class CombineStr extends KaitaiStruct {
    public static CombineStr fromFile(String fileName) throws IOException {
        return new CombineStr(new ByteBufferKaitaiStream(fileName));
    }

    public CombineStr(KaitaiStream _io) {
        this(_io, null, null);
    }

    public CombineStr(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public CombineStr(KaitaiStream _io, KaitaiStruct _parent, CombineStr _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.strTerm = new String(this._io.readBytesTerm((byte) 124, false, true, true), StandardCharsets.US_ASCII);
        this.strLimit = new String(this._io.readBytes(4), StandardCharsets.US_ASCII);
        this.strEos = new String(this._io.readBytesFull(), StandardCharsets.US_ASCII);
    }

    public void _fetchInstances() {
    }
    public byte[] calcBytes() {
        if (this.calcBytes != null)
            return this.calcBytes;
        this.calcBytes = new byte[] { 98, 97, 122 };
        return this.calcBytes;
    }
    public String calcOrCalcBytes() {
        if (this.calcOrCalcBytes != null)
            return this.calcOrCalcBytes;
        this.calcOrCalcBytes = (false ? strCalc() : strCalcBytes());
        return this.calcOrCalcBytes;
    }
    public String eosOrCalc() {
        if (this.eosOrCalc != null)
            return this.eosOrCalc;
        this.eosOrCalc = (false ? strEos() : strCalc());
        return this.eosOrCalc;
    }
    public String eosOrCalcBytes() {
        if (this.eosOrCalcBytes != null)
            return this.eosOrCalcBytes;
        this.eosOrCalcBytes = (true ? strEos() : strCalcBytes());
        return this.eosOrCalcBytes;
    }
    public String limitOrCalc() {
        if (this.limitOrCalc != null)
            return this.limitOrCalc;
        this.limitOrCalc = (false ? strLimit() : strCalc());
        return this.limitOrCalc;
    }
    public String limitOrCalcBytes() {
        if (this.limitOrCalcBytes != null)
            return this.limitOrCalcBytes;
        this.limitOrCalcBytes = (true ? strLimit() : strCalcBytes());
        return this.limitOrCalcBytes;
    }
    public String limitOrEos() {
        if (this.limitOrEos != null)
            return this.limitOrEos;
        this.limitOrEos = (true ? strLimit() : strEos());
        return this.limitOrEos;
    }
    public String strCalc() {
        if (this.strCalc != null)
            return this.strCalc;
        this.strCalc = "bar";
        return this.strCalc;
    }
    public String strCalcBytes() {
        if (this.strCalcBytes != null)
            return this.strCalcBytes;
        this.strCalcBytes = new String(calcBytes(), StandardCharsets.US_ASCII);
        return this.strCalcBytes;
    }
    public String termOrCalc() {
        if (this.termOrCalc != null)
            return this.termOrCalc;
        this.termOrCalc = (true ? strTerm() : strCalc());
        return this.termOrCalc;
    }
    public String termOrCalcBytes() {
        if (this.termOrCalcBytes != null)
            return this.termOrCalcBytes;
        this.termOrCalcBytes = (false ? strTerm() : strCalcBytes());
        return this.termOrCalcBytes;
    }
    public String termOrEos() {
        if (this.termOrEos != null)
            return this.termOrEos;
        this.termOrEos = (false ? strTerm() : strEos());
        return this.termOrEos;
    }
    public String termOrLimit() {
        if (this.termOrLimit != null)
            return this.termOrLimit;
        this.termOrLimit = (true ? strTerm() : strLimit());
        return this.termOrLimit;
    }
    public String strTerm() { return strTerm; }
    public String strLimit() { return strLimit; }
    public String strEos() { return strEos; }
    public CombineStr _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private byte[] calcBytes;
    private String calcOrCalcBytes;
    private String eosOrCalc;
    private String eosOrCalcBytes;
    private String limitOrCalc;
    private String limitOrCalcBytes;
    private String limitOrEos;
    private String strCalc;
    private String strCalcBytes;
    private String termOrCalc;
    private String termOrCalcBytes;
    private String termOrEos;
    private String termOrLimit;
    private String strTerm;
    private String strLimit;
    private String strEos;
    private CombineStr _root;
    private KaitaiStruct _parent;
}
