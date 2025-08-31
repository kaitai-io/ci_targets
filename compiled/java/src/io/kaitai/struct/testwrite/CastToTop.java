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
    }

    public void _fetchInstances() {
        header();
        this.header._fetchInstances();
    }

    public void _write_Seq() {
        _writeHeader = _toWriteHeader;
        this._io.writeU1(this.code);
    }

    public void _check() {
    }
    private CastToTop header;
    private boolean _writeHeader = false;
    private boolean _toWriteHeader = true;
    public CastToTop header() {
        if (_writeHeader)
            _writeHeader();
        if (this.header != null)
            return this.header;
        long _pos = this._io.pos();
        this._io.seek(1);
        this.header = new CastToTop(this._io, this, _root);
        this.header._read();
        this._io.seek(_pos);
        return this.header;
    }
    public void setHeader(CastToTop _v) { header = _v; }
    public void setHeader_ToWrite(boolean _v) { _toWriteHeader = _v; }

    public void _writeHeader() {
        _writeHeader = false;
        long _pos = this._io.pos();
        this._io.seek(1);
        this.header._write_Seq(this._io);
        this._io.seek(_pos);
    }

    public void _checkHeader() {
        if (!Objects.equals(this.header._root(), _root()))
            throw new ConsistencyError("header", this.header._root(), _root());
        if (!Objects.equals(this.header._parent(), this))
            throw new ConsistencyError("header", this.header._parent(), this);
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
    public void setCode(int _v) { code = _v; }
    public CastToTop _root() { return _root; }
    public void set_root(CastToTop _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
