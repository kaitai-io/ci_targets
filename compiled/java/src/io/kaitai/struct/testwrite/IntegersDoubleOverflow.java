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
        _dirty = false;
    }

    public void _fetchInstances() {
        unsignedSafeMaxBe();
        if (this.unsignedSafeMaxBe != null) {
        }
        unsignedSafeMaxLe();
        if (this.unsignedSafeMaxLe != null) {
        }
        unsignedUnsafePosBe();
        if (this.unsignedUnsafePosBe != null) {
        }
        unsignedUnsafePosLe();
        if (this.unsignedUnsafePosLe != null) {
        }
    }

    public void _write_Seq() {
        _assertNotDirty();
        _shouldWriteUnsignedSafeMaxBe = _enabledUnsignedSafeMaxBe;
        _shouldWriteUnsignedSafeMaxLe = _enabledUnsignedSafeMaxLe;
        _shouldWriteUnsignedUnsafePosBe = _enabledUnsignedUnsafePosBe;
        _shouldWriteUnsignedUnsafePosLe = _enabledUnsignedUnsafePosLe;
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
        if (_enabledUnsignedSafeMaxBe) {
        }
        if (_enabledUnsignedSafeMaxLe) {
        }
        if (_enabledUnsignedUnsafePosBe) {
        }
        if (_enabledUnsignedUnsafePosLe) {
        }
        _dirty = false;
    }
    private Long unsignedSafeMaxBe;
    private boolean _shouldWriteUnsignedSafeMaxBe = false;
    private boolean _enabledUnsignedSafeMaxBe = true;
    public Long unsignedSafeMaxBe() {
        if (_shouldWriteUnsignedSafeMaxBe)
            _writeUnsignedSafeMaxBe();
        if (this.unsignedSafeMaxBe != null)
            return this.unsignedSafeMaxBe;
        if (!_enabledUnsignedSafeMaxBe)
            return null;
        long _pos = this._io.pos();
        this._io.seek(16);
        this.unsignedSafeMaxBe = this._io.readU8be();
        this._io.seek(_pos);
        return this.unsignedSafeMaxBe;
    }
    public void setUnsignedSafeMaxBe(long _v) { _dirty = true; unsignedSafeMaxBe = _v; }
    public void setUnsignedSafeMaxBe_Enabled(boolean _v) { _dirty = true; _enabledUnsignedSafeMaxBe = _v; }

    private void _writeUnsignedSafeMaxBe() {
        _shouldWriteUnsignedSafeMaxBe = false;
        long _pos = this._io.pos();
        this._io.seek(16);
        this._io.writeU8be(this.unsignedSafeMaxBe);
        this._io.seek(_pos);
    }
    private Long unsignedSafeMaxLe;
    private boolean _shouldWriteUnsignedSafeMaxLe = false;
    private boolean _enabledUnsignedSafeMaxLe = true;
    public Long unsignedSafeMaxLe() {
        if (_shouldWriteUnsignedSafeMaxLe)
            _writeUnsignedSafeMaxLe();
        if (this.unsignedSafeMaxLe != null)
            return this.unsignedSafeMaxLe;
        if (!_enabledUnsignedSafeMaxLe)
            return null;
        long _pos = this._io.pos();
        this._io.seek(24);
        this.unsignedSafeMaxLe = this._io.readU8le();
        this._io.seek(_pos);
        return this.unsignedSafeMaxLe;
    }
    public void setUnsignedSafeMaxLe(long _v) { _dirty = true; unsignedSafeMaxLe = _v; }
    public void setUnsignedSafeMaxLe_Enabled(boolean _v) { _dirty = true; _enabledUnsignedSafeMaxLe = _v; }

    private void _writeUnsignedSafeMaxLe() {
        _shouldWriteUnsignedSafeMaxLe = false;
        long _pos = this._io.pos();
        this._io.seek(24);
        this._io.writeU8le(this.unsignedSafeMaxLe);
        this._io.seek(_pos);
    }
    private Long unsignedUnsafePosBe;
    private boolean _shouldWriteUnsignedUnsafePosBe = false;
    private boolean _enabledUnsignedUnsafePosBe = true;
    public Long unsignedUnsafePosBe() {
        if (_shouldWriteUnsignedUnsafePosBe)
            _writeUnsignedUnsafePosBe();
        if (this.unsignedUnsafePosBe != null)
            return this.unsignedUnsafePosBe;
        if (!_enabledUnsignedUnsafePosBe)
            return null;
        long _pos = this._io.pos();
        this._io.seek(48);
        this.unsignedUnsafePosBe = this._io.readU8be();
        this._io.seek(_pos);
        return this.unsignedUnsafePosBe;
    }
    public void setUnsignedUnsafePosBe(long _v) { _dirty = true; unsignedUnsafePosBe = _v; }
    public void setUnsignedUnsafePosBe_Enabled(boolean _v) { _dirty = true; _enabledUnsignedUnsafePosBe = _v; }

    private void _writeUnsignedUnsafePosBe() {
        _shouldWriteUnsignedUnsafePosBe = false;
        long _pos = this._io.pos();
        this._io.seek(48);
        this._io.writeU8be(this.unsignedUnsafePosBe);
        this._io.seek(_pos);
    }
    private Long unsignedUnsafePosLe;
    private boolean _shouldWriteUnsignedUnsafePosLe = false;
    private boolean _enabledUnsignedUnsafePosLe = true;
    public Long unsignedUnsafePosLe() {
        if (_shouldWriteUnsignedUnsafePosLe)
            _writeUnsignedUnsafePosLe();
        if (this.unsignedUnsafePosLe != null)
            return this.unsignedUnsafePosLe;
        if (!_enabledUnsignedUnsafePosLe)
            return null;
        long _pos = this._io.pos();
        this._io.seek(56);
        this.unsignedUnsafePosLe = this._io.readU8le();
        this._io.seek(_pos);
        return this.unsignedUnsafePosLe;
    }
    public void setUnsignedUnsafePosLe(long _v) { _dirty = true; unsignedUnsafePosLe = _v; }
    public void setUnsignedUnsafePosLe_Enabled(boolean _v) { _dirty = true; _enabledUnsignedUnsafePosLe = _v; }

    private void _writeUnsignedUnsafePosLe() {
        _shouldWriteUnsignedUnsafePosLe = false;
        long _pos = this._io.pos();
        this._io.seek(56);
        this._io.writeU8le(this.unsignedUnsafePosLe);
        this._io.seek(_pos);
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
    public void setSignedSafeMinBe(long _v) { _dirty = true; signedSafeMinBe = _v; }
    public long signedSafeMinLe() { return signedSafeMinLe; }
    public void setSignedSafeMinLe(long _v) { _dirty = true; signedSafeMinLe = _v; }
    public long signedSafeMaxBe() { return signedSafeMaxBe; }
    public void setSignedSafeMaxBe(long _v) { _dirty = true; signedSafeMaxBe = _v; }
    public long signedSafeMaxLe() { return signedSafeMaxLe; }
    public void setSignedSafeMaxLe(long _v) { _dirty = true; signedSafeMaxLe = _v; }
    public long signedUnsafeNegBe() { return signedUnsafeNegBe; }
    public void setSignedUnsafeNegBe(long _v) { _dirty = true; signedUnsafeNegBe = _v; }
    public long signedUnsafeNegLe() { return signedUnsafeNegLe; }
    public void setSignedUnsafeNegLe(long _v) { _dirty = true; signedUnsafeNegLe = _v; }
    public long signedUnsafePosBe() { return signedUnsafePosBe; }
    public void setSignedUnsafePosBe(long _v) { _dirty = true; signedUnsafePosBe = _v; }
    public long signedUnsafePosLe() { return signedUnsafePosLe; }
    public void setSignedUnsafePosLe(long _v) { _dirty = true; signedUnsafePosLe = _v; }
    public IntegersDoubleOverflow _root() { return _root; }
    public void set_root(IntegersDoubleOverflow _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
