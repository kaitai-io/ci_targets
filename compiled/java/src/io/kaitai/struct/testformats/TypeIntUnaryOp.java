// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class TypeIntUnaryOp extends KaitaiStruct {
    public static TypeIntUnaryOp fromFile(String fileName) throws IOException {
        return new TypeIntUnaryOp(new ByteBufferKaitaiStream(fileName));
    }

    public TypeIntUnaryOp(KaitaiStream _io) {
        this(_io, null, null);
    }

    public TypeIntUnaryOp(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public TypeIntUnaryOp(KaitaiStream _io, KaitaiStruct _parent, TypeIntUnaryOp _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.valueS2 = this._io.readS2le();
        this.valueS8 = this._io.readS8le();
    }

    public void _fetchInstances() {
    }
    public Integer unaryS2() {
        if (this.unaryS2 != null)
            return this.unaryS2;
        this.unaryS2 = ((Number) (-(valueS2()))).intValue();
        return this.unaryS2;
    }
    public Long unaryS8() {
        if (this.unaryS8 != null)
            return this.unaryS8;
        this.unaryS8 = ((Number) (-(valueS8()))).longValue();
        return this.unaryS8;
    }
    public short valueS2() { return valueS2; }
    public long valueS8() { return valueS8; }
    public TypeIntUnaryOp _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private Integer unaryS2;
    private Long unaryS8;
    private short valueS2;
    private long valueS8;
    private TypeIntUnaryOp _root;
    private KaitaiStruct _parent;
}
