// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Objects;
import io.kaitai.struct.ConsistencyError;

public class CastToTop extends KaitaiStruct.ReadWrite {
    public static CastToTop fromFile(String fileName) throws IOException {
        return new CastToTop(new ByteBufferKaitaiStream(fileName));
    }
    public CastToTop() {
        this(null, null, null);
    }

    public CastToTop(KaitaiStream _io) {
        this(_io, null, null);
    }

    public CastToTop(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public CastToTop(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, CastToTop _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.code = this._io.readU1();
        _dirty = false;
    }

    public void _fetchInstances() {
        header();
        if (this.header != null) {
            this.header._fetchInstances();
        }
    }

    public void _write_Seq() {
        _assertNotDirty();
        _shouldWriteHeader = _enabledHeader;
        this._io.writeU1(this.code);
    }

    public void _check() {
        if (_enabledHeader) {
            if (!Objects.equals(this.header._root(), _root()))
                throw new ConsistencyError("header", _root(), this.header._root());
            if (!Objects.equals(this.header._parent(), this))
                throw new ConsistencyError("header", this, this.header._parent());
        }
        _dirty = false;
    }
    private CastToTop header;
    private boolean _shouldWriteHeader = false;
    private boolean _enabledHeader = true;
    public CastToTop header() {
        if (_shouldWriteHeader)
            _writeHeader();
        if (this.header != null)
            return this.header;
        if (!_enabledHeader)
            return null;
        long _pos = this._io.pos();
        this._io.seek(1);
        this.header = new CastToTop(this._io, this, _root);
        this.header._read();
        this._io.seek(_pos);
        return this.header;
    }
    public void setHeader(CastToTop _v) { _dirty = true; header = _v; }
    public void setHeader_Enabled(boolean _v) { _dirty = true; _enabledHeader = _v; }

    private void _writeHeader() {
        _shouldWriteHeader = false;
        long _pos = this._io.pos();
        this._io.seek(1);
        this.header._write_Seq(this._io);
        this._io.seek(_pos);
    }
    private CastToTop headerCasted;
    public CastToTop headerCasted() {
        if (this.headerCasted != null)
            return this.headerCasted;
        this.headerCasted = ((CastToTop) (header()));
        return this.headerCasted;
    }
    public void _invalidateHeaderCasted() { this.headerCasted = null; }
    private int code;
    private CastToTop _root;
    private KaitaiStruct.ReadWrite _parent;
    public int code() { return code; }
    public void setCode(int _v) { _dirty = true; code = _v; }
    public CastToTop _root() { return _root; }
    public void set_root(CastToTop _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
