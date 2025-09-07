// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Objects;
import io.kaitai.struct.ConsistencyError;

public class ImportsCastToImported extends KaitaiStruct.ReadWrite {
    public static ImportsCastToImported fromFile(String fileName) throws IOException {
        return new ImportsCastToImported(new ByteBufferKaitaiStream(fileName));
    }
    public ImportsCastToImported() {
        this(null, null, null);
    }

    public ImportsCastToImported(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ImportsCastToImported(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ImportsCastToImported(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ImportsCastToImported _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.hw = new HelloWorld(this._io);
        this.hw._read();
        this.two = new CastToImported(this._io, hw());
        this.two._read();
        _dirty = false;
    }

    public void _fetchInstances() {
        this.hw._fetchInstances();
        this.two._fetchInstances();
    }

    public void _write_Seq() {
        _assertNotDirty();
        this.hw._write_Seq(this._io);
        this.two._write_Seq(this._io);
    }

    public void _check() {
        if (!Objects.equals(this.two.hwParam(), hw()))
            throw new ConsistencyError("two", hw(), this.two.hwParam());
        _dirty = false;
    }
    private HelloWorld hw;
    private CastToImported two;
    private ImportsCastToImported _root;
    private KaitaiStruct.ReadWrite _parent;
    public HelloWorld hw() { return hw; }
    public void setHw(HelloWorld _v) { _dirty = true; hw = _v; }
    public CastToImported two() { return two; }
    public void setTwo(CastToImported _v) { _dirty = true; two = _v; }
    public ImportsCastToImported _root() { return _root; }
    public void set_root(ImportsCastToImported _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
