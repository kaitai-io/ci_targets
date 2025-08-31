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
    }

    public void _fetchInstances() {
        if (false) {
            neverHappens();
        }
    }

    public void _write_Seq() {
        _writeNeverHappens = _toWriteNeverHappens;
    }

    public void _check() {
    }
    private Integer neverHappens;
    private boolean _writeNeverHappens = false;
    private boolean _toWriteNeverHappens = true;
    public Integer neverHappens() {
        if (_writeNeverHappens)
            _writeNeverHappens();
        if (this.neverHappens != null)
            return this.neverHappens;
        if (false) {
            long _pos = this._io.pos();
            this._io.seek(100500);
            this.neverHappens = this._io.readU1();
            this._io.seek(_pos);
        }
        return this.neverHappens;
    }
    public void setNeverHappens(Integer _v) { neverHappens = _v; }
    public void setNeverHappens_ToWrite(boolean _v) { _toWriteNeverHappens = _v; }

    public void _writeNeverHappens() {
        _writeNeverHappens = false;
        if (false) {
            long _pos = this._io.pos();
            this._io.seek(100500);
            this._io.writeU1(this.neverHappens);
            this._io.seek(_pos);
        }
    }

    public void _checkNeverHappens() {
        if (false) {
        }
    }
    private IfInstances _root;
    private KaitaiStruct.ReadWrite _parent;
    public IfInstances _root() { return _root; }
    public void set_root(IfInstances _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
