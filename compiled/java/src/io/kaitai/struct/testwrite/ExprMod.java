// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ExprMod extends KaitaiStruct.ReadWrite {
    public static ExprMod fromFile(String fileName) throws IOException {
        return new ExprMod(new ByteBufferKaitaiStream(fileName));
    }
    public ExprMod() {
        this(null, null, null);
    }

    public ExprMod(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ExprMod(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ExprMod(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ExprMod _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.intU = this._io.readU4le();
        this.intS = this._io.readS4le();
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        this._io.writeU4le(this.intU);
        this._io.writeS4le(this.intS);
    }

    public void _check() {
    }
    private Integer modNegConst;
    public Integer modNegConst() {
        if (this.modNegConst != null)
            return this.modNegConst;
        this.modNegConst = ((Number) (KaitaiStream.mod(-9837, 13))).intValue();
        return this.modNegConst;
    }
    public void _invalidateModNegConst() { this.modNegConst = null; }
    private Integer modNegSeq;
    public Integer modNegSeq() {
        if (this.modNegSeq != null)
            return this.modNegSeq;
        this.modNegSeq = ((Number) (KaitaiStream.mod(intS(), 13))).intValue();
        return this.modNegSeq;
    }
    public void _invalidateModNegSeq() { this.modNegSeq = null; }
    private Integer modPosConst;
    public Integer modPosConst() {
        if (this.modPosConst != null)
            return this.modPosConst;
        this.modPosConst = ((Number) (KaitaiStream.mod(9837, 13))).intValue();
        return this.modPosConst;
    }
    public void _invalidateModPosConst() { this.modPosConst = null; }
    private Integer modPosSeq;
    public Integer modPosSeq() {
        if (this.modPosSeq != null)
            return this.modPosSeq;
        this.modPosSeq = ((Number) (KaitaiStream.mod(intU(), 13))).intValue();
        return this.modPosSeq;
    }
    public void _invalidateModPosSeq() { this.modPosSeq = null; }
    private long intU;
    private int intS;
    private ExprMod _root;
    private KaitaiStruct.ReadWrite _parent;
    public long intU() { return intU; }
    public void setIntU(long _v) { intU = _v; }
    public int intS() { return intS; }
    public void setIntS(int _v) { intS = _v; }
    public ExprMod _root() { return _root; }
    public void set_root(ExprMod _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
