// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ImportsAbsRel extends KaitaiStruct {
    public static ImportsAbsRel fromFile(String fileName) throws IOException {
        return new ImportsAbsRel(new ByteBufferKaitaiStream(fileName));
    }

    public ImportsAbsRel(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ImportsAbsRel(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ImportsAbsRel(KaitaiStream _io, KaitaiStruct _parent, ImportsAbsRel _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.one = this._io.readU1();
        this.two = new ImportedAndRel(this._io);
    }

    public void _fetchInstances() {
        this.two._fetchInstances();
    }
    private int one;
    private ImportedAndRel two;
    private ImportsAbsRel _root;
    private KaitaiStruct _parent;
    public int one() { return one; }
    public ImportedAndRel two() { return two; }
    public ImportsAbsRel _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
