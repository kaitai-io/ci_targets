// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import io.kaitai.struct.ConsistencyError;
import java.util.Arrays;

public class ExprBytesCmp extends KaitaiStruct.ReadWrite {
    public static ExprBytesCmp fromFile(String fileName) throws IOException {
        return new ExprBytesCmp(new ByteBufferKaitaiStream(fileName));
    }
    public ExprBytesCmp() {
        this(null, null, null);
    }

    public ExprBytesCmp(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ExprBytesCmp(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ExprBytesCmp(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ExprBytesCmp _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.one = this._io.readBytes(1);
        this.two = this._io.readBytes(3);
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        this._io.writeBytes(this.one);
        this._io.writeBytes(this.two);
    }

    public void _check() {
        if (this.one.length != 1)
            throw new ConsistencyError("one", this.one.length, 1);
        if (this.two.length != 3)
            throw new ConsistencyError("two", this.two.length, 3);
    }
    private byte[] ack;
    public byte[] ack() {
        if (this.ack != null)
            return this.ack;
        this.ack = new byte[] { 65, 67, 75 };
        return this.ack;
    }
    public void _invalidateAck() { this.ack = null; }
    private byte[] ack2;
    public byte[] ack2() {
        if (this.ack2 != null)
            return this.ack2;
        this.ack2 = new byte[] { 65, 67, 75, 50 };
        return this.ack2;
    }
    public void _invalidateAck2() { this.ack2 = null; }
    private byte[] hiVal;
    public byte[] hiVal() {
        if (this.hiVal != null)
            return this.hiVal;
        this.hiVal = new byte[] { -112, 67 };
        return this.hiVal;
    }
    public void _invalidateHiVal() { this.hiVal = null; }
    private Boolean isEq;
    public Boolean isEq() {
        if (this.isEq != null)
            return this.isEq;
        this.isEq = Arrays.equals(two(), ack());
        return this.isEq;
    }
    public void _invalidateIsEq() { this.isEq = null; }
    private Boolean isGe;
    public Boolean isGe() {
        if (this.isGe != null)
            return this.isGe;
        this.isGe = (KaitaiStream.byteArrayCompare(two(), ack2()) >= 0);
        return this.isGe;
    }
    public void _invalidateIsGe() { this.isGe = null; }
    private Boolean isGt;
    public Boolean isGt() {
        if (this.isGt != null)
            return this.isGt;
        this.isGt = (KaitaiStream.byteArrayCompare(two(), ack2()) > 0);
        return this.isGt;
    }
    public void _invalidateIsGt() { this.isGt = null; }
    private Boolean isGt2;
    public Boolean isGt2() {
        if (this.isGt2 != null)
            return this.isGt2;
        this.isGt2 = (KaitaiStream.byteArrayCompare(hiVal(), two()) > 0);
        return this.isGt2;
    }
    public void _invalidateIsGt2() { this.isGt2 = null; }
    private Boolean isLe;
    public Boolean isLe() {
        if (this.isLe != null)
            return this.isLe;
        this.isLe = (KaitaiStream.byteArrayCompare(two(), ack2()) <= 0);
        return this.isLe;
    }
    public void _invalidateIsLe() { this.isLe = null; }
    private Boolean isLt;
    public Boolean isLt() {
        if (this.isLt != null)
            return this.isLt;
        this.isLt = (KaitaiStream.byteArrayCompare(two(), ack2()) < 0);
        return this.isLt;
    }
    public void _invalidateIsLt() { this.isLt = null; }
    private Boolean isLt2;
    public Boolean isLt2() {
        if (this.isLt2 != null)
            return this.isLt2;
        this.isLt2 = (KaitaiStream.byteArrayCompare(one(), two()) < 0);
        return this.isLt2;
    }
    public void _invalidateIsLt2() { this.isLt2 = null; }
    private Boolean isNe;
    public Boolean isNe() {
        if (this.isNe != null)
            return this.isNe;
        this.isNe = !Arrays.equals(two(), ack());
        return this.isNe;
    }
    public void _invalidateIsNe() { this.isNe = null; }
    private byte[] one;
    private byte[] two;
    private ExprBytesCmp _root;
    private KaitaiStruct.ReadWrite _parent;
    public byte[] one() { return one; }
    public void setOne(byte[] _v) { one = _v; }
    public byte[] two() { return two; }
    public void setTwo(byte[] _v) { two = _v; }
    public ExprBytesCmp _root() { return _root; }
    public void set_root(ExprBytesCmp _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
