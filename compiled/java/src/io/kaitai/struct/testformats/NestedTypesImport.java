// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class NestedTypesImport extends KaitaiStruct {
    public static NestedTypesImport fromFile(String fileName) throws IOException {
        return new NestedTypesImport(new ByteBufferKaitaiStream(fileName));
    }

    public NestedTypesImport(KaitaiStream _io) {
        this(_io, null, null);
    }

    public NestedTypesImport(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public NestedTypesImport(KaitaiStream _io, KaitaiStruct _parent, NestedTypesImport _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.aCc = new NestedTypes3.SubtypeA.SubtypeCc(this._io);
        this.aCD = new NestedTypes3.SubtypeA.SubtypeC.SubtypeD(this._io);
        this.b = new NestedTypes3.SubtypeB(this._io);
    }

    public void _fetchInstances() {
        this.aCc._fetchInstances();
        this.aCD._fetchInstances();
        this.b._fetchInstances();
    }
    public NestedTypes3.SubtypeA.SubtypeCc aCc() { return aCc; }
    public NestedTypes3.SubtypeA.SubtypeC.SubtypeD aCD() { return aCD; }
    public NestedTypes3.SubtypeB b() { return b; }
    public NestedTypesImport _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private NestedTypes3.SubtypeA.SubtypeCc aCc;
    private NestedTypes3.SubtypeA.SubtypeC.SubtypeD aCD;
    private NestedTypes3.SubtypeB b;
    private NestedTypesImport _root;
    private KaitaiStruct _parent;
}
