// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class CastToImported2 extends KaitaiStruct.ReadWrite {
    public CastToImported2(KaitaiStruct.ReadWrite hwParam) {
        this(null, null, null, hwParam);
    }

    public CastToImported2(KaitaiStream _io, KaitaiStruct.ReadWrite hwParam) {
        this(_io, null, null, hwParam);
    }

    public CastToImported2(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, KaitaiStruct.ReadWrite hwParam) {
        this(_io, _parent, null, hwParam);
    }

    public CastToImported2(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, CastToImported2 _root, KaitaiStruct.ReadWrite hwParam) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        this.hwParam = hwParam;
    }
    public void _read() {
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
    }

    public void _check() {
    }
    private HelloWorld hw;
    public HelloWorld hw() {
        if (this.hw != null)
            return this.hw;
        this.hw = ((HelloWorld) (hwParam()));
        return this.hw;
    }
    public void _invalidateHw() { this.hw = null; }
    private KaitaiStruct.ReadWrite hwParam;
    private CastToImported2 _root;
    private KaitaiStruct.ReadWrite _parent;
    public KaitaiStruct.ReadWrite hwParam() { return hwParam; }
    public void setHwParam(KaitaiStruct.ReadWrite _v) { hwParam = _v; }
    public CastToImported2 _root() { return _root; }
    public void set_root(CastToImported2 _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
