// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class TypeIntUnaryOp extends KaitaiStruct.ReadWrite {
    public static TypeIntUnaryOp fromFile(String fileName) throws IOException {
        return new TypeIntUnaryOp(new ByteBufferKaitaiStream(fileName));
    }
    public TypeIntUnaryOp() {
        this(null, null, null);
    }

    public TypeIntUnaryOp(KaitaiStream _io) {
        this(_io, null, null);
    }

    public TypeIntUnaryOp(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public TypeIntUnaryOp(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, TypeIntUnaryOp _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.valueS2 = this._io.readS2le();
        this.valueS8 = this._io.readS8le();
        _dirty = false;
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeS2le(this.valueS2);
        this._io.writeS8le(this.valueS8);
    }

    public void _check() {
        _dirty = false;
    }
    private Integer unaryS2;
    public Integer unaryS2() {
        if (this.unaryS2 != null)
            return this.unaryS2;
        this.unaryS2 = ((Number) (-(valueS2()))).intValue();
        return this.unaryS2;
    }
    public void _invalidateUnaryS2() { this.unaryS2 = null; }
    private Long unaryS8;
    public Long unaryS8() {
        if (this.unaryS8 != null)
            return this.unaryS8;
        this.unaryS8 = ((Number) (-(valueS8()))).longValue();
        return this.unaryS8;
    }
    public void _invalidateUnaryS8() { this.unaryS8 = null; }
    private short valueS2;
    private long valueS8;
    private TypeIntUnaryOp _root;
    private KaitaiStruct.ReadWrite _parent;
    public short valueS2() { return valueS2; }
    public void setValueS2(short _v) { _dirty = true; valueS2 = _v; }
    public long valueS8() { return valueS8; }
    public void setValueS8(long _v) { _dirty = true; valueS8 = _v; }
    public TypeIntUnaryOp _root() { return _root; }
    public void set_root(TypeIntUnaryOp _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
