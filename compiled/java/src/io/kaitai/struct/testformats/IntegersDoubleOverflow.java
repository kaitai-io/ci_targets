// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class IntegersDoubleOverflow extends KaitaiStruct {
    public static IntegersDoubleOverflow fromFile(String fileName) throws IOException {
        return new IntegersDoubleOverflow(new ByteBufferKaitaiStream(fileName));
    }

    public IntegersDoubleOverflow(KaitaiStream _io) {
        this(_io, null, null);
    }

    public IntegersDoubleOverflow(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public IntegersDoubleOverflow(KaitaiStream _io, KaitaiStruct _parent, IntegersDoubleOverflow _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.signedSafeMinBe = this._io.readS8be();
        this.signedSafeMinLe = this._io.readS8le();
        this.signedSafeMaxBe = this._io.readS8be();
        this.signedSafeMaxLe = this._io.readS8le();
        this.signedUnsafeNegBe = this._io.readS8be();
        this.signedUnsafeNegLe = this._io.readS8le();
        this.signedUnsafePosBe = this._io.readS8be();
        this.signedUnsafePosLe = this._io.readS8le();
    }

    public void _fetchInstances() {
        unsignedSafeMaxBe();
        unsignedSafeMaxLe();
        unsignedUnsafePosBe();
        unsignedUnsafePosLe();
    }
    private Long unsignedSafeMaxBe;
    public Long unsignedSafeMaxBe() {
        if (this.unsignedSafeMaxBe != null)
            return this.unsignedSafeMaxBe;
        long _pos = this._io.pos();
        this._io.seek(16);
        this.unsignedSafeMaxBe = this._io.readU8be();
        this._io.seek(_pos);
        return this.unsignedSafeMaxBe;
    }
    private Long unsignedSafeMaxLe;
    public Long unsignedSafeMaxLe() {
        if (this.unsignedSafeMaxLe != null)
            return this.unsignedSafeMaxLe;
        long _pos = this._io.pos();
        this._io.seek(24);
        this.unsignedSafeMaxLe = this._io.readU8le();
        this._io.seek(_pos);
        return this.unsignedSafeMaxLe;
    }
    private Long unsignedUnsafePosBe;
    public Long unsignedUnsafePosBe() {
        if (this.unsignedUnsafePosBe != null)
            return this.unsignedUnsafePosBe;
        long _pos = this._io.pos();
        this._io.seek(48);
        this.unsignedUnsafePosBe = this._io.readU8be();
        this._io.seek(_pos);
        return this.unsignedUnsafePosBe;
    }
    private Long unsignedUnsafePosLe;
    public Long unsignedUnsafePosLe() {
        if (this.unsignedUnsafePosLe != null)
            return this.unsignedUnsafePosLe;
        long _pos = this._io.pos();
        this._io.seek(56);
        this.unsignedUnsafePosLe = this._io.readU8le();
        this._io.seek(_pos);
        return this.unsignedUnsafePosLe;
    }
    private long signedSafeMinBe;
    private long signedSafeMinLe;
    private long signedSafeMaxBe;
    private long signedSafeMaxLe;
    private long signedUnsafeNegBe;
    private long signedUnsafeNegLe;
    private long signedUnsafePosBe;
    private long signedUnsafePosLe;
    private IntegersDoubleOverflow _root;
    private KaitaiStruct _parent;
    public long signedSafeMinBe() { return signedSafeMinBe; }
    public long signedSafeMinLe() { return signedSafeMinLe; }
    public long signedSafeMaxBe() { return signedSafeMaxBe; }
    public long signedSafeMaxLe() { return signedSafeMaxLe; }
    public long signedUnsafeNegBe() { return signedUnsafeNegBe; }
    public long signedUnsafeNegLe() { return signedUnsafeNegLe; }
    public long signedUnsafePosBe() { return signedUnsafePosBe; }
    public long signedUnsafePosLe() { return signedUnsafePosLe; }
    public IntegersDoubleOverflow _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
