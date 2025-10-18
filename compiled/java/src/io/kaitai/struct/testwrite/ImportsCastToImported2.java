// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Objects;
import io.kaitai.struct.ConsistencyError;

public class ImportsCastToImported2 extends KaitaiStruct.ReadWrite {
    public static ImportsCastToImported2 fromFile(String fileName) throws IOException {
        return new ImportsCastToImported2(new ByteBufferKaitaiStream(fileName));
    }
    public ImportsCastToImported2() {
        this(null, null, null);
    }

    public ImportsCastToImported2(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ImportsCastToImported2(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ImportsCastToImported2(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ImportsCastToImported2 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.hw = new HelloWorld(this._io);
        this.hw._read();
        this.two = new CastToImported2(this._io, hw());
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
    public HelloWorld hw() { return hw; }
    public void setHw(HelloWorld _v) { _dirty = true; hw = _v; }
    public CastToImported2 two() { return two; }
    public void setTwo(CastToImported2 _v) { _dirty = true; two = _v; }
    public ImportsCastToImported2 _root() { return _root; }
    public void set_root(ImportsCastToImported2 _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    private HelloWorld hw;
    private CastToImported2 two;
    private ImportsCastToImported2 _root;
    private KaitaiStruct.ReadWrite _parent;
}
