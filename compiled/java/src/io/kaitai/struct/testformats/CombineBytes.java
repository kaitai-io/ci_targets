// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class CombineBytes extends KaitaiStruct {
    public static CombineBytes fromFile(String fileName) throws IOException {
        return new CombineBytes(new ByteBufferKaitaiStream(fileName));
    }

    public CombineBytes(KaitaiStream _io) {
        this(_io, null, null);
    }

    public CombineBytes(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public CombineBytes(KaitaiStream _io, KaitaiStruct _parent, CombineBytes _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.bytesTerm = this._io.readBytesTerm((byte) 124, false, true, true);
        this.bytesLimit = this._io.readBytes(4);
        this.bytesEos = this._io.readBytesFull();
    }
    private byte[] bytesCalc;
    public byte[] bytesCalc() {
        if (this.bytesCalc != null)
            return this.bytesCalc;
        this.bytesCalc = new byte[] { 82, 110, 68 };
        return this.bytesCalc;
    }
    private byte[] eosOrCalc;
    public byte[] eosOrCalc() {
        if (this.eosOrCalc != null)
            return this.eosOrCalc;
        this.eosOrCalc = (true ? bytesEos() : bytesCalc());
        return this.eosOrCalc;
    }
    private byte[] limitOrCalc;
    public byte[] limitOrCalc() {
        if (this.limitOrCalc != null)
            return this.limitOrCalc;
        this.limitOrCalc = (false ? bytesLimit() : bytesCalc());
        return this.limitOrCalc;
    }
    private byte[] limitOrEos;
    public byte[] limitOrEos() {
        if (this.limitOrEos != null)
            return this.limitOrEos;
        this.limitOrEos = (true ? bytesLimit() : bytesEos());
        return this.limitOrEos;
    }
    private byte[] termOrCalc;
    public byte[] termOrCalc() {
        if (this.termOrCalc != null)
            return this.termOrCalc;
        this.termOrCalc = (true ? bytesTerm() : bytesCalc());
        return this.termOrCalc;
    }
    private byte[] termOrEos;
    public byte[] termOrEos() {
        if (this.termOrEos != null)
            return this.termOrEos;
        this.termOrEos = (false ? bytesTerm() : bytesEos());
        return this.termOrEos;
    }
    private byte[] termOrLimit;
    public byte[] termOrLimit() {
        if (this.termOrLimit != null)
            return this.termOrLimit;
        this.termOrLimit = (true ? bytesTerm() : bytesLimit());
        return this.termOrLimit;
    }
    private byte[] bytesTerm;
    private byte[] bytesLimit;
    private byte[] bytesEos;
    private CombineBytes _root;
    private KaitaiStruct _parent;
    public byte[] bytesTerm() { return bytesTerm; }
    public byte[] bytesLimit() { return bytesLimit; }
    public byte[] bytesEos() { return bytesEos; }
    public CombineBytes _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
