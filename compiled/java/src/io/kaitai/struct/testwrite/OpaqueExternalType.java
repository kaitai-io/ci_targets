// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class OpaqueExternalType extends KaitaiStruct.ReadWrite {
    public static OpaqueExternalType fromFile(String fileName) throws IOException {
        return new OpaqueExternalType(new ByteBufferKaitaiStream(fileName));
    }
    public OpaqueExternalType() {
        this(null, null, null);
    }

    public OpaqueExternalType(KaitaiStream _io) {
        this(_io, null, null);
    }

    public OpaqueExternalType(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public OpaqueExternalType(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, OpaqueExternalType _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.hw = new HelloWorld(this._io);
        this.hw._read();
    }

    public void _fetchInstances() {
        this.hw._fetchInstances();
    }

    public void _write_Seq() {
        this.hw._write_Seq(this._io);
    }

    public void _check() {
    }
    private HelloWorld hw;
    private OpaqueExternalType _root;
    private KaitaiStruct.ReadWrite _parent;
    public HelloWorld hw() { return hw; }
    public void setHw(HelloWorld _v) { hw = _v; }
    public OpaqueExternalType _root() { return _root; }
    public void set_root(OpaqueExternalType _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
