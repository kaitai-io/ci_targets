// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class NestedTypesImport extends KaitaiStruct.ReadWrite {
    public static NestedTypesImport fromFile(String fileName) throws IOException {
        return new NestedTypesImport(new ByteBufferKaitaiStream(fileName));
    }
    public NestedTypesImport() {
        this(null, null, null);
    }

    public NestedTypesImport(KaitaiStream _io) {
        this(_io, null, null);
    }

    public NestedTypesImport(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public NestedTypesImport(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, NestedTypesImport _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.aCc = new NestedTypes3.SubtypeA.SubtypeCc(this._io);
        this.aCc._read();
        this.aCD = new NestedTypes3.SubtypeA.SubtypeC.SubtypeD(this._io);
        this.aCD._read();
        this.b = new NestedTypes3.SubtypeB(this._io);
        this.b._read();
        _dirty = false;
    }

    public void _fetchInstances() {
        this.aCc._fetchInstances();
        this.aCD._fetchInstances();
        this.b._fetchInstances();
    }

    public void _write_Seq() {
        _assertNotDirty();
        this.aCc._write_Seq(this._io);
        this.aCD._write_Seq(this._io);
        this.b._write_Seq(this._io);
    }

    public void _check() {
        _dirty = false;
    }
    private NestedTypes3.SubtypeA.SubtypeCc aCc;
    private NestedTypes3.SubtypeA.SubtypeC.SubtypeD aCD;
    private NestedTypes3.SubtypeB b;
    private NestedTypesImport _root;
    private KaitaiStruct.ReadWrite _parent;
    public NestedTypes3.SubtypeA.SubtypeCc aCc() { return aCc; }
    public void setACc(NestedTypes3.SubtypeA.SubtypeCc _v) { _dirty = true; aCc = _v; }
    public NestedTypes3.SubtypeA.SubtypeC.SubtypeD aCD() { return aCD; }
    public void setACD(NestedTypes3.SubtypeA.SubtypeC.SubtypeD _v) { _dirty = true; aCD = _v; }
    public NestedTypes3.SubtypeB b() { return b; }
    public void setB(NestedTypes3.SubtypeB _v) { _dirty = true; b = _v; }
    public NestedTypesImport _root() { return _root; }
    public void set_root(NestedTypesImport _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
