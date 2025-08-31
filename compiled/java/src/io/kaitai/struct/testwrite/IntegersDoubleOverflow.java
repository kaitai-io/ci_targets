// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class IntegersDoubleOverflow extends KaitaiStruct.ReadWrite {
    public static IntegersDoubleOverflow fromFile(String fileName) throws IOException {
        return new IntegersDoubleOverflow(new ByteBufferKaitaiStream(fileName));
    }
    public IntegersDoubleOverflow() {
        this(null, null, null);
    }

    public IntegersDoubleOverflow(KaitaiStream _io) {
        this(_io, null, null);
    }

    public IntegersDoubleOverflow(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public IntegersDoubleOverflow(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, IntegersDoubleOverflow _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
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

    public void _write_Seq() {
        _writeUnsignedSafeMaxBe = _toWriteUnsignedSafeMaxBe;
        _writeUnsignedSafeMaxLe = _toWriteUnsignedSafeMaxLe;
        _writeUnsignedUnsafePosBe = _toWriteUnsignedUnsafePosBe;
        _writeUnsignedUnsafePosLe = _toWriteUnsignedUnsafePosLe;
        this._io.writeS8be(this.signedSafeMinBe);
        this._io.writeS8le(this.signedSafeMinLe);
        this._io.writeS8be(this.signedSafeMaxBe);
        this._io.writeS8le(this.signedSafeMaxLe);
        this._io.writeS8be(this.signedUnsafeNegBe);
        this._io.writeS8le(this.signedUnsafeNegLe);
        this._io.writeS8be(this.signedUnsafePosBe);
        this._io.writeS8le(this.signedUnsafePosLe);
    }

    public void _check() {
    }
    private Long unsignedSafeMaxBe;
    private boolean _writeUnsignedSafeMaxBe = false;
    private boolean _toWriteUnsignedSafeMaxBe = true;
    public Long unsignedSafeMaxBe() {
        if (_writeUnsignedSafeMaxBe)
            _writeUnsignedSafeMaxBe();
        if (this.unsignedSafeMaxBe != null)
            return this.unsignedSafeMaxBe;
        long _pos = this._io.pos();
        this._io.seek(16);
        this.unsignedSafeMaxBe = this._io.readU8be();
        this._io.seek(_pos);
        return this.unsignedSafeMaxBe;
    }
    public void setUnsignedSafeMaxBe(long _v) { unsignedSafeMaxBe = _v; }
    public void setUnsignedSafeMaxBe_ToWrite(boolean _v) { _toWriteUnsignedSafeMaxBe = _v; }

    public void _writeUnsignedSafeMaxBe() {
        _writeUnsignedSafeMaxBe = false;
        long _pos = this._io.pos();
        this._io.seek(16);
        this._io.writeU8be(this.unsignedSafeMaxBe);
        this._io.seek(_pos);
    }

    public void _checkUnsignedSafeMaxBe() {
    }
    private Long unsignedSafeMaxLe;
    private boolean _writeUnsignedSafeMaxLe = false;
    private boolean _toWriteUnsignedSafeMaxLe = true;
    public Long unsignedSafeMaxLe() {
        if (_writeUnsignedSafeMaxLe)
            _writeUnsignedSafeMaxLe();
        if (this.unsignedSafeMaxLe != null)
            return this.unsignedSafeMaxLe;
        long _pos = this._io.pos();
        this._io.seek(24);
        this.unsignedSafeMaxLe = this._io.readU8le();
        this._io.seek(_pos);
        return this.unsignedSafeMaxLe;
    }
    public void setUnsignedSafeMaxLe(long _v) { unsignedSafeMaxLe = _v; }
    public void setUnsignedSafeMaxLe_ToWrite(boolean _v) { _toWriteUnsignedSafeMaxLe = _v; }

    public void _writeUnsignedSafeMaxLe() {
        _writeUnsignedSafeMaxLe = false;
        long _pos = this._io.pos();
        this._io.seek(24);
        this._io.writeU8le(this.unsignedSafeMaxLe);
        this._io.seek(_pos);
    }

    public void _checkUnsignedSafeMaxLe() {
    }
    private Long unsignedUnsafePosBe;
    private boolean _writeUnsignedUnsafePosBe = false;
    private boolean _toWriteUnsignedUnsafePosBe = true;
    public Long unsignedUnsafePosBe() {
        if (_writeUnsignedUnsafePosBe)
            _writeUnsignedUnsafePosBe();
        if (this.unsignedUnsafePosBe != null)
            return this.unsignedUnsafePosBe;
        long _pos = this._io.pos();
        this._io.seek(48);
        this.unsignedUnsafePosBe = this._io.readU8be();
        this._io.seek(_pos);
        return this.unsignedUnsafePosBe;
    }
    public void setUnsignedUnsafePosBe(long _v) { unsignedUnsafePosBe = _v; }
    public void setUnsignedUnsafePosBe_ToWrite(boolean _v) { _toWriteUnsignedUnsafePosBe = _v; }

    public void _writeUnsignedUnsafePosBe() {
        _writeUnsignedUnsafePosBe = false;
        long _pos = this._io.pos();
        this._io.seek(48);
        this._io.writeU8be(this.unsignedUnsafePosBe);
        this._io.seek(_pos);
    }

    public void _checkUnsignedUnsafePosBe() {
    }
    private Long unsignedUnsafePosLe;
    private boolean _writeUnsignedUnsafePosLe = false;
    private boolean _toWriteUnsignedUnsafePosLe = true;
    public Long unsignedUnsafePosLe() {
        if (_writeUnsignedUnsafePosLe)
            _writeUnsignedUnsafePosLe();
        if (this.unsignedUnsafePosLe != null)
            return this.unsignedUnsafePosLe;
        long _pos = this._io.pos();
        this._io.seek(56);
        this.unsignedUnsafePosLe = this._io.readU8le();
        this._io.seek(_pos);
        return this.unsignedUnsafePosLe;
    }
    public void setUnsignedUnsafePosLe(long _v) { unsignedUnsafePosLe = _v; }
    public void setUnsignedUnsafePosLe_ToWrite(boolean _v) { _toWriteUnsignedUnsafePosLe = _v; }

    public void _writeUnsignedUnsafePosLe() {
        _writeUnsignedUnsafePosLe = false;
        long _pos = this._io.pos();
        this._io.seek(56);
        this._io.writeU8le(this.unsignedUnsafePosLe);
        this._io.seek(_pos);
    }

    public void _checkUnsignedUnsafePosLe() {
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
    private KaitaiStruct.ReadWrite _parent;
    public long signedSafeMinBe() { return signedSafeMinBe; }
    public void setSignedSafeMinBe(long _v) { signedSafeMinBe = _v; }
    public long signedSafeMinLe() { return signedSafeMinLe; }
    public void setSignedSafeMinLe(long _v) { signedSafeMinLe = _v; }
    public long signedSafeMaxBe() { return signedSafeMaxBe; }
    public void setSignedSafeMaxBe(long _v) { signedSafeMaxBe = _v; }
    public long signedSafeMaxLe() { return signedSafeMaxLe; }
    public void setSignedSafeMaxLe(long _v) { signedSafeMaxLe = _v; }
    public long signedUnsafeNegBe() { return signedUnsafeNegBe; }
    public void setSignedUnsafeNegBe(long _v) { signedUnsafeNegBe = _v; }
    public long signedUnsafeNegLe() { return signedUnsafeNegLe; }
    public void setSignedUnsafeNegLe(long _v) { signedUnsafeNegLe = _v; }
    public long signedUnsafePosBe() { return signedUnsafePosBe; }
    public void setSignedUnsafePosBe(long _v) { signedUnsafePosBe = _v; }
    public long signedUnsafePosLe() { return signedUnsafePosLe; }
    public void setSignedUnsafePosLe(long _v) { signedUnsafePosLe = _v; }
    public IntegersDoubleOverflow _root() { return _root; }
    public void set_root(IntegersDoubleOverflow _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
