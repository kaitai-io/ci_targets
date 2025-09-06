// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class NonStandard extends KaitaiStruct.ReadWrite {
    public static NonStandard fromFile(String fileName) throws IOException {
        return new NonStandard(new ByteBufferKaitaiStream(fileName));
    }
    public NonStandard() {
        this(null, null, null);
    }

    public NonStandard(KaitaiStream _io) {
        this(_io, null, null);
    }

    public NonStandard(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public NonStandard(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, NonStandard _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.foo = this._io.readU1();
        switch (foo()) {
        case 42: {
            this.bar = ((Number) (this._io.readU2le())).longValue();
            break;
        }
        case 43: {
            this.bar = this._io.readU4le();
            break;
        }
        }
        _dirty = false;
    }

    public void _fetchInstances() {
        switch (foo()) {
        case 42: {
            break;
        }
        case 43: {
            break;
        }
        }
        pi();
        if (this.pi != null) {
        }
    }

    public void _write_Seq() {
        _assertNotDirty();
        _shouldWritePi = _enabledPi;
        this._io.writeU1(this.foo);
        switch (foo()) {
        case 42: {
            this._io.writeU2le(((Number) (this.bar)).intValue());
            break;
        }
        case 43: {
            this._io.writeU4le(this.bar);
            break;
        }
        }
    }

    public void _check() {
        switch (foo()) {
        case 42: {
            break;
        }
        case 43: {
            break;
        }
        }
        if (_enabledPi) {
        }
        _dirty = false;
    }
    private Integer pi;
    private boolean _shouldWritePi = false;
    private boolean _enabledPi = true;
    public Integer pi() {
        if (_shouldWritePi)
            _writePi();
        if (this.pi != null)
            return this.pi;
        if (!_enabledPi)
            return null;
        long _pos = this._io.pos();
        this._io.seek(0);
        this.pi = this._io.readU1();
        this._io.seek(_pos);
        return this.pi;
    }
    public void setPi(int _v) { _dirty = true; pi = _v; }
    public void setPi_Enabled(boolean _v) { _dirty = true; _enabledPi = _v; }

    private void _writePi() {
        _shouldWritePi = false;
        long _pos = this._io.pos();
        this._io.seek(0);
        this._io.writeU1(this.pi);
        this._io.seek(_pos);
    }
    private Integer vi;
    public Integer vi() {
        if (this.vi != null)
            return this.vi;
        this.vi = ((Number) (foo())).intValue();
        return this.vi;
    }
    public void _invalidateVi() { this.vi = null; }
    private int foo;
    private Long bar;
    private NonStandard _root;
    private KaitaiStruct.ReadWrite _parent;
    public int foo() { return foo; }
    public void setFoo(int _v) { _dirty = true; foo = _v; }
    public Long bar() { return bar; }
    public void setBar(Long _v) { _dirty = true; bar = _v; }
    public NonStandard _root() { return _root; }
    public void set_root(NonStandard _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
