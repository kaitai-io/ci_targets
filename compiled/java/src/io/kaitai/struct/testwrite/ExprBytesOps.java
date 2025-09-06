// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import io.kaitai.struct.ConsistencyError;

public class ExprBytesOps extends KaitaiStruct.ReadWrite {
    public static ExprBytesOps fromFile(String fileName) throws IOException {
        return new ExprBytesOps(new ByteBufferKaitaiStream(fileName));
    }
    public ExprBytesOps() {
        this(null, null, null);
    }

    public ExprBytesOps(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ExprBytesOps(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ExprBytesOps(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ExprBytesOps _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.one = this._io.readBytes(3);
        _dirty = false;
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeBytes(this.one);
    }

    public void _check() {
        if (this.one.length != 3)
            throw new ConsistencyError("one", this.one.length, 3);
        _dirty = false;
    }
    private Integer oneFirst;
    public Integer oneFirst() {
        if (this.oneFirst != null)
            return this.oneFirst;
        this.oneFirst = ((Number) ((one()[((int) 0)] & 0xff))).intValue();
        return this.oneFirst;
    }
    public void _invalidateOneFirst() { this.oneFirst = null; }
    private Integer oneLast;
    public Integer oneLast() {
        if (this.oneLast != null)
            return this.oneLast;
        this.oneLast = ((Number) ((one()[((Number) (one().length - 1)).intValue()] & 0xff))).intValue();
        return this.oneLast;
    }
    public void _invalidateOneLast() { this.oneLast = null; }
    private Integer oneMax;
    public Integer oneMax() {
        if (this.oneMax != null)
            return this.oneMax;
        this.oneMax = ((Number) (KaitaiStream.byteArrayMax(one()))).intValue();
        return this.oneMax;
    }
    public void _invalidateOneMax() { this.oneMax = null; }
    private Integer oneMid;
    public Integer oneMid() {
        if (this.oneMid != null)
            return this.oneMid;
        this.oneMid = ((Number) ((one()[((int) 1)] & 0xff))).intValue();
        return this.oneMid;
    }
    public void _invalidateOneMid() { this.oneMid = null; }
    private Integer oneMin;
    public Integer oneMin() {
        if (this.oneMin != null)
            return this.oneMin;
        this.oneMin = ((Number) (KaitaiStream.byteArrayMin(one()))).intValue();
        return this.oneMin;
    }
    public void _invalidateOneMin() { this.oneMin = null; }
    private Integer oneSize;
    public Integer oneSize() {
        if (this.oneSize != null)
            return this.oneSize;
        this.oneSize = ((Number) (one().length)).intValue();
        return this.oneSize;
    }
    public void _invalidateOneSize() { this.oneSize = null; }
    private byte[] two;
    public byte[] two() {
        if (this.two != null)
            return this.two;
        this.two = new byte[] { 65, -1, 75 };
        return this.two;
    }
    public void _invalidateTwo() { this.two = null; }
    private Integer twoFirst;
    public Integer twoFirst() {
        if (this.twoFirst != null)
            return this.twoFirst;
        this.twoFirst = ((Number) ((two()[((int) 0)] & 0xff))).intValue();
        return this.twoFirst;
    }
    public void _invalidateTwoFirst() { this.twoFirst = null; }
    private Integer twoLast;
    public Integer twoLast() {
        if (this.twoLast != null)
            return this.twoLast;
        this.twoLast = ((Number) ((two()[((Number) (two().length - 1)).intValue()] & 0xff))).intValue();
        return this.twoLast;
    }
    public void _invalidateTwoLast() { this.twoLast = null; }
    private Integer twoMax;
    public Integer twoMax() {
        if (this.twoMax != null)
            return this.twoMax;
        this.twoMax = ((Number) (KaitaiStream.byteArrayMax(two()))).intValue();
        return this.twoMax;
    }
    public void _invalidateTwoMax() { this.twoMax = null; }
    private Integer twoMid;
    public Integer twoMid() {
        if (this.twoMid != null)
            return this.twoMid;
        this.twoMid = ((Number) ((two()[((int) 1)] & 0xff))).intValue();
        return this.twoMid;
    }
    public void _invalidateTwoMid() { this.twoMid = null; }
    private Integer twoMin;
    public Integer twoMin() {
        if (this.twoMin != null)
            return this.twoMin;
        this.twoMin = ((Number) (KaitaiStream.byteArrayMin(two()))).intValue();
        return this.twoMin;
    }
    public void _invalidateTwoMin() { this.twoMin = null; }
    private Integer twoSize;
    public Integer twoSize() {
        if (this.twoSize != null)
            return this.twoSize;
        this.twoSize = ((Number) (two().length)).intValue();
        return this.twoSize;
    }
    public void _invalidateTwoSize() { this.twoSize = null; }
    private byte[] one;
    private ExprBytesOps _root;
    private KaitaiStruct.ReadWrite _parent;
    public byte[] one() { return one; }
    public void setOne(byte[] _v) { _dirty = true; one = _v; }
    public ExprBytesOps _root() { return _root; }
    public void set_root(ExprBytesOps _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
