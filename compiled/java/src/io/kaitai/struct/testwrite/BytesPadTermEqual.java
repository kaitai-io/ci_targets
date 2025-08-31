// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import io.kaitai.struct.ConsistencyError;

public class BytesPadTermEqual extends KaitaiStruct.ReadWrite {
    public static BytesPadTermEqual fromFile(String fileName) throws IOException {
        return new BytesPadTermEqual(new ByteBufferKaitaiStream(fileName));
    }
    public BytesPadTermEqual() {
        this(null, null, null);
    }

    public BytesPadTermEqual(KaitaiStream _io) {
        this(_io, null, null);
    }

    public BytesPadTermEqual(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public BytesPadTermEqual(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, BytesPadTermEqual _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.s1 = KaitaiStream.bytesTerminate(this._io.readBytes(20), (byte) 64, false);
        this.s2 = KaitaiStream.bytesTerminate(KaitaiStream.bytesStripRight(this._io.readBytes(20), (byte) 43), (byte) 64, true);
        this.s3 = KaitaiStream.bytesTerminate(this._io.readBytes(20), (byte) 43, false);
        this.s4 = KaitaiStream.bytesTerminate(this._io.readBytes(20), (byte) 46, true);
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        this._io.writeBytesLimit(this.s1, 20, (byte) 64, (byte) 64);
        this._io.writeBytesLimit(this.s2, 20, (byte) 43, (byte) 43);
        this._io.writeBytesLimit(this.s3, 20, (byte) 43, (byte) 43);
        this._io.writeBytesLimit(this.s4, 20, (byte) 46, (byte) 46);
    }

    public void _check() {
        if (this.s1.length > 20)
            throw new ConsistencyError("s1", this.s1.length, 20);
        if (KaitaiStream.byteArrayIndexOf(this.s1, ((byte) 64)) != -1)
            throw new ConsistencyError("s1", KaitaiStream.byteArrayIndexOf(this.s1, ((byte) 64)), -1);
        if (this.s2.length > 20)
            throw new ConsistencyError("s2", this.s2.length, 20);
        if ( ((KaitaiStream.byteArrayIndexOf(this.s2, ((byte) 64)) != -1) && (KaitaiStream.byteArrayIndexOf(this.s2, ((byte) 64)) != this.s2.length - 1)) )
            throw new ConsistencyError("s2", KaitaiStream.byteArrayIndexOf(this.s2, ((byte) 64)), this.s2.length - 1);
        if (KaitaiStream.byteArrayIndexOf(this.s2, ((byte) 64)) == -1) {
            if ( ((this.s2.length != 0) && ((this.s2[((Number) (this.s2.length - 1)).intValue()] & 0xff) == 43)) )
                throw new ConsistencyError("s2", (this.s2[((Number) (this.s2.length - 1)).intValue()] & 0xff), 43);
        }
        if (this.s3.length > 20)
            throw new ConsistencyError("s3", this.s3.length, 20);
        if (KaitaiStream.byteArrayIndexOf(this.s3, ((byte) 43)) != -1)
            throw new ConsistencyError("s3", KaitaiStream.byteArrayIndexOf(this.s3, ((byte) 43)), -1);
        if (this.s4.length > 20)
            throw new ConsistencyError("s4", this.s4.length, 20);
        if (this.s4.length < 20) {
            if (this.s4.length == 0)
                throw new ConsistencyError("s4", this.s4.length, 0);
            if (KaitaiStream.byteArrayIndexOf(this.s4, ((byte) 46)) != this.s4.length - 1)
                throw new ConsistencyError("s4", KaitaiStream.byteArrayIndexOf(this.s4, ((byte) 46)), this.s4.length - 1);
        }
        if (this.s4.length == 20) {
            if ( ((KaitaiStream.byteArrayIndexOf(this.s4, ((byte) 46)) != -1) && (KaitaiStream.byteArrayIndexOf(this.s4, ((byte) 46)) != this.s4.length - 1)) )
                throw new ConsistencyError("s4", KaitaiStream.byteArrayIndexOf(this.s4, ((byte) 46)), this.s4.length - 1);
        }
    }
    private byte[] s1;
    private byte[] s2;
    private byte[] s3;
    private byte[] s4;
    private BytesPadTermEqual _root;
    private KaitaiStruct.ReadWrite _parent;
    public byte[] s1() { return s1; }
    public void setS1(byte[] _v) { s1 = _v; }
    public byte[] s2() { return s2; }
    public void setS2(byte[] _v) { s2 = _v; }
    public byte[] s3() { return s3; }
    public void setS3(byte[] _v) { s3 = _v; }
    public byte[] s4() { return s4; }
    public void setS4(byte[] _v) { s4 = _v; }
    public BytesPadTermEqual _root() { return _root; }
    public void set_root(BytesPadTermEqual _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
