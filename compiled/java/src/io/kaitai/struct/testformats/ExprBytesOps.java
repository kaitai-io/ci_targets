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

    public void _fetchInstances() {
    }
    private Integer oneFirst;
    public Integer oneFirst() {
        if (this.oneFirst != null)
            return this.oneFirst;
        this.oneFirst = ((Number) ((one()[((int) 0)] & 0xff))).intValue();
        return this.oneFirst;
    }
    private Integer oneLast;
    public Integer oneLast() {
        if (this.oneLast != null)
            return this.oneLast;
        this.oneLast = ((Number) ((one()[((Number) (one().length - 1)).intValue()] & 0xff))).intValue();
        return this.oneLast;
    }
    private Integer oneMax;
    public Integer oneMax() {
        if (this.oneMax != null)
            return this.oneMax;
        this.oneMax = ((Number) (KaitaiStream.byteArrayMax(one()))).intValue();
        return this.oneMax;
    }
    private Integer oneMid;
    public Integer oneMid() {
        if (this.oneMid != null)
            return this.oneMid;
        this.oneMid = ((Number) ((one()[((int) 1)] & 0xff))).intValue();
        return this.oneMid;
    }
    private Integer oneMin;
    public Integer oneMin() {
        if (this.oneMin != null)
            return this.oneMin;
        this.oneMin = ((Number) (KaitaiStream.byteArrayMin(one()))).intValue();
        return this.oneMin;
    }
    private Integer oneSize;
    public Integer oneSize() {
        if (this.oneSize != null)
            return this.oneSize;
        this.oneSize = ((Number) (one().length)).intValue();
        return this.oneSize;
    }
    private byte[] two;
    public byte[] two() {
        if (this.two != null)
            return this.two;
        this.two = new byte[] { 65, -1, 75 };
        return this.two;
    }
    private Integer twoFirst;
    public Integer twoFirst() {
        if (this.twoFirst != null)
            return this.twoFirst;
        this.twoFirst = ((Number) ((two()[((int) 0)] & 0xff))).intValue();
        return this.twoFirst;
    }
    private Integer twoLast;
    public Integer twoLast() {
        if (this.twoLast != null)
            return this.twoLast;
        this.twoLast = ((Number) ((two()[((Number) (two().length - 1)).intValue()] & 0xff))).intValue();
        return this.twoLast;
    }
    private Integer twoMax;
    public Integer twoMax() {
        if (this.twoMax != null)
            return this.twoMax;
        this.twoMax = ((Number) (KaitaiStream.byteArrayMax(two()))).intValue();
        return this.twoMax;
    }
    private Integer twoMid;
    public Integer twoMid() {
        if (this.twoMid != null)
            return this.twoMid;
        this.twoMid = ((Number) ((two()[((int) 1)] & 0xff))).intValue();
        return this.twoMid;
    }
    private Integer twoMin;
    public Integer twoMin() {
        if (this.twoMin != null)
            return this.twoMin;
        this.twoMin = ((Number) (KaitaiStream.byteArrayMin(two()))).intValue();
        return this.twoMin;
    }
    private Integer twoSize;
    public Integer twoSize() {
        if (this.twoSize != null)
            return this.twoSize;
        this.twoSize = ((Number) (two().length)).intValue();
        return this.twoSize;
    }
    private byte[] one;
    private ExprBytesOps _root;
    private KaitaiStruct _parent;
    public byte[] one() { return one; }
    public ExprBytesOps _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
