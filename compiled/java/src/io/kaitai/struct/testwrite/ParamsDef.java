// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.charset.Charset;
import io.kaitai.struct.ConsistencyError;

public class ParamsDef extends KaitaiStruct.ReadWrite {
    public ParamsDef(long len, boolean hasTrailer) {
        this(null, null, null, len, hasTrailer);
    }

    public ParamsDef(KaitaiStream _io, long len, boolean hasTrailer) {
        this(_io, null, null, len, hasTrailer);
    }

    public ParamsDef(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, long len, boolean hasTrailer) {
        this(_io, _parent, null, len, hasTrailer);
    }

    public ParamsDef(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ParamsDef _root, long len, boolean hasTrailer) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        this.len = len;
        this.hasTrailer = hasTrailer;
    }
    public void _read() {
        this.buf = new String(this._io.readBytes(len()), StandardCharsets.UTF_8);
        if (hasTrailer()) {
            this.trailer = this._io.readU1();
        }
    }

    public void _fetchInstances() {
        if (hasTrailer()) {
        }
    }

    public void _write_Seq() {
        this._io.writeBytes((this.buf).getBytes(Charset.forName("UTF-8")));
        if (hasTrailer()) {
            this._io.writeU1(this.trailer);
        }
    }

    public void _check() {
        if ((this.buf).getBytes(Charset.forName("UTF-8")).length != len())
            throw new ConsistencyError("buf", (this.buf).getBytes(Charset.forName("UTF-8")).length, len());
        if (hasTrailer()) {
        }
    }
    private String buf;
    private Integer trailer;
    private long len;
    private boolean hasTrailer;
    private ParamsDef _root;
    private KaitaiStruct.ReadWrite _parent;
    public String buf() { return buf; }
    public void setBuf(String _v) { buf = _v; }
    public Integer trailer() { return trailer; }
    public void setTrailer(Integer _v) { trailer = _v; }
    public long len() { return len; }
    public void setLen(long _v) { len = _v; }
    public boolean hasTrailer() { return hasTrailer; }
    public void setHasTrailer(boolean _v) { hasTrailer = _v; }
    public ParamsDef _root() { return _root; }
    public void set_root(ParamsDef _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
