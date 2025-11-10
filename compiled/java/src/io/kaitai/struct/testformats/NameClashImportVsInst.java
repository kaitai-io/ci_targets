// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class NameClashImportVsInst extends KaitaiStruct {
    public static NameClashImportVsInst fromFile(String fileName) throws IOException {
        return new NameClashImportVsInst(new ByteBufferKaitaiStream(fileName));
    }

    public NameClashImportVsInst(KaitaiStream _io) {
        this(_io, null, null);
    }

    public NameClashImportVsInst(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public NameClashImportVsInst(KaitaiStream _io, KaitaiStruct _parent, NameClashImportVsInst _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
    }

    public void _fetchInstances() {
        integers();
        if (this.integers != null) {
            this.integers._fetchInstances();
        }
    }
    public Integers integers() {
        if (this.integers != null)
            return this.integers;
        long _pos = this._io.pos();
        this._io.seek(0);
        this.integers = new Integers(this._io);
        this._io.seek(_pos);
        return this.integers;
    }
    public Integer std() {
        if (this.std != null)
            return this.std;
        this.std = ((Number) (1 + 2)).intValue();
        return this.std;
    }
    public NameClashImportVsInst _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private Integers integers;
    private Integer std;
    private NameClashImportVsInst _root;
    private KaitaiStruct _parent;
}
