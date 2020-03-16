// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ExprBytesOps extends KaitaiStruct {
    public static ExprBytesOps fromFile(String fileName) throws IOException {
        return new ExprBytesOps(new ByteBufferKaitaiStream(fileName));
    }

    public ExprBytesOps(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ExprBytesOps(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ExprBytesOps(KaitaiStream _io, KaitaiStruct _parent, ExprBytesOps _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.one = this._io.readBytes(3);
    }
    private Integer twoLast;
    public Integer twoLast() {
        if (this.twoLast != null)
            return this.twoLast;
        int _tmp = (int) (two()[(two()).length - 1]);
        this.twoLast = _tmp;
        return this.twoLast;
    }
    private Integer twoMax;
    public Integer twoMax() {
        if (this.twoMax != null)
            return this.twoMax;
        int _tmp = (int) (KaitaiStream.byteArrayMax(two()));
        this.twoMax = _tmp;
        return this.twoMax;
    }
    private Integer oneMin;
    public Integer oneMin() {
        if (this.oneMin != null)
            return this.oneMin;
        int _tmp = (int) (KaitaiStream.byteArrayMin(one()));
        this.oneMin = _tmp;
        return this.oneMin;
    }
    private Integer oneFirst;
    public Integer oneFirst() {
        if (this.oneFirst != null)
            return this.oneFirst;
        int _tmp = (int) (one()[0]);
        this.oneFirst = _tmp;
        return this.oneFirst;
    }
    private Integer oneMid;
    public Integer oneMid() {
        if (this.oneMid != null)
            return this.oneMid;
        int _tmp = (int) (one()[1]);
        this.oneMid = _tmp;
        return this.oneMid;
    }
    private byte[] two;
    public byte[] two() {
        if (this.two != null)
            return this.two;
        this.two = new byte[] { 65, 67, 75 };
        return this.two;
    }
    private Integer twoMin;
    public Integer twoMin() {
        if (this.twoMin != null)
            return this.twoMin;
        int _tmp = (int) (KaitaiStream.byteArrayMin(two()));
        this.twoMin = _tmp;
        return this.twoMin;
    }
    private Integer twoMid;
    public Integer twoMid() {
        if (this.twoMid != null)
            return this.twoMid;
        int _tmp = (int) (two()[1]);
        this.twoMid = _tmp;
        return this.twoMid;
    }
    private Integer oneSize;
    public Integer oneSize() {
        if (this.oneSize != null)
            return this.oneSize;
        int _tmp = (int) (one().length);
        this.oneSize = _tmp;
        return this.oneSize;
    }
    private Integer oneLast;
    public Integer oneLast() {
        if (this.oneLast != null)
            return this.oneLast;
        int _tmp = (int) (one()[(one()).length - 1]);
        this.oneLast = _tmp;
        return this.oneLast;
    }
    private Integer twoSize;
    public Integer twoSize() {
        if (this.twoSize != null)
            return this.twoSize;
        int _tmp = (int) (two().length);
        this.twoSize = _tmp;
        return this.twoSize;
    }
    private Integer oneMax;
    public Integer oneMax() {
        if (this.oneMax != null)
            return this.oneMax;
        int _tmp = (int) (KaitaiStream.byteArrayMax(one()));
        this.oneMax = _tmp;
        return this.oneMax;
    }
    private Integer twoFirst;
    public Integer twoFirst() {
        if (this.twoFirst != null)
            return this.twoFirst;
        int _tmp = (int) (two()[0]);
        this.twoFirst = _tmp;
        return this.twoFirst;
    }
    private byte[] one;
    private ExprBytesOps _root;
    private KaitaiStruct _parent;
    public byte[] one() { return one; }
    public ExprBytesOps _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
