// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import io.kaitai.struct.ConsistencyError;

public class CombineBytes extends KaitaiStruct.ReadWrite {
    public static CombineBytes fromFile(String fileName) throws IOException {
        return new CombineBytes(new ByteBufferKaitaiStream(fileName));
    }
    public CombineBytes() {
        this(null, null, null);
    }

    public CombineBytes(KaitaiStream _io) {
        this(_io, null, null);
    }

    public CombineBytes(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public CombineBytes(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, CombineBytes _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.bytesTerm = this._io.readBytesTerm((byte) 124, false, true, true);
        this.bytesLimit = this._io.readBytes(4);
        this.bytesEos = this._io.readBytesFull();
        _dirty = false;
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeBytes(this.bytesTerm);
        this._io.writeU1(124);
        this._io.writeBytes(this.bytesLimit);
        this._io.writeBytes(this.bytesEos);
        if (!(this._io.isEof()))
            throw new ConsistencyError("bytes_eos", 0, this._io.size() - this._io.pos());
    }

    public void _check() {
        if (KaitaiStream.byteArrayIndexOf(this.bytesTerm, ((byte) 124)) != -1)
            throw new ConsistencyError("bytes_term", -1, KaitaiStream.byteArrayIndexOf(this.bytesTerm, ((byte) 124)));
        if (this.bytesLimit.length != 4)
            throw new ConsistencyError("bytes_limit", 4, this.bytesLimit.length);
        _dirty = false;
    }
    public byte[] bytesCalc() {
        if (this.bytesCalc != null)
            return this.bytesCalc;
        this.bytesCalc = new byte[] { 82, 110, 68 };
        return this.bytesCalc;
    }
    public void _invalidateBytesCalc() { this.bytesCalc = null; }
    public byte[] eosOrCalc() {
        if (this.eosOrCalc != null)
            return this.eosOrCalc;
        this.eosOrCalc = (true ? bytesEos() : bytesCalc());
        return this.eosOrCalc;
    }
    public void _invalidateEosOrCalc() { this.eosOrCalc = null; }
    public byte[] limitOrCalc() {
        if (this.limitOrCalc != null)
            return this.limitOrCalc;
        this.limitOrCalc = (false ? bytesLimit() : bytesCalc());
        return this.limitOrCalc;
    }
    public void _invalidateLimitOrCalc() { this.limitOrCalc = null; }
    public byte[] limitOrEos() {
        if (this.limitOrEos != null)
            return this.limitOrEos;
        this.limitOrEos = (true ? bytesLimit() : bytesEos());
        return this.limitOrEos;
    }
    public void _invalidateLimitOrEos() { this.limitOrEos = null; }
    public byte[] termOrCalc() {
        if (this.termOrCalc != null)
            return this.termOrCalc;
        this.termOrCalc = (true ? bytesTerm() : bytesCalc());
        return this.termOrCalc;
    }
    public void _invalidateTermOrCalc() { this.termOrCalc = null; }
    public byte[] termOrEos() {
        if (this.termOrEos != null)
            return this.termOrEos;
        this.termOrEos = (false ? bytesTerm() : bytesEos());
        return this.termOrEos;
    }
    public void _invalidateTermOrEos() { this.termOrEos = null; }
    public byte[] termOrLimit() {
        if (this.termOrLimit != null)
            return this.termOrLimit;
        this.termOrLimit = (true ? bytesTerm() : bytesLimit());
        return this.termOrLimit;
    }
    public void _invalidateTermOrLimit() { this.termOrLimit = null; }
    public byte[] bytesTerm() { return bytesTerm; }
    public void setBytesTerm(byte[] _v) { _dirty = true; bytesTerm = _v; }
    public byte[] bytesLimit() { return bytesLimit; }
    public void setBytesLimit(byte[] _v) { _dirty = true; bytesLimit = _v; }
    public byte[] bytesEos() { return bytesEos; }
    public void setBytesEos(byte[] _v) { _dirty = true; bytesEos = _v; }
    public CombineBytes _root() { return _root; }
    public void set_root(CombineBytes _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    private byte[] bytesCalc;
    private byte[] eosOrCalc;
    private byte[] limitOrCalc;
    private byte[] limitOrEos;
    private byte[] termOrCalc;
    private byte[] termOrEos;
    private byte[] termOrLimit;
    private byte[] bytesTerm;
    private byte[] bytesLimit;
    private byte[] bytesEos;
    private CombineBytes _root;
    private KaitaiStruct.ReadWrite _parent;
}
