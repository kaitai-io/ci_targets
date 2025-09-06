// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ExprIntDiv extends KaitaiStruct.ReadWrite {
    public static ExprIntDiv fromFile(String fileName) throws IOException {
        return new ExprIntDiv(new ByteBufferKaitaiStream(fileName));
    }
    public ExprIntDiv() {
        this(null, null, null);
    }

    public ExprIntDiv(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ExprIntDiv(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ExprIntDiv(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ExprIntDiv _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.intU = this._io.readU4le();
        this.intS = this._io.readS4le();
        _dirty = false;
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeU4le(this.intU);
        this._io.writeS4le(this.intS);
    }

    public void _check() {
        _dirty = false;
    }
    private Integer divNegConst;
    public Integer divNegConst() {
        if (this.divNegConst != null)
            return this.divNegConst;
        this.divNegConst = ((Number) (-9837 / 13)).intValue();
        return this.divNegConst;
    }
    public void _invalidateDivNegConst() { this.divNegConst = null; }
    private Integer divNegSeq;
    public Integer divNegSeq() {
        if (this.divNegSeq != null)
            return this.divNegSeq;
        this.divNegSeq = ((Number) (intS() / 13)).intValue();
        return this.divNegSeq;
    }
    public void _invalidateDivNegSeq() { this.divNegSeq = null; }
    private Integer divPosConst;
    public Integer divPosConst() {
        if (this.divPosConst != null)
            return this.divPosConst;
        this.divPosConst = ((Number) (9837 / 13)).intValue();
        return this.divPosConst;
    }
    public void _invalidateDivPosConst() { this.divPosConst = null; }
    private Integer divPosSeq;
    public Integer divPosSeq() {
        if (this.divPosSeq != null)
            return this.divPosSeq;
        this.divPosSeq = ((Number) (intU() / 13)).intValue();
        return this.divPosSeq;
    }
    public void _invalidateDivPosSeq() { this.divPosSeq = null; }
    private long intU;
    private int intS;
    private ExprIntDiv _root;
    private KaitaiStruct.ReadWrite _parent;
    public long intU() { return intU; }
    public void setIntU(long _v) { _dirty = true; intU = _v; }
    public int intS() { return intS; }
    public void setIntS(int _v) { _dirty = true; intS = _v; }
    public ExprIntDiv _root() { return _root; }
    public void set_root(ExprIntDiv _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
