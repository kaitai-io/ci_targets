// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;

import java.io.IOException;
import java.util.Arrays;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.nio.charset.Charset;

public class TypeIntUnaryOp extends KaitaiStruct {
    public static TypeIntUnaryOp fromFile(String fileName) throws IOException {
        return new TypeIntUnaryOp(new KaitaiStream(fileName));
    }

    public TypeIntUnaryOp(KaitaiStream _io) {
        super(_io);
        this._root = this;
        _read();
    }

    public TypeIntUnaryOp(KaitaiStream _io, KaitaiStruct _parent) {
        super(_io);
        this._parent = _parent;
        this._root = this;
        _read();
    }

    public TypeIntUnaryOp(KaitaiStream _io, KaitaiStruct _parent, TypeIntUnaryOp _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root;
        _read();
    }
    private void _read() {
        this.valueS2 = this._io.readS2le();
        this.valueS8 = this._io.readS8le();
    }
    private Integer unaryS2;
    public Integer unaryS2() {
        if (this.unaryS2 != null)
            return this.unaryS2;
        int _tmp = (int) (-valueS2());
        this.unaryS2 = _tmp;
        return this.unaryS2;
    }
    private Long unaryS8;
    public Long unaryS8() {
        if (this.unaryS8 != null)
            return this.unaryS8;
        long _tmp = (long) (-valueS8());
        this.unaryS8 = _tmp;
        return this.unaryS8;
    }
    private short valueS2;
    private long valueS8;
    private TypeIntUnaryOp _root;
    private KaitaiStruct _parent;
    public short valueS2() { return valueS2; }
    public long valueS8() { return valueS8; }
    public TypeIntUnaryOp _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
