// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ImportsAbsAbs extends KaitaiStruct {
    public static ImportsAbsAbs fromFile(String fileName) throws IOException {
        return new ImportsAbsAbs(new ByteBufferKaitaiStream(fileName));
    }

    public ImportsAbsAbs(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ImportsAbsAbs(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ImportsAbsAbs(KaitaiStream _io, KaitaiStruct _parent, ImportsAbsAbs _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.one = this._io.readU1();
        this.two = new ImportedAndAbs(this._io);
    }

    public void _fetchInstances() {
        this.two._fetchInstances();
    }
    public int one() { return one; }
    public ImportedAndAbs two() { return two; }
    public ImportsAbsAbs _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private int one;
    private ImportedAndAbs two;
    private ImportsAbsAbs _root;
    private KaitaiStruct _parent;
}
