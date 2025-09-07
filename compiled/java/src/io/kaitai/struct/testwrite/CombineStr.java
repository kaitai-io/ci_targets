// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.charset.Charset;
import io.kaitai.struct.ConsistencyError;

public class CombineStr extends KaitaiStruct.ReadWrite {
    public static CombineStr fromFile(String fileName) throws IOException {
        return new CombineStr(new ByteBufferKaitaiStream(fileName));
    }
    public CombineStr() {
        this(null, null, null);
    }

    public CombineStr(KaitaiStream _io) {
        this(_io, null, null);
    }

    public CombineStr(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public CombineStr(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, CombineStr _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.strTerm = new String(this._io.readBytesTerm((byte) 124, false, true, true), StandardCharsets.US_ASCII);
        this.strLimit = new String(this._io.readBytes(4), StandardCharsets.US_ASCII);
        this.strEos = new String(this._io.readBytesFull(), StandardCharsets.US_ASCII);
        _dirty = false;
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeBytes((this.strTerm).getBytes(Charset.forName("ASCII")));
        this._io.writeU1(124);
        this._io.writeBytes((this.strLimit).getBytes(Charset.forName("ASCII")));
        this._io.writeBytes((this.strEos).getBytes(Charset.forName("ASCII")));
        if (!(this._io.isEof()))
            throw new ConsistencyError("str_eos", 0, this._io.size() - this._io.pos());
    }

    public void _check() {
        if (KaitaiStream.byteArrayIndexOf((this.strTerm).getBytes(Charset.forName("ASCII")), ((byte) 124)) != -1)
            throw new ConsistencyError("str_term", -1, KaitaiStream.byteArrayIndexOf((this.strTerm).getBytes(Charset.forName("ASCII")), ((byte) 124)));
        if ((this.strLimit).getBytes(Charset.forName("ASCII")).length != 4)
            throw new ConsistencyError("str_limit", 4, (this.strLimit).getBytes(Charset.forName("ASCII")).length);
        _dirty = false;
    }
    private byte[] calcBytes;
    public byte[] calcBytes() {
        if (this.calcBytes != null)
            return this.calcBytes;
        this.calcBytes = new byte[] { 98, 97, 122 };
        return this.calcBytes;
    }
    public void _invalidateCalcBytes() { this.calcBytes = null; }
    private String calcOrCalcBytes;
    public String calcOrCalcBytes() {
        if (this.calcOrCalcBytes != null)
            return this.calcOrCalcBytes;
        this.calcOrCalcBytes = (false ? strCalc() : strCalcBytes());
        return this.calcOrCalcBytes;
    }
    public void _invalidateCalcOrCalcBytes() { this.calcOrCalcBytes = null; }
    private String eosOrCalc;
    public String eosOrCalc() {
        if (this.eosOrCalc != null)
            return this.eosOrCalc;
        this.eosOrCalc = (false ? strEos() : strCalc());
        return this.eosOrCalc;
    }
    public void _invalidateEosOrCalc() { this.eosOrCalc = null; }
    private String eosOrCalcBytes;
    public String eosOrCalcBytes() {
        if (this.eosOrCalcBytes != null)
            return this.eosOrCalcBytes;
        this.eosOrCalcBytes = (true ? strEos() : strCalcBytes());
        return this.eosOrCalcBytes;
    }
    public void _invalidateEosOrCalcBytes() { this.eosOrCalcBytes = null; }
    private String limitOrCalc;
    public String limitOrCalc() {
        if (this.limitOrCalc != null)
            return this.limitOrCalc;
        this.limitOrCalc = (false ? strLimit() : strCalc());
        return this.limitOrCalc;
    }
    public void _invalidateLimitOrCalc() { this.limitOrCalc = null; }
    private String limitOrCalcBytes;
    public String limitOrCalcBytes() {
        if (this.limitOrCalcBytes != null)
            return this.limitOrCalcBytes;
        this.limitOrCalcBytes = (true ? strLimit() : strCalcBytes());
        return this.limitOrCalcBytes;
    }
    public void _invalidateLimitOrCalcBytes() { this.limitOrCalcBytes = null; }
    private String limitOrEos;
    public String limitOrEos() {
        if (this.limitOrEos != null)
            return this.limitOrEos;
        this.limitOrEos = (true ? strLimit() : strEos());
        return this.limitOrEos;
    }
    public void _invalidateLimitOrEos() { this.limitOrEos = null; }
    private String strCalc;
    public String strCalc() {
        if (this.strCalc != null)
            return this.strCalc;
        this.strCalc = "bar";
        return this.strCalc;
    }
    public void _invalidateStrCalc() { this.strCalc = null; }
    private String strCalcBytes;
    public String strCalcBytes() {
        if (this.strCalcBytes != null)
            return this.strCalcBytes;
        this.strCalcBytes = new String(calcBytes(), StandardCharsets.US_ASCII);
        return this.strCalcBytes;
    }
    public void _invalidateStrCalcBytes() { this.strCalcBytes = null; }
    private String termOrCalc;
    public String termOrCalc() {
        if (this.termOrCalc != null)
            return this.termOrCalc;
        this.termOrCalc = (true ? strTerm() : strCalc());
        return this.termOrCalc;
    }
    public void _invalidateTermOrCalc() { this.termOrCalc = null; }
    private String termOrCalcBytes;
    public String termOrCalcBytes() {
        if (this.termOrCalcBytes != null)
            return this.termOrCalcBytes;
        this.termOrCalcBytes = (false ? strTerm() : strCalcBytes());
        return this.termOrCalcBytes;
    }
    public void _invalidateTermOrCalcBytes() { this.termOrCalcBytes = null; }
    private String termOrEos;
    public String termOrEos() {
        if (this.termOrEos != null)
            return this.termOrEos;
        this.termOrEos = (false ? strTerm() : strEos());
        return this.termOrEos;
    }
    public void _invalidateTermOrEos() { this.termOrEos = null; }
    private String termOrLimit;
    public String termOrLimit() {
        if (this.termOrLimit != null)
            return this.termOrLimit;
        this.termOrLimit = (true ? strTerm() : strLimit());
        return this.termOrLimit;
    }
    public void _invalidateTermOrLimit() { this.termOrLimit = null; }
    private String strTerm;
    private String strLimit;
    private String strEos;
    private CombineStr _root;
    private KaitaiStruct.ReadWrite _parent;
    public String strTerm() { return strTerm; }
    public void setStrTerm(String _v) { _dirty = true; strTerm = _v; }
    public String strLimit() { return strLimit; }
    public void setStrLimit(String _v) { _dirty = true; strLimit = _v; }
    public String strEos() { return strEos; }
    public void setStrEos(String _v) { _dirty = true; strEos = _v; }
    public CombineStr _root() { return _root; }
    public void set_root(CombineStr _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
