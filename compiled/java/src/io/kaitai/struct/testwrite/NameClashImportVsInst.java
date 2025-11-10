// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class NameClashImportVsInst extends KaitaiStruct.ReadWrite {
    public static NameClashImportVsInst fromFile(String fileName) throws IOException {
        return new NameClashImportVsInst(new ByteBufferKaitaiStream(fileName));
    }
    public NameClashImportVsInst() {
        this(null, null, null);
    }

    public NameClashImportVsInst(KaitaiStream _io) {
        this(_io, null, null);
    }

    public NameClashImportVsInst(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public NameClashImportVsInst(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, NameClashImportVsInst _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        _dirty = false;
    }

    public void _fetchInstances() {
        integers();
        if (this.integers != null) {
            this.integers._fetchInstances();
        }
    }

    public void _write_Seq() {
        _assertNotDirty();
        _shouldWriteIntegers = _enabledIntegers;
    }

    public void _check() {
        if (_enabledIntegers) {
        }
        _dirty = false;
    }
    public Integers integers() {
        if (_shouldWriteIntegers)
            _writeIntegers();
        if (this.integers != null)
            return this.integers;
        if (!_enabledIntegers)
            return null;
        long _pos = this._io.pos();
        this._io.seek(0);
        this.integers = new Integers(this._io);
        this.integers._read();
        this._io.seek(_pos);
        return this.integers;
    }
    public void setIntegers(Integers _v) { _dirty = true; integers = _v; }
    public void setIntegers_Enabled(boolean _v) { _dirty = true; _enabledIntegers = _v; }

    private void _writeIntegers() {
        _shouldWriteIntegers = false;
        long _pos = this._io.pos();
        this._io.seek(0);
        this.integers._write_Seq(this._io);
        this._io.seek(_pos);
    }
    public Integer std() {
        if (this.std != null)
            return this.std;
        this.std = ((Number) (1 + 2)).intValue();
        return this.std;
    }
    public void _invalidateStd() { this.std = null; }
    public NameClashImportVsInst _root() { return _root; }
    public void set_root(NameClashImportVsInst _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    private Integers integers;
    private boolean _shouldWriteIntegers = false;
    private boolean _enabledIntegers = true;
    private Integer std;
    private NameClashImportVsInst _root;
    private KaitaiStruct.ReadWrite _parent;
}
