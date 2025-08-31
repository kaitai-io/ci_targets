// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ImportsCastToImported extends KaitaiStruct {
    public static ImportsCastToImported fromFile(String fileName) throws IOException {
        return new ImportsCastToImported(new ByteBufferKaitaiStream(fileName));
    }

    public ImportsCastToImported(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ImportsCastToImported(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ImportsCastToImported(KaitaiStream _io, KaitaiStruct _parent, ImportsCastToImported _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.hw = new HelloWorld(this._io);
        this.two = new CastToImported(this._io, hw());
    }

    public void _fetchInstances() {
        this.hw._fetchInstances();
        this.two._fetchInstances();
    }
    private HelloWorld hw;
    private CastToImported two;
    private ImportsCastToImported _root;
    private KaitaiStruct _parent;
    public HelloWorld hw() { return hw; }
    public CastToImported two() { return two; }
    public ImportsCastToImported _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
