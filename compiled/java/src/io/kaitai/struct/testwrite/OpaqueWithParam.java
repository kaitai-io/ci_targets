// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class OpaqueWithParam extends KaitaiStruct.ReadWrite {
    public static OpaqueWithParam fromFile(String fileName) throws IOException {
        return new OpaqueWithParam(new ByteBufferKaitaiStream(fileName));
    }
    public OpaqueWithParam() {
        this(null, null, null);
    }

    public OpaqueWithParam(KaitaiStream _io) {
        this(_io, null, null);
    }

    public OpaqueWithParam(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public OpaqueWithParam(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, OpaqueWithParam _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.one = new ParamsDef(this._io, 5, true);
        this.one._read();
        _dirty = false;
    }

    public void _fetchInstances() {
        this.one._fetchInstances();
    }

    public void _write_Seq() {
        _assertNotDirty();
        this.one._write_Seq(this._io);
    }

    public void _check() {
        _dirty = false;
    }
    public ParamsDef one() { return one; }
    public void setOne(ParamsDef _v) { _dirty = true; one = _v; }
    public OpaqueWithParam _root() { return _root; }
    public void set_root(OpaqueWithParam _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    private ParamsDef one;
    private OpaqueWithParam _root;
    private KaitaiStruct.ReadWrite _parent;
}
