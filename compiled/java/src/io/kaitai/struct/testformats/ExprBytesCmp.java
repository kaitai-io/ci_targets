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
    private Boolean isLe;
    public Boolean isLe() {
        if (this.isLe != null)
            return this.isLe;
        boolean _tmp = (boolean) ((KaitaiStream.byteArrayCompare(two(), ack2()) <= 0));
        this.isLe = _tmp;
        return this.isLe;
    }
    private byte[] ack;
    public byte[] ack() {
        if (this.ack != null)
            return this.ack;
        this.ack = new byte[] { 65, 67, 75 };
        return this.ack;
    }
    private Boolean isGt2;
    public Boolean isGt2() {
        if (this.isGt2 != null)
            return this.isGt2;
        boolean _tmp = (boolean) ((KaitaiStream.byteArrayCompare(hiVal(), two()) > 0));
        this.isGt2 = _tmp;
        return this.isGt2;
    }
    private Boolean isGt;
    public Boolean isGt() {
        if (this.isGt != null)
            return this.isGt;
        boolean _tmp = (boolean) ((KaitaiStream.byteArrayCompare(two(), ack2()) > 0));
        this.isGt = _tmp;
        return this.isGt;
    }
    private byte[] ack2;
    public byte[] ack2() {
        if (this.ack2 != null)
            return this.ack2;
        this.ack2 = new byte[] { 65, 67, 75, 50 };
        return this.ack2;
    }
    private Boolean isEq;
    public Boolean isEq() {
        if (this.isEq != null)
            return this.isEq;
        boolean _tmp = (boolean) (Arrays.equals(two(), ack()));
        this.isEq = _tmp;
        return this.isEq;
    }
    private Boolean isLt2;
    public Boolean isLt2() {
        if (this.isLt2 != null)
            return this.isLt2;
        boolean _tmp = (boolean) ((KaitaiStream.byteArrayCompare(one(), two()) < 0));
        this.isLt2 = _tmp;
        return this.isLt2;
    }
    private Boolean isGe;
    public Boolean isGe() {
        if (this.isGe != null)
            return this.isGe;
        boolean _tmp = (boolean) ((KaitaiStream.byteArrayCompare(two(), ack2()) >= 0));
        this.isGe = _tmp;
        return this.isGe;
    }
    private byte[] hiVal;
    public byte[] hiVal() {
        if (this.hiVal != null)
            return this.hiVal;
        this.hiVal = new byte[] { -112, 67 };
        return this.hiVal;
    }
    private Boolean isNe;
    public Boolean isNe() {
        if (this.isNe != null)
            return this.isNe;
        boolean _tmp = (boolean) (!Arrays.equals(two(), ack()));
        this.isNe = _tmp;
        return this.isNe;
    }
    private Boolean isLt;
    public Boolean isLt() {
        if (this.isLt != null)
            return this.isLt;
        boolean _tmp = (boolean) ((KaitaiStream.byteArrayCompare(two(), ack2()) < 0));
        this.isLt = _tmp;
        return this.isLt;
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
