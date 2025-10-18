// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class IfInstances extends KaitaiStruct.ReadWrite {
    public static IfInstances fromFile(String fileName) throws IOException {
        return new IfInstances(new ByteBufferKaitaiStream(fileName));
    }
    public IfInstances() {
        this(null, null, null);
    }

    public IfInstances(KaitaiStream _io) {
        this(_io, null, null);
    }

    public IfInstances(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public IfInstances(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, IfInstances _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        _dirty = false;
    }

    public void _fetchInstances() {
        neverHappens();
        if (this.neverHappens != null) {
        }
    }

    public void _write_Seq() {
        _assertNotDirty();
        _shouldWriteNeverHappens = _enabledNeverHappens;
    }

    public void _check() {
        if (_enabledNeverHappens) {
            if (false) {
            }
        }
        _dirty = false;
    }
    public Integer neverHappens() {
        if (_shouldWriteNeverHappens)
            _writeNeverHappens();
        if (this.neverHappens != null)
            return this.neverHappens;
        if (!_enabledNeverHappens)
            return null;
        if (false) {
            long _pos = this._io.pos();
            this._io.seek(100500);
            this.neverHappens = this._io.readU1();
            this._io.seek(_pos);
        }
        return this.neverHappens;
    }
    public void setNeverHappens(Integer _v) { _dirty = true; neverHappens = _v; }
    public void setNeverHappens_Enabled(boolean _v) { _dirty = true; _enabledNeverHappens = _v; }

    private void _writeNeverHappens() {
        _shouldWriteNeverHappens = false;
        if (false) {
            long _pos = this._io.pos();
            this._io.seek(100500);
            this._io.writeU1(this.neverHappens);
            this._io.seek(_pos);
        }
    }
    public IfInstances _root() { return _root; }
    public void set_root(IfInstances _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    private Integer neverHappens;
    private boolean _shouldWriteNeverHappens = false;
    private boolean _enabledNeverHappens = true;
    private IfInstances _root;
    private KaitaiStruct.ReadWrite _parent;
}
