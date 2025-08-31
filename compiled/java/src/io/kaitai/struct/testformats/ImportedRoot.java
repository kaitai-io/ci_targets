// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ImportedRoot extends KaitaiStruct {
    public static ImportedRoot fromFile(String fileName) throws IOException {
        return new ImportedRoot(new ByteBufferKaitaiStream(fileName));
    }

    public ImportedRoot(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ImportedRoot(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ImportedRoot(KaitaiStream _io, KaitaiStruct _parent, ImportedRoot _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.one = this._io.readU1();
    }

    public void _fetchInstances() {
    }
    private int one;
    private ImportedRoot _root;
    private KaitaiStruct _parent;
    public int one() { return one; }
    public ImportedRoot _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
