// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Arrays;

public class ExprBytesCmp extends KaitaiStruct {
    public static ExprBytesCmp fromFile(String fileName) throws IOException {
        return new ExprBytesCmp(new ByteBufferKaitaiStream(fileName));
    }

    public ExprBytesCmp(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ExprBytesCmp(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ExprBytesCmp(KaitaiStream _io, KaitaiStruct _parent, ExprBytesCmp _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.one = this._io.readBytes(1);
        this.two = this._io.readBytes(3);
    }

    public void _fetchInstances() {
    }
    private byte[] ack;
    public byte[] ack() {
        if (this.ack != null)
            return this.ack;
        this.ack = new byte[] { 65, 67, 75 };
        return this.ack;
    }
    private byte[] ack2;
    public byte[] ack2() {
        if (this.ack2 != null)
            return this.ack2;
        this.ack2 = new byte[] { 65, 67, 75, 50 };
        return this.ack2;
    }
    private byte[] hiVal;
    public byte[] hiVal() {
        if (this.hiVal != null)
            return this.hiVal;
        this.hiVal = new byte[] { -112, 67 };
        return this.hiVal;
    }
    private Boolean isEq;
    public Boolean isEq() {
        if (this.isEq != null)
            return this.isEq;
        this.isEq = Arrays.equals(two(), ack());
        return this.isEq;
    }
    private Boolean isGe;
    public Boolean isGe() {
        if (this.isGe != null)
            return this.isGe;
        this.isGe = (KaitaiStream.byteArrayCompare(two(), ack2()) >= 0);
        return this.isGe;
    }
    private Boolean isGt;
    public Boolean isGt() {
        if (this.isGt != null)
            return this.isGt;
        this.isGt = (KaitaiStream.byteArrayCompare(two(), ack2()) > 0);
        return this.isGt;
    }
    private Boolean isGt2;
    public Boolean isGt2() {
        if (this.isGt2 != null)
            return this.isGt2;
        this.isGt2 = (KaitaiStream.byteArrayCompare(hiVal(), two()) > 0);
        return this.isGt2;
    }
    private Boolean isLe;
    public Boolean isLe() {
        if (this.isLe != null)
            return this.isLe;
        this.isLe = (KaitaiStream.byteArrayCompare(two(), ack2()) <= 0);
        return this.isLe;
    }
    private Boolean isLt;
    public Boolean isLt() {
        if (this.isLt != null)
            return this.isLt;
        this.isLt = (KaitaiStream.byteArrayCompare(two(), ack2()) < 0);
        return this.isLt;
    }
    private Boolean isLt2;
    public Boolean isLt2() {
        if (this.isLt2 != null)
            return this.isLt2;
        this.isLt2 = (KaitaiStream.byteArrayCompare(one(), two()) < 0);
        return this.isLt2;
    }
    private Boolean isNe;
    public Boolean isNe() {
        if (this.isNe != null)
            return this.isNe;
        this.isNe = !Arrays.equals(two(), ack());
        return this.isNe;
    }
    private byte[] one;
    private byte[] two;
    private ExprBytesCmp _root;
    private KaitaiStruct _parent;
    public byte[] one() { return one; }
    public byte[] two() { return two; }
    public ExprBytesCmp _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
