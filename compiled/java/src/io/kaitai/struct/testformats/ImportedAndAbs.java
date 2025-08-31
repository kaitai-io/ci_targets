// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ImportedAndAbs extends KaitaiStruct {
    public static ImportedAndAbs fromFile(String fileName) throws IOException {
        return new ImportedAndAbs(new ByteBufferKaitaiStream(fileName));
    }

    public ImportedAndAbs(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ImportedAndAbs(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ImportedAndAbs(KaitaiStream _io, KaitaiStruct _parent, ImportedAndAbs _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.one = this._io.readU1();
        this.two = new ImportedRoot(this._io);
    }

    public void _fetchInstances() {
        this.two._fetchInstances();
    }
    private int one;
    private ImportedRoot two;
    private ImportedAndAbs _root;
    private KaitaiStruct _parent;
    public int one() { return one; }
    public ImportedRoot two() { return two; }
    public ImportedAndAbs _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
